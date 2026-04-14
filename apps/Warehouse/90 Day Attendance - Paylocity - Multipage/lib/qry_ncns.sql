select e.emp_id, e.displayname, e.last_name, COUNT(ncns.instance_date) as ncns_count
from employees as e INNER JOIN emp_ncns as ncns
ON e.emp_id = ncns.emp_id
  where CONVERT(ncns.instance_date, date) between DATE_ADD(NOW(), INTERVAL -{{ numberInput1.value }} DAY ) and CONVERT(NOW() , date)
    and status = 'Active'
GROUP BY e.emp_id, e.displayname, e.last_name
order by COUNT(ncns.instance_date) DESC, e.last_name