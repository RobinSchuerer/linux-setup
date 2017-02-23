SELECT * FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
drop table lead CASCADE
;-- -. . -..- - / . -. - .-. -.--
drop table image CASCADE
;-- -. . -..- - / . -. - .-. -.--
drop table schema_version CASCADE
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM benefit.
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM benefit.benefit
;-- -. . -..- - / . -. - .-. -.--
delete FROM benefit cascade
;-- -. . -..- - / . -. - .-. -.--
delete FROM benefit
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM benefit
;-- -. . -..- - / . -. - .-. -.--
drop table lead
;-- -. . -..- - / . -. - .-. -.--
drop table benefit CASCADE
;-- -. . -..- - / . -. - .-. -.--
drop table image
;-- -. . -..- - / . -. - .-. -.--
drop table schema_version
;-- -. . -..- - / . -. - .-. -.--
select * from lead
;-- -. . -..- - / . -. - .-. -.--
select name, image from benefit
;-- -. . -..- - / . -. - .-. -.--
select name, image_id from benefit
;-- -. . -..- - / . -. - .-. -.--
select name, image_id from benefit b join media m on b.image_id = b.id
;-- -. . -..- - / . -. - .-. -.--
select * from image
;-- -. . -..- - / . -. - .-. -.--
select name, image_id from benefit b join image i on b.image_id = i.id
;-- -. . -..- - / . -. - .-. -.--
select name, image_id, i.* from benefit b join image i on b.image_id = i.id
;-- -. . -..- - / . -. - .-. -.--
delete * from image
;-- -. . -..- - / . -. - .-. -.--
delete from benefit.
;-- -. . -..- - / . -. - .-. -.--
select * from benefit where id '5fbfc341-cde7-4a80-89fd-0dec365e9412'
;-- -. . -..- - / . -. - .-. -.--
select * from benefit where id ='5fbfc341-cde7-4a80-89fd-0dec365e9412'
;-- -. . -..- - / . -. - .-. -.--
select * from benefit b where b.created_at < '2016-11-11 10:12:12.892000'
;-- -. . -..- - / . -. - .-. -.--
delete form lead
;-- -. . -..- - / . -. - .-. -.--
delete from benefit b where b.created_at < '2016-11-11 10:12:12.892000'
;-- -. . -..- - / . -. - .-. -.--
delete FROM lead
;-- -. . -..- - / . -. - .-. -.--
delete from image
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE article_ref_count (
  id          UUID PRIMARY KEY,
  benefit_id  UUID      NOT NULL REFERENCES benefit (id),
  count       INTEGER,
  created_by  UUID      NOT NULL,
  created_at  TIMESTAMP NOT NULL,
  modified_by UUID,
  modified_at TIMESTAMP)
;-- -. . -..- - / . -. - .-. -.--
drop table article_ref_count
;-- -. . -..- - / . -. - .-. -.--
select * from schema_version
;-- -. . -..- - / . -. - .-. -.--
select * from article_ref_count
;-- -. . -..- - / . -. - .-. -.--
delete from  article_ref_count
;-- -. . -..- - / . -. - .-. -.--
delete from article_ref_count
;-- -. . -..- - / . -. - .-. -.--
delete from lead
;-- -. . -..- - / . -. - .-. -.--
delete from benefit
;-- -. . -..- - / . -. - .-. -.--
select * from benefit
join image on benefit.image_id = image.id
;-- -. . -..- - / . -. - .-. -.--
select benefit.id, image.file_hash 
from benefit
join image on benefit.image_id = image.id
;-- -. . -..- - / . -. - .-. -.--
select benefit.id, image.file_hash, image.file_name
from benefit
join image on benefit.image_id = image.id
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE linked_article (
  id         UUID PRIMARY KEY,
  benefit_id UUID NOT NULL REFERENCES benefit (id),
  article_id UUID NOT NULL
)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM article_ref_count
;-- -. . -..- - / . -. - .-. -.--
SELECT
    uuid_generate_v4(),
    'babf2650-ae1b-4fd9-86d9-e13000da2051',
    'e7c7e711-200e-4e1a-943e-e5022cfc6233'
  WHERE NOT EXISTS(SELECT id
                   FROM linked_article
                   WHERE benefit_id = 'babf2650-ae1b-4fd9-86d9-e13000da2051') AND
        article_id = 'e7c7e711-200e-4e1a-943e-e5022cfc6233'
