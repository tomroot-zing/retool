select LEFT(StockLocationCode,2) as prefix
from StockLocations
where StockLocationActive <> 0
and StockLocationType = 1
group by LEFT(StockLocationCode,2)
order by LEFT(StockLocationCode,2)