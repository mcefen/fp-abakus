package no.nav.foreldrepenger.abakus.kodeverk;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonFormat(shape = Shape.OBJECT)
@JsonAutoDetect(getterVisibility = Visibility.NONE, setterVisibility = Visibility.NONE, fieldVisibility = Visibility.ANY)
public enum YtelseType implements Kodeverdi {

    /** Folketrygdloven K4 ytelser. */
    DAGPENGER("DAG", "Dagpenger"),

    /** Folketrygdloven K8 ytelser. */
    SYKEPENGER("SP", "Sykepenger"),

    /** Folketrygdloven K9 ytelser. */
    PLEIEPENGER_SYKT_BARN("PSB", "Pleiepenger sykt barn"),
    PLEIEPENGER_NÆRSTÅENDE("PPN", "Pleiepenger nærstående"),
    OMSORGSPENGER("OMP", "Omsorgspenger"),
    OPPLÆRINGSPENGER("OLP", "Opplæringspenger"),

    /** @deprecated Legacy infotrygd K9 ytelse type (må tolkes sammen med TemaUnderkategori). */
    PÅRØRENDESYKDOM("PS", "Pårørende sykdom"),
    
    /** Folketrygdloven K11 ytelser. */
    ARBEIDSAVKLARINGSPENGER("AAP"),

    /** Folketrygdloven K14 ytelser. */
    ENGANGSTØNAD("ES", "Engangsstønad"),
    FORELDREPENGER("FP", "Foreldrepenger"),
    SVANGERSKAPSPENGER("SVP", "Svangerskapspenger"),

    /** Folketrygdloven K15 ytelser. */
    ENSLIG_FORSØRGER("EF", "Enslig forsørger"),

    UDEFINERT("-", "Ikke definert"),
    ;

    public static final String KODEVERK = "FAGSAK_YTELSE_TYPE"; //$NON-NLS-1$

    private static final Map<String, YtelseType> KODER = new LinkedHashMap<>();

    static {
        for (var v : values()) {
            if (KODER.putIfAbsent(v.kode, v) != null) {
                throw new IllegalArgumentException("Duplikat : " + v.kode);
            }
        }
    }

    @JsonIgnore
    private String navn;

    private String kode;

    private YtelseType(String kode) {
        this.kode = kode;
    }

    private YtelseType(String kode, String navn) {
        this.kode = kode;
        this.navn = navn;
    }

    @JsonCreator
    public static YtelseType fraKode(@JsonProperty("kode") String kode) {
        if (kode == null) {
            return null;
        }
        var ad = KODER.get(kode);
        if (ad == null) {
            throw new IllegalArgumentException("Ukjent YtelseType: " + kode);
        }
        return ad;
    }

    public static Map<String, YtelseType> kodeMap() {
        return Collections.unmodifiableMap(KODER);
    }

    @JsonProperty
    @Override
    public String getKode() {
        return kode;
    }

    @JsonProperty
    @Override
    public String getKodeverk() {
        return KODEVERK;
    }

    @Override
    public String getNavn() {
        return navn;
    }

    @Override
    public String getOffisiellKode() {
        return getKode();
    }

    @Converter(autoApply = true)
    public static class KodeverdiConverter implements AttributeConverter<YtelseType, String> {
        @Override
        public String convertToDatabaseColumn(YtelseType attribute) {
            return attribute == null ? null : attribute.getKode();
        }

        @Override
        public YtelseType convertToEntityAttribute(String dbData) {
            return dbData == null ? null : fraKode(dbData);
        }
    }

}
