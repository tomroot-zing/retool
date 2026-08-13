select co.calloff_id, co.calloff_date, e.emp_id, e.paylocity_id,
CASE 
  WHEN (e.nickname is NULL) THEN CONCAT(e.first_name, ' ', e.last_name)
  WHEN (e.nickname = '') THEN CONCAT(e.first_name, ' ', e.last_name)
  ELSE CONCAT(e.nickname, ' ', e.last_name)
END as fullname, co.entered_name,
co.emp_id, co.calloff_type, r.description, co.covid, co.sch_ack
from emp_calloffs as co INNER JOIN employees as e
ON co.emp_id = e.emp_id left JOIN calloff_reasons as r
ON co.reason_id = r.calloff_reason_id
WHERE CONVERT(co.calloff_date, date) = CONVERT('{{dateRange2.value}}', date)