ALTER TABLE iay_arbeidsforhold alter column bekreftet_permisjon_status type varchar(100);
ALTER TABLE IAY_ARBEIDSFORHOLD
    ADD KL_BEKREFTET_PERMISJON_STATUS varchar(100) DEFAULT ('BEKREFTET_PERMISJON_STATUS');

CREATE INDEX IDX_IAY_ARBEIDSFORHOLD_4 ON IAY_ARBEIDSFORHOLD (BEKREFTET_PERMISJON_STATUS);

-- PERMISJONSTATUS KODEVERK
INSERT INTO KODEVERK (kode, navn, beskrivelse, kodeverk_eier)
VALUES ('BEKREFTET_PERMISJON_STATUS', 'Bekreftet permisjon status',
        'Bekreftet permisjon status for arbeidsforhold fra aksjonspunkt 5080', 'VL');

-- PERMISJONSTATUS: BRUK_PERMISJON
INSERT INTO KODELISTE (id, kode, beskrivelse, gyldig_fom, kodeverk)
VALUES (nextval('seq_kodeliste'), 'BRUK_PERMISJON', 'Bruk permisjonen til arbeidsforholdet',
        to_date('2000-01-01', 'YYYY-MM-DD'), 'BEKREFTET_PERMISJON_STATUS');

INSERT INTO KODELISTE_NAVN_I18N (ID, KL_KODEVERK, KL_KODE, SPRAK, NAVN)
VALUES (nextval('SEQ_KODELISTE_NAVN'), 'BEKREFTET_PERMISJON_STATUS', 'BRUK_PERMISJON', 'NB',
        'Bruk permisjonen til arbeidsforholdet');

-- PERMISJONSTATUS: IKKE_BRUK_PERMISJON
INSERT INTO KODELISTE (id, kode, beskrivelse, gyldig_fom, kodeverk)
VALUES (nextval('seq_kodeliste'), 'IKKE_BRUK_PERMISJON', 'Ikke bruk permisjonen til arbeidsforholdet',
        to_date('2000-01-01', 'YYYY-MM-DD'), 'BEKREFTET_PERMISJON_STATUS');

INSERT INTO KODELISTE_NAVN_I18N (ID, KL_KODEVERK, KL_KODE, SPRAK, NAVN)
VALUES (nextval('SEQ_KODELISTE_NAVN'), 'BEKREFTET_PERMISJON_STATUS', 'IKKE_BRUK_PERMISJON', 'NB',
        'Ikke bruk permisjonen til arbeidsforholdet');

-- PERMISJONSTATUS: UGYLDIGE_PERIODER
INSERT INTO KODELISTE (id, kode, beskrivelse, gyldig_fom, kodeverk)
VALUES (nextval('seq_kodeliste'), 'UGYLDIGE_PERIODER', 'Arbeidsforholdet inneholder permisjoner med ugyldige perioder',
        to_date('2000-01-01', 'YYYY-MM-DD'), 'BEKREFTET_PERMISJON_STATUS');

INSERT INTO KODELISTE_NAVN_I18N (ID, KL_KODEVERK, KL_KODE, SPRAK, NAVN)
VALUES (nextval('SEQ_KODELISTE_NAVN'), 'BEKREFTET_PERMISJON_STATUS', 'UGYLDIGE_PERIODER', 'NB',
        'Arbeidsforholdet inneholder permisjoner med ugyldige perioder');

-- PERMISJONSTATUS: UDEFINERT
INSERT INTO KODELISTE (id, kode, beskrivelse, gyldig_fom, kodeverk)
VALUES (nextval('seq_kodeliste'), '-', 'UDEFINERT', to_date('2000-01-01', 'YYYY-MM-DD'), 'BEKREFTET_PERMISJON_STATUS');

INSERT INTO KODELISTE_NAVN_I18N (ID, KL_KODEVERK, KL_KODE, SPRAK, NAVN)
VALUES (nextval('SEQ_KODELISTE_NAVN'), 'BEKREFTET_PERMISJON_STATUS', '-', 'NB', 'UDEFINERT');

ALTER TABLE IAY_ARBEIDSFORHOLD
    ADD CONSTRAINT FK_IAY_ARBEIDSFORHOLD_4 FOREIGN KEY (BEKREFTET_PERMISJON_STATUS, KL_BEKREFTET_PERMISJON_STATUS) REFERENCES KODELISTE (KODE, KODEVERK);
