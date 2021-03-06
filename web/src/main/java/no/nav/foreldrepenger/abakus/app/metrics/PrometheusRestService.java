package no.nav.foreldrepenger.abakus.app.metrics;


import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import io.prometheus.client.CollectorRegistry;
import io.swagger.v3.oas.annotations.Operation;

@Path("/metrics")
@ApplicationScoped
public class PrometheusRestService {

    @GET
    @Operation(tags = "metrics", hidden = true)
    @Path("/prometheus")
    public Response prometheus() {
        try (final Writer writer = new StringWriter()) {
            TextFormater.write004(writer, CollectorRegistry.defaultRegistry.metricFamilySamples());
            return Response.ok().encoding("UTF-8").entity(writer.toString()).header("content-type", TextFormater.CONTENT_TYPE_004).build();
        } catch (IOException e) {
            //TODO logg?
        }

        return null;
    }
}
