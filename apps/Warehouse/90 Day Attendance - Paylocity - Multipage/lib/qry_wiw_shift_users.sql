select id as wiw_id, first_name, last_name, CAST(employee_code as NUMBER) as employee_code
from {{qry_shifts.data.users}}