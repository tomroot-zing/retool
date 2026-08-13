SELECT
  apps.id,
  apps.shortlink,
  user_apps.access_level,
  folders.name AS folder_name,
  apps.name        AS app_name,
  apps.description AS default_desc
FROM {{ qry_all_apps.data }} AS apps
INNER JOIN {{ qry_all_user_apps.data.data }} AS user_apps
  ON apps.id = user_apps.id
INNER JOIN {{ all_folders.data }} AS folders
  ON apps.folder_id = folders.id
ORDER BY apps.name ASC;