;-- -. . -..- - / . -. - .-. -.--
CREATE EXTENSION IF NOT EXISTS "uuid-ossp"
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO linked_article (id, benefit_id, article_id)
  SELECT
    uuid_generate_v4(),
    'babf2650-ae1b-4fd9-86d9-e13000da2051',
    'e7c7e711-200e-4e1a-943e-e5022cfc6233'
  WHERE NOT EXISTS(SELECT id
                   FROM linked_article
                   WHERE benefit_id = 'babf2650-ae1b-4fd9-86d9-e13000da2051') AND
        article_id = 'e7c7e711-200e-4e1a-943e-e5022cfc6233'
RETURNING id
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO linked_article (id, benefit_id, article_id)
  SELECT
    uuid_generate_v4(),
    'babf2650-ae1b-4fd9-86d9-e13000da2051',
    'e7c7e711-200e-4e1a-943e-e5022cfc6233'
  WHERE NOT EXISTS(SELECT id
                   FROM linked_article
                   WHERE benefit_id = 'babf2650-ae1b-4fd9-86d9-e13000da2051' AND
                         article_id = 'e7c7e711-200e-4e1a-943e-e5022cfc6233')
RETURNING id
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO linked_article (id, benefit_id, article_id)
  SELECT
    uuid_generate_v4(),
    'babf2650-ae1b-4fd9-86d9-e13000da2051',
    'e7c7e711-200e-4e1a-943e-e5022cfc6233'
  WHERE NOT EXISTS(SELECT id
                   FROM linked_article
                   WHERE benefit_id = 'babf2650-ae1b-4fd9-86d9-e13000da2051' AND
                         article_id = 'e7c7e711-200e-4e1a-943e-e5022cfc6233')
RETURNING id, benefit_id, article_id
;-- -. . -..- - / . -. - .-. -.--
SELECT id, benefit_id, article_id from linked_article
;-- -. . -..- - / . -. - .-. -.--
SELECT count(*) 
FROM linked_article
WHERE benefit_id = asdf AND article_id = asdf
;-- -. . -..- - / . -. - .-. -.--
SELECT count(*)
FROM linked_article
WHERE benefit_id = "asdf" AND article_id = "asdf"
;-- -. . -..- - / . -. - .-. -.--
SELECT count(*)
FROM linked_article
WHERE benefit_id = 'asdf' AND article_id = 'asdf'
;-- -. . -..- - / . -. - .-. -.--
SELECT count(*)
FROM linked_article
WHERE benefit_id = 'e7c7e711-200e-4e1a-943e-e5022cfc6233' AND article_id = 'e7c7e711-200e-4e1a-943e-e5022cfc6233'
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO linked_article (id, benefit_id, article_id)
VALUES ('babf2650-ae1b-4fd9-86d9-e13000da2051', 'babf2650-ae1b-4fd9-86d9-e13000da2051', 'babf2650-ae1b-4fd9-86d9-e13000da2051')
ON CONFLICT DO NOTHING
RETURNING id, benefit_id, article_id
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO linked_article (id, benefit_id, article_id)
VALUES ('babf2650-ae1b-4fd9-86d9-e13000da2051', 'babf2650-ae1b-4fd9-86d9-e13000da2051', 'babf2650-ae1b-4fd9-86d9-e13000da2051')
ON CONFLICT (benefit_id, article_id) DO NOTHING
RETURNING id, benefit_id, article_id
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE linked_article (
  article_id UUID PRIMARY KEY,
  benefit_id UUID NOT NULL REFERENCES benefit (id),
)
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE linked_article (
  article_id UUID PRIMARY KEY,
  benefit_id UUID NOT NULL REFERENCES benefit (id)
)
;-- -. . -..- - / . -. - .-. -.--
SELECT FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
DROP TABLE linked_article
;-- -. . -..- - / . -. - .-. -.--
SELECT * from article_ref_count
;-- -. . -..- - / . -. - .-. -.--
SELECT * from linked_article
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM lead, benefit where lead.benefit_id=benefit.id
;-- -. . -..- - / . -. - .-. -.--
SELECT b.name, l.*
FROM lead l, benefit b
WHERE l.benefit_id = b.id
;-- -. . -..- - / . -. - .-. -.--
SELECT * from schema_version
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version
WHERE version_rank = 10
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE lead
  DROP COLUMN status
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM lead
;-- -. . -..- - / . -. - .-. -.--
SELECT * from spring_session_attributes
;-- -. . -..- - / . -. - .-. -.--
SELECT  * from spring_session
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM lead
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM lead
;-- -. . -..- - / . -. - .-. -.--
select * FROM lead
;-- -. . -..- - / . -. - .-. -.--
select * from benefit.
;-- -. . -..- - / . -. - .-. -.--
select * from benefit
;-- -. . -..- - / . -. - .-. -.--
select * from benefit b join linked_article la on la.benefit_id = b.id
;-- -. . -..- - / . -. - .-. -.--
select b.id from benefit b join linked_article la on la.benefit_id = b.id having count(b.id) = 0
;-- -. . -..- - / . -. - .-. -.--
select b.id from benefit b join linked_article la on la.benefit_id = b.id GROUP BY b.id having count(b.id) = 1
;-- -. . -..- - / . -. - .-. -.--
select b.id from benefit b join linked_article la on la.benefit_id = b.id GROUP BY b.id having count(b.id) = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT b.id
FROM benefit b
  JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT benefit_id b
