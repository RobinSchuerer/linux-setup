ALTER TABLE benefit
  DROP COLUMN created_by,
  ADD COLUMN created_by_user_name TEXT,
  ADD COLUMN created_by_display_name TEXT;

UPDATE benefit
SET created_by_user_name = 'rhaas', created_by_display_name = 'Reinhard Haas';

ALTER TABLE benefit
  ALTER created_by_user_name SET NOT NULL,
  ALTER created_by_display_name SET NOT NULL;
