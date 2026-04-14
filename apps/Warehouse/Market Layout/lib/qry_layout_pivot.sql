select *
from (
select substring(sl.StockLocationCode, 4,1) as rack, s.StockCode as stockcode, substring(sl.StockLocationCode, 5,1) as my_cols
from stock as s left JOIN StockLocations as sl
ON s.StockID = sl.StockID 
where sl.StockLocationCode LIKE {{ select_mkt_prefix.value }}
and sl.StockLocationActive <> 0
and s.ProductLifeState <> 6 
) raw
PIVOT( 
  MAX(stockcode)
  FOR my_cols IN ([1],[2],[3],[4],[5],[6],[7],[8],[9])
) as pivot_table