FROM benefit b
WHERE
;-- -. . -..- - / . -. - .-. -.--
SELECT * from benefit where benefit_id in (
SELECT benefit_id b
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0)
;-- -. . -..- - / . -. - .-. -.--
SELECT * from benefit where id in (
SELECT benefit_id b
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0)
;-- -. . -..- - / . -. - .-. -.--
SELECT benefit_id 
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT b.id, count(b.id) 
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT * from benefit where id in (
SELECT b.id, count(b.id)
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0)
;-- -. . -..- - / . -. - .-. -.--
SELECT b.id
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 1
;-- -. . -..- - / . -. - .-. -.--
SELECT b.id
FROM benefit b
JOIN linked_article la ON la.benefit_id = b.id
GROUP BY b.id
HAVING count(b.id) = 0
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM benefit
WHERE id IN (
  SELECT b.id
  FROM benefit b
    JOIN linked_article la ON la.benefit_id = b.id
  GROUP BY b.id
  HAVING count(b.id) = 0)
;-- -. . -..- - / . -. - .-. -.--
SELECT * from published_benefit
;-- -. . -..- - / . -. - .-. -.--
SELECT * from benefit
;-- -. . -..- - / . -. - .-. -.--
UPDATE benefit
SET
  status = 'PUBLISHED'
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO published_benefit (id, name, type, short_text, long_text, image_id, limbic_type, created_at, customer_segments, topics)
  SELECT
    b.id,
    b.name,
    b.type,
    b.short_text,
    b.long_text,
    b.image_id,
    b.limbic_type,
    b.created_at,
    b.image_id,
    b.limbic_type,
    b.created_at,
    b.customer_segments,
    b.topics
  FROM benefit b
;-- -. . -..- - / . -. - .-. -.--
SELECT
    b.id,
    b.name,
    b.type,
    b.short_text,
    b.long_text,
    b.image_id,
    b.limbic_type,
    b.created_at,
    b.limbic_type,
    b.created_at,
    b.customer_segments,
    b.topics
  FROM benefit b
;-- -. . -..- - / . -. - .-. -.--
SELECT * from "session_user"()
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM spring_session
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM spring_session_attributes
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM benefit
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE benefit
  DROP COLUMN created_by,
  ADD COLUMN created_by_user_name TEXT,
  ADD COLUMN created_by_display_name TEXT
;-- -. . -..- - / . -. - .-. -.--
UPDATE benefit
SET created_by_user_name = 'rhaas', created_by_display_name = 'Reinhard Haas'
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE benefit
  ALTER created_by_user_name SET NOT NULL,
  ALTER created_by_display_name SET NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT available_tp
FROM benefit
;-- -. . -..- - / . -. - .-. -.--
SELECT available_to
FROM benefit
;-- -. . -..- - / . -. - .-. -.--
SELECT available_to::timestamp
FROM benefit