select co.calloff_id, co.calloff_date, co.fullname, ss.start_time, sl.name as sch_name, sp.name as postition_name, co.calloff_type, co.description, co.covid, co.sch_ack
from {{formatDataAsArray(qry_calloffs_for_date.data)}} as co INNER JOIN {{qry_wiw_shift_users.data}} as su
ON co.kronos_id = su.employee_code INNER JOIN {{qry_wiw_shift_shifts.data}} as ss
ON su.wiw_id = ss.user_id INNER JOIN {{qry_wiw_shift_locations.data}} as sl
ON ss.location_id = sl.id INNER JOIN {{qry_wiw_shift_positions.data}} as sp
ON ss.position_id = sp.id
WHERE CONVERT(date, co.calloff_date) =  CONVERT(date, ss.start_time)