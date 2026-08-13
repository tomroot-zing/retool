select co.calloff_id, e.emp_id, e.paylocity_id, e.nickname, e.last_name, co.entered_name, co.calloff_date, co.calloff_type, sch.sch_name as schedule, sch.pos_name as position
from {{ formatDataAsArray(qry_calloffs_for_today.data )}} as co INNER JOIN {{ formatDataAsArray(qry_hue_employees.data) }} as e
ON co.emp_id = e.emp_id LEFT JOIN {{ qry_today_schedule.data }} as sch
ON e.paylocity_id = sch.employee_code