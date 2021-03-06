package no.nav.foreldrepenger.abakus.app.exceptions;

import java.util.List;

import javax.validation.ConstraintViolationException;

import no.nav.vedtak.feil.Feil;
import no.nav.vedtak.feil.FeilFactory;
import no.nav.vedtak.feil.LogLevel;
import no.nav.vedtak.feil.deklarasjon.DeklarerteFeil;
import no.nav.vedtak.feil.deklarasjon.FunksjonellFeil;
import no.nav.vedtak.feil.deklarasjon.TekniskFeil;

interface FeltValideringFeil extends DeklarerteFeil {

    FeltValideringFeil FACTORY = FeilFactory.create(FeltValideringFeil.class);

    @FunksjonellFeil(feilkode = "FP-328673",
            feilmelding = "Det oppstod en valideringsfeil på felt %s. Vennligst kontroller at alle feltverdier er korrekte.",
            løsningsforslag = "Kontroller at alle feltverdier er korrekte", logLevel = LogLevel.WARN)
    Feil feltverdiKanIkkeValideres(List<String> feltnavn);

    @TekniskFeil(feilkode = "FP-232342",
            feilmelding = "Det oppsto en teknisk feil under validering av contraints.", logLevel = LogLevel.WARN)
    Feil feilUnderValideringAvContraints(ConstraintViolationException feltnavn);


    @TekniskFeil(feilkode = "FP-322345",
            feilmelding = "Det oppstod en serverfeil: Validering er feilkonfigurert.", logLevel = LogLevel.ERROR)
    Feil feilIOppsettAvFeltvalidering();
}
