select sch.location_name, p.position_name, u.employee_code,
  CASE WHEN u.employee_code is null then 'Open' else u.first_name end as first_name,
  CASE WHEN u.employee_code is null then 'Open' else u.last_name end as last_name
from {{qry_wiw_shift_shifts_summary.data}} as s LEFT JOIN {{qry_wiw_shift_users_summary.data}} as u
ON s.wiw_id = u.wiw_id LEFT JOIN {{qry_wiw_shift_locations_summary.data}} as sch
ON s.location_id = sch.location_id LEFT JOIN {{qry_wiw_shift_positions_summary.data}} as p
ON s.position_id = p.position_id 
where CONVERT(date, s.start_time) = {{moment(dateRange1.value).format('YYYY.MM.DD')}}
and sch.location_name LIKE 'PM%'
order by sch.location_name, p.position_name
