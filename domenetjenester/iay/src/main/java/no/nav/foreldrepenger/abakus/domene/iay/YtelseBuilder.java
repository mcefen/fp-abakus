package no.nav.foreldrepenger.abakus.domene.iay;

import java.util.Optional;

import no.nav.foreldrepenger.abakus.domene.iay.kodeverk.FagsystemUnderkategori;
import no.nav.foreldrepenger.abakus.kodeverk.RelatertYtelseTilstand;
import no.nav.foreldrepenger.abakus.kodeverk.RelatertYtelseType;
import no.nav.foreldrepenger.abakus.kodeverk.TemaUnderkategori;
import no.nav.foreldrepenger.abakus.typer.Fagsystem;
import no.nav.foreldrepenger.abakus.typer.Saksnummer;
import no.nav.vedtak.felles.jpa.tid.DatoIntervallEntitet;

public class YtelseBuilder {

    private final YtelseEntitet ytelseEntitet;
    private final boolean oppdaterer;

    private YtelseBuilder(YtelseEntitet ytelseEntitet, boolean oppdaterer) {
        this.ytelseEntitet = ytelseEntitet;
        this.oppdaterer = oppdaterer;
    }

    private static YtelseBuilder ny() {
        return new YtelseBuilder(new YtelseEntitet(), false);
    }

    private static YtelseBuilder oppdatere(Ytelse oppdatere) {
        return new YtelseBuilder((YtelseEntitet) oppdatere, true);
    }

    public static YtelseBuilder oppdatere(Optional<Ytelse> oppdatere) {
        return oppdatere.map(YtelseBuilder::oppdatere).orElseGet(YtelseBuilder::ny);
    }

    public YtelseBuilder medYtelseType(RelatertYtelseType relatertYtelseType) {
        ytelseEntitet.setRelatertYtelseType(relatertYtelseType);
        return this;
    }

    public YtelseBuilder medStatus(RelatertYtelseTilstand relatertYtelseTilstand) {
        ytelseEntitet.setStatus(relatertYtelseTilstand);
        return this;
    }

    public YtelseBuilder medPeriode(DatoIntervallEntitet intervallEntitet) {
        ytelseEntitet.setPeriode(intervallEntitet);
        return this;
    }

    public YtelseBuilder medSaksnummer(Saksnummer sakId) {
        ytelseEntitet.medSakId(sakId);
        return this;
    }

    public YtelseBuilder medKilde(Fagsystem kilde) {
        ytelseEntitet.setKilde(kilde);
        return this;
    }

    public YtelseBuilder medFagsystemUnderkategori(FagsystemUnderkategori underkategori) {
        ytelseEntitet.setFagsystemUnderkategori(underkategori);
        return this;
    }

    public YtelseBuilder medYtelseGrunnlag(YtelseGrunnlag ytelseGrunnlag) {
        ytelseEntitet.setYtelseGrunnlag(ytelseGrunnlag);
        return this;
    }

    public YtelseBuilder medYtelseAnvist(YtelseAnvist ytelseAnvist) {
        ytelseEntitet.leggTilYtelseAnvist(ytelseAnvist);
        return this;
    }

    public YtelseBuilder medBehandlingsTema(TemaUnderkategori behandlingsTema) {
        ytelseEntitet.setBehandlingsTema(behandlingsTema);
        return this;
    }

    public DatoIntervallEntitet getPeriode() {
        return ytelseEntitet.getPeriode();
    }

    boolean getErOppdatering() {
        return this.oppdaterer;
    }

    public Ytelse build() {
        return ytelseEntitet;
    }

    public YtelseAnvistBuilder getAnvistBuilder() {
        return YtelseAnvistBuilder.ny();
    }

    public void tilbakestillAnvisninger() {
        ytelseEntitet.tilbakestillAnvisteYtelser();
    }

    public YtelseGrunnlagBuilder getGrunnlagBuilder() {
        return YtelseGrunnlagBuilder.ny();
    }


}
