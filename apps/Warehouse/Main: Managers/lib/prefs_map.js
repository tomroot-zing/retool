const rows = formatDataAsArray({{ qry_user_prefs.data }});
return Object.fromEntries(rows.map(r => [r.app_id, r]));