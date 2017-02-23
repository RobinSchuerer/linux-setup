UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'Sector', 'Topic') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'sector', 'topic') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'SECTOR', 'TOPIC') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'Brand', 'Partner') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'brand', 'partner') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'BRAND', 'PARTNER') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'Action', 'Benefit') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'action', 'benefit') :: JSONB;

UPDATE activity_archive
SET
  payload = replace(payload :: TEXT, 'ACTION', 'BENEFIT') :: JSONB;