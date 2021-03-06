package no.nav.foreldrepenger.abakus.domene.virksomhet;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.persistence.Version;

import no.nav.abakus.iaygrunnlag.kodeverk.IndexKey;
import no.nav.abakus.iaygrunnlag.kodeverk.OrganisasjonType;
import no.nav.foreldrepenger.abakus.felles.diff.ChangeTracked;
import no.nav.foreldrepenger.abakus.felles.diff.IndexKeyComposer;
import no.nav.foreldrepenger.abakus.felles.jpa.BaseEntitet;
import no.nav.foreldrepenger.abakus.iay.jpa.OrganisasjonstypeKodeverdiConverter;

@Entity(name = "Virksomhet")
@Table(name = "VIRKSOMHET", uniqueConstraints = @UniqueConstraint(columnNames = {"orgnr"}))
public class Virksomhet extends BaseEntitet implements IndexKey {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_VIRKSOMHET")
    private Long id;

    @Column(name = "orgnr", unique = true, nullable = false, updatable = false)
    @ChangeTracked
    private String orgnr;

    @Column(name = "navn")
    @ChangeTracked
    private String navn;

    @Column(name = "registrert")
    @ChangeTracked
    private LocalDate registrert;

    @Column(name = "avsluttet")
    @ChangeTracked
    private LocalDate avsluttet;

    @Column(name = "oppstart")
    @ChangeTracked
    private LocalDate oppstart;

    @Column(name = "opplysninger_oppdatert_tid", nullable = false)
    @ChangeTracked
    private LocalDateTime opplysningerOppdatertTidspunkt;

    @ChangeTracked
    @Convert(converter = OrganisasjonstypeKodeverdiConverter.class)
    @Column(name = "organisasjonstype", nullable = false, updatable = false)
    private OrganisasjonType organisasjonType = OrganisasjonType.UDEFINERT;

    @Version
    @Column(name = "versjon", nullable = false)
    private long versjon;

    public Virksomhet() {
    }

    @Override
    public String getIndexKey() {
        Object[] keyParts = { orgnr };
        return IndexKeyComposer.createKey(keyParts);
    }

    public String getOrgnr() {
        return orgnr;
    }

    public String getNavn() {
        return navn;
    }

    public LocalDate getRegistrert() {
        return registrert;
    }

    public LocalDate getOppstart() {
        return oppstart;
    }

    public LocalDate getAvslutt() {
        return avsluttet;
    }

    public boolean skalRehentes() {
        return opplysningerOppdatertTidspunkt.isBefore(LocalDateTime.now().minusDays(1));
    }

    public OrganisasjonType getOrganisasjonstype() {
        return organisasjonType;
    }

    /**
     * @return oppdatert tidspunkt
     */
    public LocalDateTime getOpplysningerOppdatertTidspunkt() {
        return opplysningerOppdatertTidspunkt;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        } else if (!(obj instanceof Virksomhet)) {
            return false;
        }
        Virksomhet other = (Virksomhet) obj;
        return Objects.equals(this.getOrgnr(), other.getOrgnr());
    }

    @Override
    public int hashCode() {
        return Objects.hash(orgnr);
    }

    @Override
    public String toString() {
        return "Virksomhet{" +
            "navn=" + navn +
            ", orgnr=" + orgnr +
            '}';
    }

    public static class Builder {
        private Virksomhet mal;

        /**
         * For oppretting av
         */
        public Builder() {
            this.mal = new Virksomhet();
        }

        /**
         * For oppdatering av data fra Enhetsregisteret
         * <p>
         * Tillater mutering av entitet da vi ville mistet alle eksisterende koblinger ved oppdatering
         *
         * @param virksomhet virksomheten som skal oppdaters
         */
        public Builder(Virksomhet virksomhet) {
            this.mal = virksomhet; // NOSONAR
        }

        public Builder medOrgnr(String orgnr) {
            if (this.mal.id != null) {
                throw new IllegalStateException("Skal ikke manipulere orgnr på allerede persistert objekt.");
            }
            this.mal.orgnr = orgnr;
            return this;
        }

        public Builder medNavn(String navn) {
            this.mal.navn = navn;
            return this;
        }

        public Builder medOppstart(LocalDate oppstart) {
            this.mal.oppstart = oppstart;
            return this;
        }

        public Builder medAvsluttet(LocalDate avsluttet) {
            this.mal.avsluttet = avsluttet;
            return this;
        }

        public Builder medRegistrert(LocalDate registrert) {
            this.mal.registrert = registrert;
            return this;
        }

        public Builder oppdatertOpplysningerNå() {
            this.mal.opplysningerOppdatertTidspunkt = LocalDateTime.now();
            return this;
        }

        public Builder medOrganisasjonstype(OrganisasjonType organisasjonsType) {
            this.mal.organisasjonType = organisasjonsType;
            return this;
        }

        public Virksomhet build() {
            return mal;
        }
    }
}
