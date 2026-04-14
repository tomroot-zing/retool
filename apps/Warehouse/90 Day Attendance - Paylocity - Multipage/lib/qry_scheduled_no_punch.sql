select sch.employee_code, sch.emp_id, sch.displayname, sch.last_name, sch.sch_name, sch.pos_name, sch.start_time as sch_start_time, p.start_time as punch_start_time, co.calloff_type, att.area_name, ncns.emp_id as ncns, ncns.instance_date
from {{qry_today_schedule.data}} as sch LEFT JOIN {{qry_employees_with_punches.data}} as p
ON sch.employee_code = p.paylocity_id LEFT JOIN {{formatDataAsArray(qry_calloffs_for_today.data)}} as co
ON (sch.employee_code = co.paylocity_id AND CONVERT(date, sch.start_time) = CONVERT(date, co.calloff_date))
LEFT JOIN {{formatDataAsArray(qry_attendance_for_today.data)}} as att
ON sch.employee_code = att.paylocity_id LEFT JOIN {{ formatDataAsArray(qry_emp_ncns.data) }} as ncns
  ON (sch.emp_id = ncns.emp_id AND CONVERT(date, sch.start_time)=CONVERT(date, ncns.instance_date))
where (p.start_time IS NULL AND p.end_time IS NULL)
order by sch.sch_name, sch.pos_name, sch.start_time
