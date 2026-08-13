select sch.location_name, p.position_name, COUNT(s.wiw_id)
from {{qry_wiw_shift_shifts_summary.data}} as s LEFT JOIN {{qry_wiw_shift_positions_summary.data}} as p
ON s.position_id = p.position_id LEFT JOIN {{qry_wiw_shift_locations_summary.data}} as sch
ON s.location_id = sch.location_id 
where CONVERT(date, s.start_time) = {{moment(dateRange1.value).format('YYYY.MM.DD')}}
group by sch.location_name, p.position_name
order by sch.location_name, p.position_name

