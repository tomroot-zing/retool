select h.emp_id, u.employee_code, h.first_name, h.displayname, h.last_name, sch.name as sch_name, p.name as pos_name, s.start_time, s.end_time
from {{qry_wiw_shift_shifts.data}} as s LEFT JOIN {{qry_wiw_shift_users.data}} as u 
ON s.wiw_id = u.wiw_id LEFT JOIN {{qry_wiw_shift_locations.data}} as sch
ON s.location_id = sch.location_id LEFT JOIN {{qry_wiw_shift_positions.data}} as p
ON s.position_id = p.position_id LEFT JOIN {{formatDataAsArray(qry_hue_employees.data)}} as h
ON u.employee_code = h.paylocity_id
where CONVERT(date, s.start_time) = {{moment(dateRange2.value).format('YYYY.MM.DD')}}
order by p.name, sch.name, s.start_time, h.last_name