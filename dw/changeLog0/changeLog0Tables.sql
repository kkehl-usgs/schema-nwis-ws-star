--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaTablesAA
create table fa_regular_result_00000
(fk_station						number(10)
,activity_start_date_time       date
,act_start_time_zone            varchar2(6 byte)
,characteristic_name            varchar2(500 byte)
,srsid                          number(10)
,result_value                   number
,result_unit                    varchar2(10 byte)
,result_value_text              varchar2(80 byte)
,sample_fraction_type           varchar2(24 byte)
,result_value_type              varchar2(10 byte)
,statistic_type                 varchar2(25 byte)
,result_value_status            varchar2(11 byte)
,weight_basis_type              varchar2(15 byte)
,temperature_basis_level        varchar2(12 byte)
,duration_basis                 varchar2(12 byte)
,analytical_procedure_source    varchar2(4 byte)
,analytical_procedure_id        varchar2(5 byte)
,lab_name                       varchar2(59 byte)
,analysis_date_time             varchar2(26 byte)
,analysis_time_zone             varchar2(2 byte)
,lower_quantitation_limit       varchar2(2 byte)
,upper_quantitation_limit       varchar2(2 byte)
,detection_limit                varchar2(12 byte)
,detection_limit_description    varchar2(60 byte)
,lab_remark                     varchar2(374 byte)
,particle_size                  varchar2(64 byte)
,precision                      varchar2(11 byte)
,confidence_level               varchar2(2 byte)
,dilution_indicator             varchar2(2 byte)
,recovery_indicator             varchar2(2 byte)
,correction_indicator           varchar2(2 byte)
,activity_id                    varchar2(24 byte)
,activity_type                  varchar2(41 byte)
,activity_intent                varchar2(80 byte)
,activity_stop_date_time        date
,act_stop_time_zone             varchar2(6 byte)
,activity_depth                 varchar2(12 byte)
,activity_depth_unit            varchar2(6 byte)
,activity_upper_depth           varchar2(12 byte)
,activity_lower_depth           varchar2(12 byte)
,upr_lwr_depth_unit             varchar2(6 byte)
,result_comment                 varchar2(640 byte)
,cas_number                     varchar2(12 byte)
,itis_number                    number(10)
,activity_comment               varchar2(300 byte)
,activity_depth_ref_point       varchar2(20 byte)
,result_detection_condition_tx  varchar2(34 byte)
,sample_tissue_taxonomic_name   varchar2(161 byte)
,activity_media_name            varchar2(30 byte)
,activity_media_subdiv_name     varchar2(64 byte)
,analysis_prep_date_tx          varchar2(26 byte)
,sample_aqfr_name               varchar2(70 byte)
,hydrologic_condition_name      varchar2(64 byte)
,hydrologic_event_name          varchar2(64 byte)
,project_id                     varchar2(20 byte)
,activity_uprlwr_depth_ref_pt   varchar2(24 byte)
,sample_tissue_anatomy_name     varchar2(32 byte)
,parameter_code                 varchar2(5 byte)
,characteristic_type            varchar2(32 byte)
,activity_conducting_org        varchar2(59 byte)
,analytical_method_name         varchar2(32 byte)
,analytical_method_citation     varchar2(50 byte)
,activity_start_date_tx         varchar2(10 byte)
,activity_start_time_tx         varchar2(8 byte)
,act_start_time_zone_local      varchar2(6 byte)
,activity_start_date_tx_utc     varchar2(10 byte)
,activity_start_time_tx_utc     varchar2(8 byte)
,act_start_time_zone_utc        char(6 byte)
,activity_stop_date_tx          varchar2(30 byte)
,activity_stop_time_tx          varchar2(24 byte)
,act_stop_time_zone_local       varchar2(6 byte)
,activity_stop_date_tx_utc      varchar2(30 byte)
,activity_stop_time_tx_utc      varchar2(24 byte)
,act_stop_time_zone_utc         char(6 byte)
,sample_collect_equip_name      varchar2(80 byte)
,sample_collect_method_name     varchar2(80 byte)
,sample_collect_method_id       number
,sample_collect_method_ctx      varchar2(25 byte)
,sample_id                      number(11)
,nemi_url                       varchar2(256 char)
)
compress basic
partition by range(activity_start_date_time)
(partition fa_regular_result_pre_1990 values less than (to_date('01-JAN-1990', 'DD-MON-YYYY'))
,partition fa_regular_result_1990     values less than (to_date('01-JAN-1991', 'DD-MON-YYYY'))
,partition fa_regular_result_1991     values less than (to_date('01-JAN-1992', 'DD-MON-YYYY'))
,partition fa_regular_result_1992     values less than (to_date('01-JAN-1993', 'DD-MON-YYYY'))
,partition fa_regular_result_1993     values less than (to_date('01-JAN-1994', 'DD-MON-YYYY'))
,partition fa_regular_result_1994     values less than (to_date('01-JAN-1995', 'DD-MON-YYYY'))
,partition fa_regular_result_1995     values less than (to_date('01-JAN-1996', 'DD-MON-YYYY'))
,partition fa_regular_result_1996     values less than (to_date('01-JAN-1997', 'DD-MON-YYYY'))
,partition fa_regular_result_1997     values less than (to_date('01-JAN-1998', 'DD-MON-YYYY'))
,partition fa_regular_result_1998     values less than (to_date('01-JAN-1999', 'DD-MON-YYYY'))
,partition fa_regular_result_1999     values less than (to_date('01-JAN-2000', 'DD-MON-YYYY'))
,partition fa_regular_result_2000     values less than (to_date('01-JAN-2001', 'DD-MON-YYYY'))
,partition fa_regular_result_2001     values less than (to_date('01-JAN-2002', 'DD-MON-YYYY'))
,partition fa_regular_result_2002     values less than (to_date('01-JAN-2003', 'DD-MON-YYYY'))
,partition fa_regular_result_2003     values less than (to_date('01-JAN-2004', 'DD-MON-YYYY'))
,partition fa_regular_result_2004     values less than (to_date('01-JAN-2005', 'DD-MON-YYYY'))
,partition fa_regular_result_2005     values less than (to_date('01-JAN-2006', 'DD-MON-YYYY'))
,partition fa_regular_result_2006     values less than (to_date('01-JAN-2007', 'DD-MON-YYYY'))
,partition fa_regular_result_2007     values less than (to_date('01-JAN-2008', 'DD-MON-YYYY'))
,partition fa_regular_result_2008     values less than (to_date('01-JAN-2009', 'DD-MON-YYYY'))
,partition fa_regular_result_2009     values less than (to_date('01-JAN-2010', 'DD-MON-YYYY'))
,partition fa_regular_result_2010     values less than (to_date('01-JAN-2011', 'DD-MON-YYYY'))
,partition fa_regular_result_2011     values less than (to_date('01-JAN-2012', 'DD-MON-YYYY'))
,partition fa_regular_result_last     values less than (maxvalue)
);
--rollback drop table fa_regular_result_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAB
create table fa_station_00000
(pk_isn                         number(10)
,station_id                     varchar2(21 byte)
,station_name                   varchar2(50 char)
,organization_id                varchar2(7 byte)
,latitude                       number
,longitude                      number
,map_scale                      varchar2(7 byte)
,elevation                      varchar2(8 byte)
,hydrologic_unit_code           varchar2(16 byte)
,description_text               varchar2(50 byte)
,source_system                  varchar2(7 byte)
,horiz_datum_name               varchar2(10 byte)
,vertical_datum_name            varchar2(10 byte)
,country_cd                     varchar2(2 byte)
,country_name                   varchar2(48 byte)
,state_cd                       varchar2(2 byte)
,state_name                     varchar2(53 byte)
,county_cd                      varchar2(3 byte)
,county_name                    varchar2(48 byte)
,state_postal_cd                varchar2(2 byte)
,land_net_ds                    varchar2(23 byte)
,station_type_name              varchar2(82 byte)
,vertical_method_name           varchar2(75 byte)
,geopositioning_method          varchar2(75 byte)
,geopositioning_accuracy_value  varchar2(12 byte)
,geopositioning_accuracy_units  varchar2(12 byte)
,vertical_accuracy_value        varchar2(3 byte)
,vertical_accuracy_units        varchar2(4 byte)
,nat_aqfr_name                  varchar2(64 byte)
,aqfr_type_name                 varchar2(75 byte)
,drain_area_mi2_va              number
,contrib_drain_mi2_area_va      number
,aqfr_name                      varchar2(70 byte)
,well_depth_ft_blw_land_sfc_va  number
,hole_depth_ft_blw_land_sfc_va  number
,construction_date_tx           varchar2(8 byte)
,basin_cd                       varchar2(2 byte)
,elev_units                     varchar2(4 byte)
,organization_name              varchar2(86 byte)
,wqx_station_type               varchar2(32 byte)
,geom                           mdsys.sdo_geometry
,state_fips                     integer
,primary_site_type              varchar2(30 byte)
)
compress basic
;
--rollback drop table fa_station_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAC
create table nwis_result_ct_sum_00000
(fk_station            number(10)
,station_id            varchar2(21 byte)
,country_cd            varchar2(2 byte)
,state_cd              varchar2(2 byte)
,county_cd             varchar2(3 byte)
,primary_site_type     varchar2(30 byte)
,organization_id       varchar2(7 byte)
,hydrologic_unit_code  varchar2(16 byte)
,activity_media_name   varchar2(30 byte)
,characteristic_type   varchar2(32 byte)
,characteristic_name   varchar2(500 byte)
,parameter_code        varchar2(5 byte)
,nemi_url                       varchar2(256 char)
,result_count          number(9)
)
compress basic
partition by list(characteristic_type)
(partition nwis_result_ct_sum_sediment    values ('Sediment')
,partition nwis_result_ct_sum_organics    values ('Organics, PCBs')
,partition nwis_result_ct_sum_nutient     values ('Nutrient')
,partition nwis_result_ct_sum_inorganics1 values ('Inorganics, Minor, Non-metals')
,partition nwis_result_ct_sum_inorcanics2 values ('Inorganics, Major, Non-metals')
,partition nwis_result_ct_sum_information values ('Information')
,partition nwis_result_ct_sum_organics2   values ('Organics, Pesticide')
,partition nwis_result_ct_sum_micro       values ('Microbiological')
,partition nwis_result_ct_sum_physical    values ('Physical')
,partition nwis_result_ct_sum_radio       values ('Radiochemical')
,partition nwis_result_ct_sum_inorganics3 values ('Inorganics, Major, Metals')
,partition nwis_result_ct_sum_isotopes    values ('Stable Isotopes')
,partition nwis_result_ct_sum_inorganics4 values ('Inorganics, Minor, Metals')
,partition nwis_result_ct_sum_biological  values ('Biological')
,partition nwis_result_ct_sum_organics3   values ('Organics, Other')
,partition nwis_result_ct_sum_default     values (default)
);
--rollback drop table nwis_result_ct_sum_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAD
create table nwis_result_nr_sum_00000
(fk_station                number(10)
,activity_media_name       varchar2(30 byte)
,characteristic_type       varchar2(32 byte)
,characteristic_name       varchar2(500 byte)
,parameter_code            varchar2(5 byte)
,activity_start_date_time  date
,nemi_url                       varchar2(256 char)
,result_count              number(9)
)
compress basic
partition by range(activity_start_date_time)
(partition nwis_result_nr_sum_pre_1990 values less than (to_date('01-JAN-1990', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1990     values less than (to_date('01-JAN-1991', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1991     values less than (to_date('01-JAN-1992', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1992     values less than (to_date('01-JAN-1993', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1993     values less than (to_date('01-JAN-1994', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1994     values less than (to_date('01-JAN-1995', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1995     values less than (to_date('01-JAN-1996', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1996     values less than (to_date('01-JAN-1997', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1997     values less than (to_date('01-JAN-1998', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1998     values less than (to_date('01-JAN-1999', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_1999     values less than (to_date('01-JAN-2000', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2000     values less than (to_date('01-JAN-2001', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2001     values less than (to_date('01-JAN-2002', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2002     values less than (to_date('01-JAN-2003', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2003     values less than (to_date('01-JAN-2004', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2004     values less than (to_date('01-JAN-2005', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2005     values less than (to_date('01-JAN-2006', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2006     values less than (to_date('01-JAN-2007', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2007     values less than (to_date('01-JAN-2008', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2008     values less than (to_date('01-JAN-2009', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2009     values less than (to_date('01-JAN-2010', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2010     values less than (to_date('01-JAN-2011', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_2011     values less than (to_date('01-JAN-2012', 'DD-MON-YYYY'))
,partition nwis_result_nr_sum_last     values less than (maxvalue)
);
--rollback drop table nwis_result_nr_sum_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAE
create table nwis_result_sum_00000
(fk_station                number(10)
,station_id                varchar2(21 byte)
,country_cd                varchar2(2 byte)
,state_cd                  varchar2(2 byte)
,county_cd                 varchar2(3 byte)
,primary_site_type         varchar2(30 byte)
,organization_id           varchar2(7 byte)
,hydrologic_unit_code      varchar2(16 byte)
,activity_media_name       varchar2(30 byte)
,characteristic_type       varchar2(32 byte)
,characteristic_name       varchar2(500 byte)
,activity_start_date_time  date
,parameter_code            varchar2(5 byte)
,nemi_url                       varchar2(256 char)
,result_count              number(9)
)
compress basic
partition by range(activity_start_date_time)
(partition nwis_result_sum_pre_1990 values less than (to_date('01-JAN-1990', 'DD-MON-YYYY'))
,partition nwis_result_sum_1990     values less than (to_date('01-JAN-1991', 'DD-MON-YYYY'))
,partition nwis_result_sum_1991     values less than (to_date('01-JAN-1992', 'DD-MON-YYYY'))
,partition nwis_result_sum_1992     values less than (to_date('01-JAN-1993', 'DD-MON-YYYY'))
,partition nwis_result_sum_1993     values less than (to_date('01-JAN-1994', 'DD-MON-YYYY'))
,partition nwis_result_sum_1994     values less than (to_date('01-JAN-1995', 'DD-MON-YYYY'))
,partition nwis_result_sum_1995     values less than (to_date('01-JAN-1996', 'DD-MON-YYYY'))
,partition nwis_result_sum_1996     values less than (to_date('01-JAN-1997', 'DD-MON-YYYY'))
,partition nwis_result_sum_1997     values less than (to_date('01-JAN-1998', 'DD-MON-YYYY'))
,partition nwis_result_sum_1998     values less than (to_date('01-JAN-1999', 'DD-MON-YYYY'))
,partition nwis_result_sum_1999     values less than (to_date('01-JAN-2000', 'DD-MON-YYYY'))
,partition nwis_result_sum_2000     values less than (to_date('01-JAN-2001', 'DD-MON-YYYY'))
,partition nwis_result_sum_2001     values less than (to_date('01-JAN-2002', 'DD-MON-YYYY'))
,partition nwis_result_sum_2002     values less than (to_date('01-JAN-2003', 'DD-MON-YYYY'))
,partition nwis_result_sum_2003     values less than (to_date('01-JAN-2004', 'DD-MON-YYYY'))
,partition nwis_result_sum_2004     values less than (to_date('01-JAN-2005', 'DD-MON-YYYY'))
,partition nwis_result_sum_2005     values less than (to_date('01-JAN-2006', 'DD-MON-YYYY'))
,partition nwis_result_sum_2006     values less than (to_date('01-JAN-2007', 'DD-MON-YYYY'))
,partition nwis_result_sum_2007     values less than (to_date('01-JAN-2008', 'DD-MON-YYYY'))
,partition nwis_result_sum_2008     values less than (to_date('01-JAN-2009', 'DD-MON-YYYY'))
,partition nwis_result_sum_2009     values less than (to_date('01-JAN-2010', 'DD-MON-YYYY'))
,partition nwis_result_sum_2010     values less than (to_date('01-JAN-2011', 'DD-MON-YYYY'))
,partition nwis_result_sum_2011     values less than (to_date('01-JAN-2012', 'DD-MON-YYYY'))
,partition nwis_result_sum_last     values less than (maxvalue)
);
--rollback drop table nwis_result_sum_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAF
create table nwis_station_sum_00000
(pk_isn                         number(10)
,station_id                     varchar2(21 byte)
,station_name                   varchar2(50 char)
,geom                           mdsys.sdo_geometry
,country_cd                     varchar2(2 byte)
,state_cd                       varchar2(2 byte)
,county_cd                      varchar2(3 byte)
,primary_site_type              varchar2(30 byte)
,description_text               varchar2(50 byte)
,organization_id                varchar2(7 byte)
,organization_name              varchar2(86 byte)
,nat_aqfr_name                  varchar2(64 byte)
,aqfr_type_name                 varchar2(75 byte)
,hydrologic_unit_code           varchar2(16 byte)
,well_depth_ft_blw_land_sfc_va  number
,well_depth_ft_blw_land_sfc_un  varchar2(2 byte)
,result_count                   number(8)
)
compress basic
;
--rollback drop table nwis_station_sum_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAG
create table nwis_lctn_loc_00000
(country_cd         varchar2(2 byte)
,state_fips         varchar2(2 byte)
,organization_id    varchar2(7 byte)
,organization_name  varchar2(86 byte)
)
compress basic
;
--rollback drop table nwis_lctn_loc_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAH
create table nwis_di_org_00000
(organization_id    varchar2(7 byte)
,organization_name  varchar2(86 byte)
)
compress basic
;
--rollback drop table nwis_di_org_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAI
create table series_catalog_00000
(fk_station            number(11)
,data_type_code        varchar2(2 byte)
,parameter_code        varchar2(5 byte)
,status_code           varchar2(5 byte)
,location_name         varchar2(64 byte)
,medium_group_code     varchar2(3 byte)
,parameter_group_code  varchar2(3 byte)
,srs_id                number(11)
,access_code           number(4)
,begin_date_text       varchar2(10 byte)
,end_date_text         varchar2(10 byte)
,count_nu              number(8)
,series_catalog_md     date
)
compress basic
;
--rollback drop table series_catalog_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAJ
create table qwportal_summary_00000
(fips_state_code         varchar2(2 char)
,fips_county_code        varchar2(3 char)
,fips_state_and_county   varchar2(5 char)
,nwis_or_epa             varchar2(3 byte)
,site_type               varchar2(30 char)
,huc8                    varchar2(8 char)
,huc12                   varchar2(12 char)
,min_date                date
,max_date                date
,samples_past_12_months  number
,samples_past_60_months  number
,samples_all_time        number
,results_past_12_months  number
,results_past_60_months  number
,results_all_time        number
)
compress basic
;
--rollback drop table qwportal_summary_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAK
create table qw_result
(sample_id           number(11)
,site_id             number(11)
,record_no           varchar2(8 byte)
,result_web_cd       varchar2(1 byte)
,parameter_cd        varchar2(5 byte)
,meth_cd             varchar2(5 byte)
,result_va           varchar2(12 byte)
,result_unrnd_va     varchar2(12 byte)
,result_rd           varchar2(1 byte)
,rpt_lev_va          varchar2(12 byte)
,rpt_lev_cd          varchar2(6 byte)
,lab_std_va          varchar2(11 byte)
,remark_cd           varchar2(1 byte)
,val_qual_tx         varchar2(5 byte)
,null_val_qual_cd    varchar2(1 byte)
,qa_cd               varchar2(1 byte)
,dqi_cd              varchar2(1 byte)
,anl_ent_cd          varchar2(8 byte)
,anl_set_no          varchar2(12 byte)
,anl_dt              varchar2(19 byte)
,prep_set_no         varchar2(12 byte)
,prep_dt             varchar2(19 byte)
,result_field_cm_tx  varchar2(640 byte)
,result_lab_cm_tx    varchar2(640 byte)
,result_md           date
,qw_result_md        date
)
compress basic
;
--rollback drop table qw_result cascade constraints purge;

--changeset drsteini:0SchemaTablesAL
create table qw_sample
(sample_id                    number(11)
,site_id                      number(11)
,record_no                    varchar2(8 byte)
,nwis_host                    varchar2(12 byte)
,db_no                        varchar2(2 byte)
,qw_db_no                     varchar2(2 byte)
,sample_web_cd                varchar2(1 byte)
,sample_start_dt              date
,sample_start_display_dt      varchar2(19 byte)
,sample_start_sg              varchar2(1 byte)
,sample_end_dt                varchar2(19 byte)
,sample_end_display_dt        varchar2(19 byte)
,sample_end_sg                varchar2(1 byte)
,sample_utc_start_dt          date
,sample_utc_start_display_dt  varchar2(19 byte)
,sample_utc_end_dt            varchar2(19 byte)
,sample_utc_end_display_dt    varchar2(19 byte)
,sample_start_time_datum_cd   varchar2(6 byte)
,medium_cd                    varchar2(3 byte)
,tu_id                        varchar2(11 byte)
,body_part_id                 varchar2(11 byte)
,nwis_sample_id               varchar2(11 byte)
,lab_no                       varchar2(7 byte)
,project_cd                   varchar2(9 byte)
,aqfr_cd                      varchar2(8 byte)
,samp_type_cd                 varchar2(1 byte)
,sample_lab_cm_tx             varchar2(300 byte)
,sample_field_cm_tx           varchar2(300 byte)
,coll_ent_cd                  varchar2(8 byte)
,anl_stat_cd                  varchar2(1 byte)
,anl_src_cd                   varchar2(1 byte)
,anl_type_tx                  varchar2(27 byte)
,hyd_cond_cd                  varchar2(1 byte)
,hyd_event_cd                 varchar2(1 byte)
,tm_datum_rlbty_cd            varchar2(1 byte)
,sample_md                    date
,qw_sample_md                 date
)
compress basic
;
--rollback drop table qw_sample cascade constraints purge;

--changeset drsteini:0SchemaTablesAM
create table temp_series_catalog
(site_id            number(11)
,data_type_cd       varchar2(2 byte)
,parm_cd            varchar2(5 byte)
,stat_cd            varchar2(5 byte)
,loc_nm             varchar2(64 byte)
,medium_grp_cd      varchar2(3 byte)
,parm_grp_cd        varchar2(3 byte)
,srs_id             number(11)
,access_cd          number(4)
,begin_date         varchar2(10 byte)
,end_date           varchar2(10 byte)
,count_nu           number(8)
,series_catalog_md  date
)
compress basic
;
--rollback drop table temp_series_catalog cascade constraints purge;

--changeset drsteini:0SchemaTablesAN
create table sitefile
(site_id                        number(10)
,agency_cd                      varchar2(5 byte)
,site_no                        varchar2(15 byte)
,nwis_host                      varchar2(12 byte)
,db_no                          varchar2(2 byte)
,station_nm                     varchar2(50 char)
,dec_lat_va                     number(16,8)
,dec_long_va                    number(16,8)
,coord_meth_cd                  varchar2(1 byte)
,coord_acy_cd                   varchar2(1 byte)
,district_cd                    varchar2(3 byte)
,country_cd                     varchar2(2 byte)
,state_cd                       varchar2(2 byte)
,county_cd                      varchar2(3 byte)
,land_net_ds                    varchar2(23 byte)
,map_scale_fc                   varchar2(7 byte)
,alt_va                         varchar2(8 byte)
,alt_meth_cd                    varchar2(1 byte)
,alt_acy_va                     varchar2(3 byte)
,alt_datum_cd                   varchar2(10 byte)
,huc_cd                         varchar2(16 byte)
,basin_cd                       varchar2(2 byte)
,site_tp_cd                     varchar2(7 byte)
,site_rmks_tx                   varchar2(50 byte)
,drain_area_va                  varchar2(8 byte)
,contrib_drain_area_va          varchar2(8 byte)
,construction_dt                varchar2(8 byte)
,aqfr_type_cd                   varchar2(1 byte)
,aqfr_cd                        varchar2(8 byte)
,nat_aqfr_cd                    varchar2(10 byte)
,well_depth_va                  varchar2(8 byte)
,hole_depth_va                  varchar2(8 byte)
,site_web_cd                    varchar2(1 byte)
,dec_coord_datum_cd             varchar2(10 byte)
,site_cn                        varchar2(8 byte)
,site_cr                        date
,site_mn                        varchar2(8 byte)
,site_md                        date
)
compress basic
;
--rollback drop table sitefile cascade constraints purge;

--changeset drsteini:0SchemaTablesAO
create table characteristicname_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
)
compress basic
;
--rollback drop table characteristicname_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAP
create table characteristictype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
)
compress basic
;
--rollback drop table characteristictype_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAQ
create table country_00000
(code_value                     varchar2(2 char)
,description                    varchar2(48 char)
,sort_order                     number
)
compress basic
;
--rollback drop table country_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAR
create table county_00000
(code_value                     varchar2(9 char)
,description                    varchar2(107 char)
,country_cd                     varchar2(2 char)
,state_cd                       varchar2(2 char)
,sort_order                     number
)
compress basic
;
--rollback drop table county_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAS
create table organization_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
,constraint organization_00000_pk
   primary key (code_value)
)
compress basic
;
--rollback drop table organization_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAT
create table samplemedia_00000
(code_value                     varchar2(30 char)
,description                    varchar2(4000 char)
,sort_order                     number
)
compress basic
;
--rollback drop table samplemedia_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAU
create table sitetype_00000
(code_value                     varchar2(500 char)
,description                    varchar2(4000 char)
,sort_order                     number
)
compress basic
;
--rollback drop table sitetype_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAV
create table state_00000
(code_value                     varchar2(5 char)
,description_with_country       varchar2(57 char)
,description_with_out_country   varchar2(53 char)
,country_cd                     varchar2(2 char)
,sort_order                     number
)
compress basic
;
--rollback drop table state_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAW
create table public_srsnames_00000
(parm_cd                        char(5 byte)            not null enable
,description                    varchar2(170 byte)
,characteristicname             varchar2(1200 byte)     not null enable
,measureunitcode                varchar2(10 byte)
,resultsamplefraction           varchar2(24 byte)
,resulttemperaturebasis         varchar2(12 byte)
,resultstatisticalbasis         varchar2(25 byte)
,resulttimebasis                varchar2(12 byte)
,resultweightbasis              varchar2(15 byte)
,resultparticlesizebasis        varchar2(64 byte)
,last_rev_dt                    date
,max_last_rev_dt                date
)
compress basic
;
--rollback drop table public_srsnames_00000 cascade constraints purge;

--changeset drsteini:0SchemaTablesAX
create table huc8_conus_hi_ak_pr_dis
(cat_num                        varchar2(8 char)
,first_cat_                     varchar2(60 char)
,geom                           mdsys.sdo_geometry
);
--rollback drop table huc8_conus_hi_ak_pr_dis cascade constraints purge;

--changeset drsteini:0SchemaTablesAY
create table states
(state                          varchar2(26 byte)
,state_abrv                     varchar2(2 byte)
,fipsst                         varchar2(2 byte)
,totpop                         number
,pctsmpld                       number
,landsqmi                       number
,poppsqmi                       number
,female                         number
,rural                          number
,onfarms                        number
,infamily                       number
,alone                          number
,groupqtr                       number
,popinhhs                       number
,pctfemal                       number
,pctgq                          number
,white                          number
,black                          number
,asianpi                        number
,amindian                       number
,hispanic                       number
,pctwhite                       number
,pctblack                       number
,pctasian                       number
,pctamind                       number
,pcthisp                        number
,pct0_4                         number
,pct5_9                         number
,pct10_13                       number
,pct14_17                       number
,pct18_24                       number
,pct25_34                       number
,pct35_44                       number
,pct45_54                       number
,pct55_59                       number
,pct60_64                       number
,pct65_74                       number
,pct75_84                       number
,pct85_up                       number
,pct0_19                        number
,pct20_39                       number
,pct40_64                       number
,pct65_up                       number
,age0_4                         number
,age5_9                         number
,age10_13                       number
,age14_17                       number
,age18_24                       number
,age25_34                       number
,age35_44                       number
,age45_54                       number
,age55_59                       number
,age60_64                       number
,age65_74                       number
,age75_84                       number
,age85_up                       number
,age0_19                        number
,age20_39                       number
,age40_64                       number
,age65_up                       number
,age0_17                        number
,age18_44                       number
,age45_64                       number
,medage                         number
,tothhs                         number
,avghhsz                        number
,hhs1ov65                       number
,hhs1                           number
,hhs2                           number
,hhs3_4                         number
,hhs5_up                        number
,pcthhs1                        number
,pcthhs2                        number
,pcthhs3_                       number
,pcthhs5_                       number
,families                       number
,mcfams                         number
,mcwchild                       number
,femhead                        number
,femheadc                       number
,nonfhhs                        number
,pctfamhh                       number
,pctmcfam                       number
,pctmcwch                       number
,pctfemhe                       number
,pctfemhc                       number
,pctnfhhs                       number
,hhi0_10                        number
,hhi10_15                       number
,hhi15_25                       number
,hhi25_35                       number
,hhi35_50                       number
,hhi50_75                       number
,hhi75_99                       number
,hhi100up                       number
,phi0_10                        number
,phi10_15                       number
,phi15_25                       number
,phi25_35                       number
,phi35_50                       number
,phi50_75                       number
,phi75_99                       number
,phi100up                       number
,phi0_15                        number
,phi0_25                        number
,phi0_35                        number
,phi0_50                        number
,phi0_75                        number
,phi0_99                        number
,medhhinc                       number
,avghhinc                       number
,geom                           mdsys.sdo_geometry
);
--rollback drop table states cascade constraints purge;

--changeset drsteini:0SchemaTablesAZ
create table usgs_organizations
(organization_id                varchar2(7 char)
,organization_name              varchar2(86 char)
,last_change_date               date
,group_org_name                 varchar2(100 char)
);
--rollback drop table usgs_organizations cascade constraints purge;

--changeset drsteini:0SchemaTablesBA
create table us_counties_dis_20121015
(fips                           varchar2(5 char)
,area                           float(63)
,perimeter                      float(63)
,countyp010                     float(63)
,state                          varchar2(5 char)
,county_name                    varchar2(50 char)
,state_fips                     varchar2(2 char)
,square_mil                     float(63)
,geom                           mdsys.sdo_geometry
);
--rollback drop table us_counties_dis_20121015 cascade constraints purge;
