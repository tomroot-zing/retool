SELECT att.emp_id, e.kronos_id, e.first_name, e.last_name, a.area_name, MIN(att.attendance_date), e.paylocity_id 
from attendance as att INNER JOIN employees as e
ON att.emp_id = e.emp_id INNER JOIN areas as a
ON att.area_id = a.area_id 
where CONVERT(att.attendance_date, date) = CONVERT('{{dateRange2.value}}', date)
group by att.emp_id, e.first_name, e.last_name, a.area_name
order by att.emp_id 