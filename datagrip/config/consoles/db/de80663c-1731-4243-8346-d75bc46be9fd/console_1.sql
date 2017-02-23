SELECT *
FROM schema_version;


DELETE FROM schema_version
WHERE version_rank = 10;

ALTER TABLE lead
  DROP COLUMN status;
