select id as shift_id, user_id as wiw_id, location_id, position_id, start_time, end_time
from {{qry_shifts_summary.data.shifts}}