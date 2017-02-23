UPDATE activity_log
SET payload = jsonb_set(
    payload :: JSONB,
    '{topics}',
    coalesce(payload :: JSONB -> 'sectors', '[]'),
    TRUE)
WHERE payload :: JSONB ? 'sectors';

UPDATE activity_log
SET payload = jsonb_set(
    payload :: JSONB,
    '{global,allTopics}',
    coalesce(payload :: JSONB -> 'global' -> 'allSectors', '[]'),
    TRUE)
WHERE payload :: JSONB -> 'global' ? 'allSectors';

SELECT *
FROM activity_log
WHERE payload :: JSONB ? 'sectors';

SELECT *
FROM activity_log
WHERE payload :: JSONB -> 'global' ? 'allSectors';

SELECT replace(payload,
               FROM activity_log;

SELECT *
FROM activity_log
WHERE payload :: TEXT LIKE '%"Brand%';

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Sector', 'Topic') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'sector', 'topic') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'SECTOR', 'TOPIC') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Brand', 'Partner') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'brand', 'partner') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'BRAND', 'PARTNER') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'Action', 'Benefit') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'action', 'benefit') :: JSONB;

UPDATE activity_log
SET
  payload = replace(payload :: TEXT, 'ACTION', 'BENEFIT') :: JSONB;

