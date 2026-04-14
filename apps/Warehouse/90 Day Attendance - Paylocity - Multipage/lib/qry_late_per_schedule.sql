select s.first_name, s.last_name, s.sch_name, s.pos_name, CONVERT(datetime, s.start_time) as sch_start, CONVERT(datetime, p.start_time) as punch_start, p.displayname
from {{qry_today_schedule.data}} as s INNER JOIN {{qry_employees_with_punches.data}} as p
ON s.employee_code = p.paylocity_id