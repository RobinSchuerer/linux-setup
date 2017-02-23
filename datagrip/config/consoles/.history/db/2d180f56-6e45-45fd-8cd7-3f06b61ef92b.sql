SELECT * FROM activitylogs.
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activitylogs
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_archive
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'Sector', 'Topic') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'sector', 'topic') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'SECTOR', 'TOPIC') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'Brand', 'Partner') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'brand', 'partner') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'BRAND', 'PARTNER') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'Action', 'Benefit') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'action', 'benefit') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'ACTION', 'BENEFIT') :: JSONB
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM activity_archive
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM activity_archive where payload like '%sector%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_archive
WHERE payload :: TEXT LIKE '%sector%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_archive
WHERE payload :: TEXT LIKE '%action%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM activity_archive
WHERE payload :: TEXT LIKE '%brand%'