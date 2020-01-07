package no.nav.foreldrepenger.abakus.registerdata.ytelse.infotrygd.kodemaps;

import java.util.Map;

import org.slf4j.Logger;

import no.nav.foreldrepenger.abakus.kodeverk.RelatertYtelseStatus;
import no.nav.foreldrepenger.abakus.kodeverk.YtelseStatus;

public class RelatertYtelseStatusReverse {


    private static final Map<String, YtelseStatus> YTELSE_STATUS_MAP = Map.ofEntries(
        Map.entry(RelatertYtelseStatus.AVSLUTTET_IT.getKode(), YtelseStatus.AVSLUTTET),
        Map.entry(RelatertYtelseStatus.LØPENDE_VEDTAK.getKode(), YtelseStatus.LØPENDE),
        Map.entry(RelatertYtelseStatus.IKKE_STARTET.getKode(), YtelseStatus.UNDER_BEHANDLING),
        Map.entry(RelatertYtelseStatus.AVSLU.getKode(), YtelseStatus.AVSLUTTET),
        Map.entry("INAKT", YtelseStatus.AVSLUTTET),
        Map.entry(RelatertYtelseStatus.IVERK.getKode(), YtelseStatus.LØPENDE)
    );


    public static YtelseStatus reverseMap(String kode, Logger logger) {
        if (YTELSE_STATUS_MAP.get(kode) == null) {
            logger.warn("Infotrygd ga ukjent kode for relatert ytelse status {}", kode);
        }
        return YTELSE_STATUS_MAP.getOrDefault(kode, YtelseStatus.UNDER_BEHANDLING);
    }
}