Insert into KODEVERK (KODE,KODEVERK_EIER,KODEVERK_EIER_REF,KODEVERK_EIER_VER,KODEVERK_EIER_NAVN,KODEVERK_SYNK_NYE,KODEVERK_SYNK_EKSISTERENDE,NAVN,BESKRIVELSE,SAMMENSATT) values ('FAGSYSTEM','GSak',null,null,'Fagsystemer','N','N','Fagsystemer','NAV Fagsystemer','N');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','ARENA','AO01','Arena','Arena','NB',to_date('13.02.2010','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','GRISEN','AO11','Grisen','Grisen','NB',to_date('27.01.2011','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','GOSYS','FS22','Gosys','Gosys','NB',to_date('25.04.2009','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','INFOTRYGD','IT01','Infotrygd','Infotrygd','NB',to_date('13.02.2010','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','HJE_HEL_ORT','OEBS','Hjelpemidler, Helsetjenester og Ort. Hjelpemidler','Hjelpemidler, Helsetjenester og Ort. Hjelpemidler','NB',to_date('13.02.2010','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','PESYS','PP01','Pesys','Pesys','NB',to_date('10.12.2011','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','VENTELONN','V2','Ventelønn','Ventelønn','NB',to_date('13.02.2010','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','UNNTAK','UFM','Unntak','Unntak','NB',to_date('01.01.2010','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','FPSAK','FS36','Vedtaksløsning Foreldrepenger','Vedtaksløsning Foreldrepenger','NB',to_date('28.06.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','JOARK','AS36','Joark',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,706000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','TPS','FS03','TPS',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,708000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','MEDL','FS18','MEDL',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,710000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','INNTEKT','FS28','INNTEKT',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,711000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','GSAK','FS19','GSAK',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,713000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','BISYS','BID','BID',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,714000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','SKANNING','MOT','MOT',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,715000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','ØKONOMI','OKO','OKO',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,717000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','BIDRAGINNKREVING','BII','BII',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,718000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'FAGSYSTEM','ØVRIG','OVR','ØVRIG',to_date('19.11.2017','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.49,719000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,NAVN,BESKRIVELSE,SPRAK,GYLDIG_FOM,GYLDIG_TOM) values (nextval('seq_kodeliste'),'FAGSYSTEM','-',null,'Ikke definert','Ikke definert','NB',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'));
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','JOARK','NB','Joark','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','TPS','NB','TPS','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','MEDL','NB','MEDL','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','INNTEKT','NB','INNTEKT','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','GSAK','NB','GSAK','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','BISYS','NB','BID','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','SKANNING','NB','MOT','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','ØKONOMI','NB','OKO','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','BIDRAGINNKREVING','NB','BII','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','ØVRIG','NB','ØVRIG','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','ARENA','NB','Arena','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','GRISEN','NB','Grisen','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','GOSYS','NB','Gosys','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','INFOTRYGD','NB','Infotrygd','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','HJE_HEL_ORT','NB','Hjelpemidler, Helsetjenester og Ort. Hjelpemidler','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','PESYS','NB','Pesys','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','VENTELONN','NB','Ventelønn','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','UNNTAK','NB','Unntak','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','FPSAK','NB','Vedtaksløsning Foreldrepenger','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'FAGSYSTEM','-','NB','Ikke definert','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);

Insert into KODEVERK (KODE,KODEVERK_EIER,KODEVERK_EIER_REF,KODEVERK_EIER_VER,KODEVERK_EIER_NAVN,NAVN,BESKRIVELSE,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,KODEVERK_SYNK_EKSISTERENDE,KODEVERK_SYNK_NYE,SAMMENSATT) values ('RELATERT_YTELSE_STATUS','Arena',null,null,null,'RelatertYtelseStatus','Kodeverk for status på relaterte ytelser.','VL',to_timestamp('09.11.2018 08.37.44,251000000','DD.MM.YYYY HH24.MI.SS'),null,null,'N','N','N');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','-',null,'Udefinert',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','IP','IP','Saksbehandlingen kan starte med Statuskode IP (Ikke påbegynt). Da er det kun registrert en sakslinje uten at vedtaksbehandling er startet.',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','UB','UB','Saksbehandling startet - når sak med status UB - Under Behandling - lagres, rapporteres hendelsen BehandlingOpprettet',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','SG','SG','Saksbehandler 1 har fullført og sendt til saksbehandler 2 for godkjenning',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','UK','UK','Underkjent av saksbehandler 2 med retur til saksbehandler 1',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','FB','FB',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','FI','FI',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','RF','RF',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','RM','RM',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','RT','RT',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','ST','ST',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','VD','VD',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','VI','VI',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','VT','VT',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,'{"infotrygdOppe":"true"}');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','HB','HB',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','AVSLU','Avsluttet',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','GODKJ','Godkjent',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','INNST','Innstilt',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','IVERK','Iverksatt',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','MOTAT','Mottatt',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','OPPRE','Opprettet',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','REGIS','Registrert',null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.44,255000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','L','L','Løpende',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.46,164000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','A','A','Avsluttet',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.46,166000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','I','I','Ikke startet',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.56,579000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_STATUS','xx','xx','Ingen verdi',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.38.10,285000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','IP','NB','Ikke påbegynt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','UB','NB','Under Behandling','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','SG','NB','Sendt til saksbehandler 2 for godkjenning','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','UK','NB','Underkjent av saksbehandler 2','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','FB','NB','FerdigBehandlet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','FI','NB','ferdig iverksatt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','RF','NB','returnert feilsendt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','RM','NB','returnert midlertidig','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','RT','NB','returnert til','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','ST','NB','sendt til','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','VD','NB','videresendt Direktoratet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','VI','NB','venter på iverksetting','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','VT','NB','videresendt Trygderetten','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','HB','NB','Henlagt/bortfalt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','AVSLU','NB','Avsluttet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','GODKJ','NB','Godkjent','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','INNST','NB','Innstilt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','IVERK','NB','Iverksatt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','MOTAT','NB','Mottatt','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','OPPRE','NB','Opprettet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','REGIS','NB','Registrert','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','L','NB','Løpende','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','A','NB','Avsluttet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','-','NB','Ikke definert','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','I','NB','Ikke startet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_STATUS','xx','NB','Ingen verdi','VL',to_timestamp('09.11.2018 08.38.12,403000000','DD.MM.YYYY HH24.MI.SS'),null,null);

