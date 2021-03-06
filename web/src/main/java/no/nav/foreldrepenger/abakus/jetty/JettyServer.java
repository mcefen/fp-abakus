package no.nav.foreldrepenger.abakus.jetty;

import static no.nav.vedtak.util.env.Cluster.LOCAL;
import static no.nav.vedtak.util.env.Cluster.NAIS_CLUSTER_NAME;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.sql.DataSource;

import org.eclipse.jetty.plus.jndi.EnvEntry;
import org.eclipse.jetty.util.resource.Resource;
import org.eclipse.jetty.util.resource.ResourceCollection;
import org.eclipse.jetty.webapp.MetaData;
import org.eclipse.jetty.webapp.WebAppContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import no.nav.foreldrepenger.abakus.app.konfig.ApplicationConfig;
import no.nav.foreldrepenger.abakus.jetty.db.DatabaseScript;
import no.nav.foreldrepenger.abakus.jetty.db.DatasourceRole;
import no.nav.foreldrepenger.abakus.jetty.db.DatasourceUtil;
import no.nav.vedtak.isso.IssoApplication;
import no.nav.vedtak.util.env.Environment;

public class JettyServer extends AbstractJettyServer {

    private static final Environment ENV = Environment.current();

    private static final Logger log = LoggerFactory.getLogger(JettyServer.class);

    public JettyServer() {
        this(new JettyWebKonfigurasjon());
    }

    public JettyServer(int serverPort) {
        this(new JettyWebKonfigurasjon(serverPort));
    }

    JettyServer(AppKonfigurasjon appKonfigurasjon) {
        super(appKonfigurasjon);
    }

    public static void main(String[] args) throws Exception {
        System.setProperty(NAIS_CLUSTER_NAME, ENV.clusterName());
        jettyServer(args).bootStrap();
    }

    private static AbstractJettyServer jettyServer(String[] args) {
        if (args.length > 0) {
            return new JettyServer(Integer.parseUnsignedInt(args[0]));
        }
        return new JettyServer();
    }

    @Override
    protected void konfigurerMiljø() throws Exception {}

    @Override
    protected void konfigurerJndi() throws Exception {
        new EnvEntry("jdbc/defaultDS",
                DatasourceUtil.createDatasource("defaultDS", DatasourceRole.USER, ENV.getCluster(), 4));
    }

    @Override
    protected void migrerDatabaser() {
        String initSql = String.format("SET ROLE \"%s\"", DatasourceUtil.getDbRole("defaultDS", DatasourceRole.ADMIN));
        if (LOCAL.equals(ENV.getCluster())) {
            // TODO: Ønsker egentlig ikke dette, men har ikke satt opp skjema lokalt
            // til å ha en admin bruker som gjør migrering og en annen som gjør CRUD
            // operasjoner
            initSql = null;
        }
        DataSource migreringDs = DatasourceUtil.createDatasource("defaultDS", DatasourceRole.ADMIN, ENV.getCluster(),
                1);
        try {
            DatabaseScript.migrate(migreringDs, initSql);
            migreringDs.getConnection().close();
        } catch (SQLException e) {
            log.warn("Klarte ikke stenge connection etter migrering", e);
        }
    }

    @Override
    protected WebAppContext createContext(AppKonfigurasjon appKonfigurasjon) throws IOException {
        WebAppContext webAppContext = super.createContext(appKonfigurasjon);
        webAppContext.setParentLoaderPriority(true);
        updateMetaData(webAppContext.getMetaData());
        return webAppContext;
    }

    private void updateMetaData(MetaData metaData) {
        // Find path to class-files while starting jetty from development environment.
        List<Class<?>> appClasses = getApplicationClasses();

        List<Resource> resources = appClasses.stream()
                .map(c -> Resource.newResource(c.getProtectionDomain().getCodeSource().getLocation()))
                .collect(Collectors.toList());

        metaData.setWebInfClassesDirs(resources);
    }

    protected List<Class<?>> getApplicationClasses() {
        return Arrays.asList(ApplicationConfig.class, IssoApplication.class);
    }

    @SuppressWarnings("resource")
    @Override
    protected ResourceCollection createResourceCollection() throws IOException {
        return new ResourceCollection(
                Resource.newClassPathResource("/web"));
    }
}
