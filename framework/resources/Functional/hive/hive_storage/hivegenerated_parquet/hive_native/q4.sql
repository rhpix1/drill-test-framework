alter session set `store.hive.optimize_scan_with_native_readers` = true;
select count(*) from hive1_fewtypes_null_parquet where cast(interval_col as interval day) is null;
alter session set `store.hive.optimize_scan_with_native_readers` = false;
