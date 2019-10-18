package no.nav.foreldrepenger.abakus.iay;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import no.nav.foreldrepenger.abakus.domene.iay.GrunnlagReferanse;
import no.nav.foreldrepenger.abakus.domene.iay.InntektArbeidYtelseAggregatBuilder;
import no.nav.foreldrepenger.abakus.domene.iay.InntektArbeidYtelseAggregatEntitet;
import no.nav.foreldrepenger.abakus.domene.iay.InntektArbeidYtelseGrunnlag;
import no.nav.foreldrepenger.abakus.domene.iay.InntektArbeidYtelseGrunnlagBuilder;
import no.nav.foreldrepenger.abakus.domene.iay.arbeidsforhold.ArbeidsforholdInformasjon;
import no.nav.foreldrepenger.abakus.domene.iay.søknad.OppgittOpptjeningEntitet;
import no.nav.foreldrepenger.abakus.kobling.KoblingReferanse;
import no.nav.foreldrepenger.abakus.kodeverk.YtelseType;
import no.nav.foreldrepenger.abakus.typer.AktørId;
import no.nav.foreldrepenger.abakus.typer.Saksnummer;

public interface InntektArbeidYtelseTjeneste {
    /**
     * @param koblingen
     * @return henter aggregat, kaster feil hvis det ikke finnes.
     */
    InntektArbeidYtelseGrunnlag hentAggregat(KoblingReferanse koblingReferanse);

    /**
     * @param referanse - unik referanse for aggregat
     * @return henter aggregat, kaster feil hvis det ikke finnes.
     */
    InntektArbeidYtelseGrunnlag hentAggregat(GrunnlagReferanse referanse);

    /**
     * @param referanse (ekstern referanse for kobling (eks. behandlingUuid)).
     * @return henter koblingen grunnlagsreferansen er koblet til.
     */
    Long hentKoblingIdFor(GrunnlagReferanse grunnlagReferanse);

    /**
     * @param koblingReferanse
     * @return henter optional aggregat
     */
    Optional<InntektArbeidYtelseGrunnlag> hentGrunnlagFor(KoblingReferanse koblingReferanse);

    /**
     * Hent alle grunnlag for angitt saksnummer
     *
     * @param saksnummer
     * @param boolean    kunAktive - hvis true henter kun aktive grunnlag (ikke historiske versjoner)
     * @return henter optional aggregat
     */
    List<InntektArbeidYtelseGrunnlag> hentAlleGrunnlagFor(AktørId aktørId, Saksnummer saksnummer, YtelseType ytelseType, boolean kunAktive);

    /**
     * Hent alle grunnlag for angitt koblingsreferanse (behandling)
     *
     * @param koblingReferanse
     * @param boolean          kunAktive - hvis true henter kun aktive grunnlag (ikke historiske versjoner)
     * @return henter optional aggregat
     */
    List<InntektArbeidYtelseGrunnlag> hentAlleGrunnlagFor(AktørId aktørId, KoblingReferanse koblingReferanse, boolean kunAktive);

    /**
     * @param grunnlagReferanse
     * @return henter optional aggregat
     */
    Optional<InntektArbeidYtelseGrunnlag> hentGrunnlagFor(GrunnlagReferanse grunnlagReferanse);

    /**
     * Oopprett builder for register data.
     *
     * @param koblingReferanse
     * @return Register inntekt og arbeid før skjæringstidspunktet (Opprett for å endre eller legge til registeropplysning)
     */
    InntektArbeidYtelseAggregatBuilder opprettBuilderForRegister(KoblingReferanse koblingReferanse, UUID angittReferanse,
                                                                 LocalDateTime angittOpprettetTidspunkt);

    /**
     * Opprett builder for saksbehandlers overstyringer.
     *
     * @param koblingReferanse
     * @return Saksbehandlers overstyringer av IAY (primært {@link no.nav.foreldrepenger.abakus.domene.iay.AktørArbeid}).
     */
    InntektArbeidYtelseAggregatBuilder opprettBuilderForSaksbehandlet(KoblingReferanse koblingReferanse, UUID angittReferanse,
                                                                      LocalDateTime angittOpprettetTidspunkt);

    /**
     * @param koblingId
     * @param inntektArbeidYtelseAggregatBuilder lagrer ned aggregat (builder bestemmer hvilke del av treet som blir lagret)
     */
    void lagre(KoblingReferanse koblingReferanse, InntektArbeidYtelseAggregatBuilder inntektArbeidYtelseAggregatBuilder);

    void lagre(KoblingReferanse koblingReferanse, InntektArbeidYtelseGrunnlagBuilder builder);

    KoblingReferanse hentKoblingReferanse(GrunnlagReferanse grunnlagReferanse);

    ArbeidsforholdInformasjon hentArbeidsforholdInformasjonForKobling(KoblingReferanse koblingReferanse);

    Optional<OppgittOpptjeningEntitet> hentOppgittOpptjeningFor(UUID oppgittOpptjeningEksternReferanse);

    Optional<InntektArbeidYtelseAggregatEntitet> hentIAYAggregatFor(UUID eksternReferanse);

    /**
     * For migrering
     *
     * @param aktørId
     * @param saksnummer
     * @param ytelseType
     * @deprecated For migrering
     */
    @Deprecated(forRemoval = true)
    void slettAltForSak(AktørId aktørId, Saksnummer saksnummer, YtelseType ytelseType);

    void kopierGrunnlagFraKoblingTilKobling(KoblingReferanse fraKobling, KoblingReferanse tilKobling);
}
