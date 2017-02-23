SELECT * FROM member_profile.
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM member_profile
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE member_profile
  RENAME COLUMN sectors TO topics
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE member_profile
  RENAME COLUMN action_types TO benefit_types
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE member_profile_history
  RENAME COLUMN sectors TO topics
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE member_profile_history
  RENAME COLUMN action_types TO benefit_types
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE id = 'ca7a5df5-e2c3-41c4-9249-7a93f6668053 '
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE id = 'ca7a5df5-e2c3-41c4-9249-7a93f6668053'
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET data = jsonb_set(
    data,
    '{topics}',
    coalesce(data -> 'sectors', '[]'),
    TRUE)
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload,
    '{topics}',
    coalesce(payload -> 'sectors', '[]'),
    TRUE)
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: jsonb,
    '{topics}',
    coalesce(payload -> 'sectors', '[]'),
    TRUE)
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: jsonb,
    '{topics}',
    coalesce(payload ::jsonb -> 'sectors', '[]'),
    TRUE)
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: jsonb,
    '{topics}',
    coalesce(payload ::jsonb -> 'sectors', '[]'),
    TRUE)
where payload::jsonb <@ '{sectors}'
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: jsonb,
    '{topics}',
    coalesce(payload ::jsonb -> 'sectors', '[]'),
    TRUE)
where payload::jsonb <@ 'sectors'
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: jsonb,
    '{topics}',
    coalesce(payload ::jsonb -> 'sectors', '[]'),
    TRUE)
where payload::jsonb <@ '{"sectors"}'
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: jsonb,
    '{topics}',
    coalesce(payload ::jsonb -> 'sectors', '[]'),
    TRUE)
where payload::jsonb ?'sectors'
;-- -. . -..- - / . -. - .-. -.--
SELECT activity_log
WHERE payload :: JSONB ? 'sectors'
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET payload = jsonb_set(
    payload :: JSONB,
    '{topics}',
    coalesce(payload :: JSONB -> 'sectors', '[]'),
    TRUE)
WHERE payload :: JSONB ? 'sectors'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: JSONB ? 'partners'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: JSONB ? 'topics'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: JSONB ? 'sectors'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: JSONB  -> 'global'? 'allSectors'
;-- -. . -..- - / . -. - .-. -.--
SELECT json_object_keys(payload::jsonb)
FROM activity_log
WHERE payload :: JSONB ? 'topics'
;-- -. . -..- - / . -. - .-. -.--
SELECT jsonb_object_keys(payload::jsonb)
FROM activity_log
WHERE payload :: JSONB ? 'topics'
;-- -. . -..- - / . -. - .-. -.--
SELECT jsonb_object_keys(payload::jsonb) keys, count(*)
FROM activity_log
  GROUP BY keys
;-- -. . -..- - / . -. - .-. -.--
SELECT payload
FROM activity_log
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload LIKE '%BRAND%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: text LIKE '%BRAND%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: text LIKE '%brand%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: text LIKE '%Brand%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: text LIKE '%Sector%'
;-- -. . -..- - / . -. - .-. -.--
SELECT replace(payload, 'Sector', 'Topic')
FROM activity_log
;-- -. . -..- - / . -. - .-. -.--
SELECT replace(payload :: TEXT, 'Sector', 'Topic')
FROM activity_log
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%Page%'
;-- -. . -..- - / . -. - .-. -.--
PAGE
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%PAGE%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%actions%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%null%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%"null%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%"brand%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%"Brand%'
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Sector', 'Topic') :: JSONB
FROM activity_log
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'sector', 'topic')
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Sector', 'Topic') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'sector', 'topic') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'SECTOR', 'TOPIC') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Brand', 'Partner') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'brand', 'partner') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'BRAND', 'PARTNER') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Action', 'Benefit') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'action', 'benefit') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'ACTION', 'BENEFIT') :: JSONB