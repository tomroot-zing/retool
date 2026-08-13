select e.displayname, e.last_name, p.paylocity_id, p.start_time, p.end_time, p.duration, p.punch_origin, p.dept_name
from {{qry_todays_punches_raw.data}} as p LEFT JOIN {{formatDataAsArray(qry_hue_employees.data)}} as e
ON p.paylocity_id = e.paylocity_id 
where (p.start_time != '' OR p.end_time != '')
order by e.last_name, p.start_time