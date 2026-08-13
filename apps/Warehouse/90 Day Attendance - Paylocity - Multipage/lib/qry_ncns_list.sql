select ncns.id, e.displayname, e.last_name, ncns.instance_date
from employees as e INNER JOIN emp_ncns as ncns
ON e.emp_id = ncns.emp_id
where ncns.emp_id = {{ table21.selectedRow.emp_id }}
order by ncns.instance_date DESC