Insert into KODEVERK (KODE,KODEVERK_EIER,KODEVERK_EIER_REF,KODEVERK_EIER_VER,KODEVERK_EIER_NAVN,NAVN,BESKRIVELSE,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,KODEVERK_SYNK_EKSISTERENDE,KODEVERK_SYNK_NYE,SAMMENSATT) values ('RELATERT_YTELSE_TILSTAND','VL',null,null,null,'RelatertYtelseTilstand','Kodeverk for tilstand på relaterte ytelser.','VL',to_timestamp('09.11.2018 08.37.36,380000000','DD.MM.YYYY HH24.MI.SS'),null,null,'N','N','N');
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_TILSTAND','ÅPEN',null,null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.47,872000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_TILSTAND','LØPENDE',null,null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.47,873000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_TILSTAND','AVSLUTTET',null,null,to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.47,875000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE (ID,KODEVERK,KODE,OFFISIELL_KODE,BESKRIVELSE,GYLDIG_FOM,GYLDIG_TOM,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID,EKSTRA_DATA) values (nextval('seq_kodeliste'),'RELATERT_YTELSE_TILSTAND','IKKESTARTET',null,'Sak eller vedtak er ikke startet',to_date('01.01.2000','DD.MM.YYYY'),to_date('31.12.9999','DD.MM.YYYY'),'VL',to_timestamp('09.11.2018 08.37.56,577000000','DD.MM.YYYY HH24.MI.SS'),null,null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_TILSTAND','ÅPEN','NB','Åpen','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_TILSTAND','LØPENDE','NB','Løpende','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_TILSTAND','AVSLUTTET','NB','Avsluttet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
Insert into KODELISTE_NAVN_I18N (ID,KL_KODEVERK,KL_KODE,SPRAK,NAVN,OPPRETTET_AV,OPPRETTET_TID,ENDRET_AV,ENDRET_TID) values (nextval('seq_kodeliste_navn'),'RELATERT_YTELSE_TILSTAND','IKKESTARTET','NB','Ikke startet','VL',to_timestamp('09.11.2018 08.38.08,026000000','DD.MM.YYYY HH24.MI.SS'),null,null);
