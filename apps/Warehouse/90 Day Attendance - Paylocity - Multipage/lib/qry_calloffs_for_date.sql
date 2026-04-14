select co.calloff_id, co.calloff_date, e.kronos_id, 
CASE 
  WHEN (e.nickname is NULL) THEN CONCAT(e.first_name, ' ', e.last_name)
  WHEN (e.nickname = '') THEN CONCAT(e.first_name, ' ', e.last_name)
  ELSE CONCAT(e.nickname, ' ', e.last_name)
END as fullname, 
co.emp_id, co.calloff_type, r.description, co.covid, co.sch_ack
from emp_calloffs as co INNER JOIN employees as e
ON co.emp_id = e.emp_id left JOIN calloff_reasons as r
ON co.reason_id = r.calloff_reason_id
WHERE CONVERT( co.calloff_date, date) >= CONVERT('{{dateRange1.value}}', date)
AND CONVERT( co.calloff_date, date) < CONVERT({{moment(dateRange1.value).add(1,'d').format('YYYY-MM-DD')}}, date)
