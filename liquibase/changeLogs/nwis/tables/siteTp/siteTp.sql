create unlogged table if not exists ${NWIS_SCHEMA_NAME}.site_tp
(site_tp_cd                     character varying (7)
,site_tp_srt_nu                 smallint
,site_tp_vld_fg                 boolean
,site_tp_prim_fg                boolean
,site_tp_nm                     character varying (10)
,site_tp_ln                     character varying (40)
,site_tp_ds                     text
) with (fillfactor = 100);
