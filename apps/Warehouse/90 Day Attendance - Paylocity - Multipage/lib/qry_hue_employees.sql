select first_name, displayname, nickname, last_name, emp_id, paylocity_id
from employees
  where status = 'Active'
order by last_name