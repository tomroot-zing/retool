select *
from {{ qry_shifts_summary.data.shifts }}
where CONVERT(date, start_time) = {{ moment(dateRange1.value).format('YYYY.MM.DD') }}
and location_id = 5355022
