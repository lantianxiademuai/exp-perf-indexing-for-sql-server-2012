--Listing 6-13.  View Index Fragmentation from Shrink
SELECT index_type_desc
  ,index_depth
  ,index_level
  ,page_count
  ,record_count
  ,CAST(avg_fragmentation_in_percent as DECIMAL(6,2)) as avg_fragmentation_in_percent
  ,fragment_count
  ,avg_fragment_size_in_pages
  ,CAST(avg_page_space_used_in_percent as DECIMAL(6,2)) as avg_page_space_used_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(),OBJECT_ID('dbo.FirstTable'),NULL,NULL,'DETAILED')