package no.nav.foreldrepenger.abakus.registerdata.arbeidsgiver.virksomhet;

import no.nav.vedtak.exception.IntegrasjonException;
import no.nav.vedtak.feil.Feil;

public class OrganisasjonUgyldigInputException extends IntegrasjonException {
    public OrganisasjonUgyldigInputException(Feil feil) {
        super(feil);
    }
}
