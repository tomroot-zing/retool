select *
from user_app_prefs
where user_id = {{ current_user.sid }}