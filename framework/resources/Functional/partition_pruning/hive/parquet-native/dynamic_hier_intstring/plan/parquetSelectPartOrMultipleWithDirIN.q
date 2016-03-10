alter session set `store.hive.optimize_scan_with_native_readers` = true;
explain plan for select l_orderkey, l_partkey, l_quantity, cast(l_shipdate as date) l_shipdate, l_shipinstruct, `year`, `month` from hive.dynamic_partitions.lineitem_parquet_partitioned_hive_hier_intstring where (`year` IN (1993) and `month`='oct') or (`year` IN (1994) and `month`='may');
alter session set `store.hive.optimize_scan_with_native_readers` = false;
