const apps  = {{ qry_user_app_info.data }} || [];
const prefs = {{ prefsByAppId.value }} || {};
const draft = {{ draftPref.value }} || null;

const showHidden = !!{{ toggleHiddenButton.value }};

const norm = (v) => (v === "" ? null : v);
const bit  = (v) => (v ? 1 : 0);

const merged = apps.map(a => {
  const appId = a.id;

  const p = prefs[appId] || {};
  const d = (draft && draft.app_id === appId) ? draft : null;

  const finalName =
    norm(d?.app_name) ??
    norm(p.app_name) ??
    norm(a.app_name) ??
    null;

  const finalDesc =
    norm(d?.app_description) ??
    norm(p.app_description) ??
    norm(a.user_app_desc) ??
    null;

  const finalPinned = (d?.pinned ?? p.pinned ?? a.pinned ?? 0);
  const finalHide   = (d?.app_hide ?? p.app_hide ?? a.app_hide ?? 0);

  return {
    ...a,
    app_name: finalName,
    user_app_desc: finalDesc,
    pinned: bit(finalPinned),
    app_hide: bit(finalHide),
  };
});

const visible = showHidden
  ? merged
  : merged.filter(x => bit(x.app_hide) !== 1);

// IMPORTANT: sort a COPY, not in place
const sorted = [...visible].sort((a, b) => {
  const ap = bit(a.pinned);
  const bp = bit(b.pinned);
  if (bp !== ap) return bp - ap;

  const nameCmp = (a.app_name || "").localeCompare(b.app_name || "");
  if (nameCmp !== 0) return nameCmp;

  // tie-breaker for stability
  return (a.id || "").localeCompare(b.id || "");
});

return sorted;