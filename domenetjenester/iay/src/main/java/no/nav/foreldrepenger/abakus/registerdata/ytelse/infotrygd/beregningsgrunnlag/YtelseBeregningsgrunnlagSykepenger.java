package no.nav.foreldrepenger.abakus.registerdata.ytelse.infotrygd.beregningsgrunnlag;

import java.math.BigDecimal;

import no.nav.foreldrepenger.abakus.domene.iay.YtelseGrunnlagBuilder;
import no.nav.foreldrepenger.abakus.kodeverk.KodeverkRepository;
import no.nav.foreldrepenger.abakus.kodeverk.RelatertYtelseType;
import no.nav.tjeneste.virksomhet.infotrygdberegningsgrunnlag.v1.informasjon.Sykepenger;

public class YtelseBeregningsgrunnlagSykepenger extends YtelseBeregningsgrunnlagPeriodeYtelse {

    private BigDecimal inntektsgrunnlagProsent;

    YtelseBeregningsgrunnlagSykepenger(Sykepenger sykepenger, KodeverkRepository kodeverkRepository) {
        super(RelatertYtelseType.SYKEPENGER, sykepenger, kodeverkRepository);
        if (sykepenger.getInntektsgrunnlagProsent() != null) {
            inntektsgrunnlagProsent = new BigDecimal(sykepenger.getInntektsgrunnlagProsent());
        }
    }

    public BigDecimal getInntektsgrunnlagProsent() {
        return inntektsgrunnlagProsent;
    }


    @Override
    public void mapSpesialverdier(YtelseGrunnlagBuilder builder) {
        builder.medInntektsgrunnlagProsent(inntektsgrunnlagProsent);
    }
}
