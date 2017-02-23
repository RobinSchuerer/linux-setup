drop TABLE CASCADE article
;-- -. . -..- - / . -. - .-. -.--
drop CASCADE TABLE article;
;-- -. . -..- - / . -. - .-. -.--
select name as "Article Name", action_type, action_text, action_text_more, images->'ACTION_IMAGE_MORE' from article

drop TABLE article
;-- -. . -..- - / . -. - .-. -.--
drop TABLE article
;-- -. . -..- - / . -. - .-. -.--
drop TABLE article CASCADE
;-- -. . -..- - / . -. - .-. -.--
drop schema 'content_management'
;-- -. . -..- - / . -. - .-. -.--
drop schema content_management
;-- -. . -..- - / . -. - .-. -.--
select 'drop table "' || tablename || '" cascade;' from pg_tables
;-- -. . -..- - / . -. - .-. -.--
DROP SCHEMA public CASCADE
;-- -. . -..- - / . -. - .-. -.--
CREATE SCHEMA public
;-- -. . -..- - / . -. - .-. -.--
GRANT ALL ON SCHEMA public TO postgres
;-- -. . -..- - / . -. - .-. -.--
GRANT ALL ON SCHEMA public TO public
;-- -. . -..- - / . -. - .-. -.--
COMMENT ON SCHEMA public IS 'standard public schema'
;-- -. . -..- - / . -. - .-. -.--
GRANT ALL ON SCHEMA public TO braincode
;-- -. . -..- - / . -. - .-. -.--
select name as "Article Name", action_type, action_text, action_text_more, images->'ACTION_IMAGE_MORE' from article
;-- -. . -..- - / . -. - .-. -.--
select name as "Article Name", action_type, action_text, action_text_more, images 'ACTION_IMAGE_MORE' from article
;-- -. . -..- - / . -. - .-. -.--
select name as "Article Name", action_type, action_text, action_text_more, images as 'ACTION_IMAGE_MORE' from article
;-- -. . -..- - / . -. - .-. -.--
select name as "Article Name", action_type, action_text, action_text_more, images as "ACTION_IMAGE_MORE" from article
;-- -. . -..- - / . -. - .-. -.--
SELECT name as "Article Name", action_type, action_text, action_text_more, images "ACTION_IMAGE_MORE" FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT name,  action_type, action_text, action_text_more, images "ACTION_IMAGE_MORE" FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT name,  action_type, action_text, action_text_more, images FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT name,  action_type, action_text, action_text_more, images 
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT id, name,  action_type, action_text, action_text_more, images, benefitId
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT benefit_id from article
;-- -. . -..- - / . -. - .-. -.--
SELECT sectors from article
;-- -. . -..- - / . -. - .-. -.--
SELECT id, name,  action_type, action_text, action_text_more, images, 
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT id, name,  action_type, action_text, action_text_more, images
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT id, name,  action_type, action_text, action_text_more, images, sectors
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT id, name,  action_type, action_text, action_text_more, images, sectors, limbic_type
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT id, name,  action_type, action_text, action_text_more, images, sectors, limbic_type, customer_segments
FROM article
WHERE action_type IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
select * from media
;-- -. . -..- - / . -. - .-. -.--
select * from image
;-- -. . -..- - / . -. - .-. -.--
DELETE  from article
;-- -. . -..- - / . -. - .-. -.--
select images -> 'ACTION_IMAGE_MORE' from article
;-- -. . -..- - / . -. - .-. -.--
select images, article.images -> 'ACTION_IMAGE_MORE' from article
;-- -. . -..- - / . -. - .-. -.--
select images, article.images -> 'ACTION_IMAGE_MORE'::UUID from article
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->  'ACTION_IMAGE_MORE')::UUID from article
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->  'ACTION_IMAGE_MORE')::TEXT::UUID from article
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->  'ACTION_IMAGE_MORE')::text::uuid from article
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->  'ACTION_IMAGE_MORE')::json::uuid from article
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->  'ACTION_IMAGE_MORE')::json::text::uuid from article
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->>  'ACTION_IMAGE_MORE')::json::text::uuid from article
;-- -. . -..- - / . -. - .-. -.--
SELECT data::text::json AS before,
       ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS after
FROM (VALUES ('{"attrA":1,"attrB":true,"attrC":["a","b","c"]}'::json)) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'attrB') AS l
GROUP BY data::text
;-- -. . -..- - / . -. - .-. -.--
SELECT data::text::json AS before,
       ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS after
FROM (SELECT images from article) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'attrB') AS l
GROUP BY data::text
;-- -. . -..- - / . -. - .-. -.--
SELECT data::text::json AS before,
       ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS after
FROM (SELECT images from article) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'ACTION_IMAGE_MORE') AS l
GROUP BY data::text
;-- -. . -..- - / . -. - .-. -.--
SELECT ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS after
FROM (SELECT images from article) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'ACTION_IMAGE_MORE') AS l
GROUP BY data::text
;-- -. . -..- - / . -. - .-. -.--
SELECT ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS after
FROM (SELECT images from article) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'ACTION_IMAGE_MORE') AS l
;-- -. . -..- - / . -. - .-. -.--
select (select images, (article.images ->>  'ACTION_IMAGE_MORE')::uuid from article)
;-- -. . -..- - / . -. - .-. -.--
select (select (article.images ->>  'ACTION_IMAGE_MORE')::uuid from article)
;-- -. . -..- - / . -. - .-. -.--
select (select (article.images ->>  'ACTION_IMAGE_MORE')::uuid from article),
  (SELECT ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS new_image
FROM (SELECT images from article) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'ACTION_IMAGE_MORE') AS l
GROUP BY data::text)
;-- -. . -..- - / . -. - .-. -.--
select images, (article.images ->>  'ACTION_IMAGE_MORE')::uuid from article
;-- -. . -..- - / . -. - .-. -.--
SELECT ('{' || array_to_string(array_agg(to_json(l.key) || ':' || l.value), ',') || '}')::json AS new_image
FROM (SELECT images from article) AS v(data),
LATERAL (SELECT * FROM json_each(data) WHERE "key" <> 'ACTION_IMAGE_MORE') AS l
GROUP BY data::text
;-- -. . -..- - / . -. - .-. -.--
select (article.images ->>  'ACTION_IMAGE_MORE')::uuid from article
;-- -. . -..- - / . -. - .-. -.--
select (article.images ->>  'ACTION_IMAGE_MORE')::uuid, article.images::jsonb - 'ACTION_IMAGE_MORE' from article
;-- -. . -..- - / . -. - .-. -.--
select (article.images ->>  'ACTION_IMAGE_MORE')::uuid
FROM article
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
  SET images = 
  (select (article.images ->>  'ACTION_IMAGE_MORE')::uuid, article.images::jsonb - 'ACTION_IMAGE_MORE' from article)
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
  SET images = (article.images ->>  'ACTION_IMAGE_MORE')::uuid, article.images::jsonb - 'ACTION_IMAGE_MORE'
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO article
(backup_action_image_more)
select (article.images ->>  'ACTION_IMAGE_MORE')::uuid
FROM article
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
backup_action_image_more = (article.images ->>  'ACTION_IMAGE_MORE')::uuid
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE article RENAME COLUMN action_type TO backup_action_type
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE article RENAME COLUMN action_text TO backup_action_text
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE article RENAME COLUMN action_text_more TO backup_action_text_more
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE article ADD COLUMN backup_action_image_more text
;-- -. . -..- - / . -. - .-. -.--
select images, backup_action_image_more from article
;-- -. . -..- - / . -. - .-. -.--
delete from article
;-- -. . -..- - / . -. - .-. -.--
select * from article where benefit_id is null
;-- -. . -..- - / . -. - .-. -.--
SELECT back from article
;-- -. . -..- - / . -. - .-. -.--
SELECT backup_action_text from article
;-- -. . -..- - / . -. - .-. -.--
SELECT backup_action from article
;-- -. . -..- - / . -. - .-. -.--
SELECT backup_action_type from article
;-- -. . -..- - / . -. - .-. -.--
SELECT images from article
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
  SET backup_action_image_more = (article.images ->>  'ACTION_IMAGE_MORE')::uuid
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
  SET images = article.images::jsonb - 'ACTION_IMAGE_MORE'
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
  SET 
    backup_action_type = 'CONNECT',
    backup_action_text = 'TEST',
    backup_action_text_more = 'TEST more'
;-- -. . -..- - / . -. - .-. -.--
UPDATE article set benefit_id = null
;-- -. . -..- - / . -. - .-. -.--
select * from bene
;-- -. . -..- - / . -. - .-. -.--
update article set benefit_id = null
;-- -. . -..- - / . -. - .-. -.--
select * from article
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE advertising
    RENAME COLUMN title to name
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE advertising
    DROP COLUMN caption
;-- -. . -..- - / . -. - .-. -.--
select * from advertising
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version
WHERE version = 17
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version
WHERE version = '17'
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE advertising
    RENAME COLUMN advertising_name to title
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE advertising
  ADD COLUMN caption TEXT
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM  advertising
;-- -. . -..- - / . -. - .-. -.--
SELECT advertisings
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT
  jsonb_object_keys(article.sections -> 'classification') as key,
  count(*)
FROM article
GROUP BY key
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE topic RENAME CONSTRAINT  sector_url_name_check TO topic_url_name_check
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
delete from schema_version where version_rank = 31
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE topic RENAME to sector
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE sector
    RENAME COLUMN topic_key to sector_key
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE sector RENAME CONSTRAINT  topic_url_name_check TO sector_url_name_check
;-- -. . -..- - / . -. - .-. -.--
SELECT sections

FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT sections -> 'type'
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections @> '[{"type": "compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections ::jsonb
FROM article
WHERE sections @> '[{"type": "compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections :: jsonb @> '[{"type": "compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections :: jsonb @> '{"type": "compositionV"}'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections -> 'type' = 'compositionV'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections --> 'type' = 'compositionV';


where data @> '[{"id": "1884595530"}]' or data @> '[{"id": "791712670"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections ->> 'type' = 'compositionV'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections ->> 'type' ? 'compositionV'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections from article
;-- -. . -..- - / . -. - .-. -.--
SELECT sections :: jsonb @> '[{"type":"compositionV"}]'
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
SET sections = jsonb_set(
    sections,
    '{partner}',
    coalesce(sections -> 'brand'),
    false)
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
SET sections = jsonb_set(
    sections :: jsonb,
    '{partner}',
    coalesce(sections -> 'brand'),
    false)
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT sections -> 'brand' from article
;-- -. . -..- - / . -. - .-. -.--
SELECT sections
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, section
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, jsonb_pretty(sections)
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, json_pretty(sections)
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, json_pretty(sections::jsonb)
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, json_pretty(sections::text)
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, json_pretty(sections-->'type')
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT article.id, sections
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM article
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE article
  ADD COLUMN mandatory BOOLEAN
;-- -. . -..- - / . -. - .-. -.--
SELECT * from article
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT * from app_user
;-- -. . -..- - / . -. - .-. -.--
UPDATE app_user
SET email = 'deleted_' || email
;-- -. . -..- - / . -. - .-. -.--
UPDATE app_user
SET email = 'deleted_' || email
WHERE deleted
;-- -. . -..- - / . -. - .-. -.--
UPDATE app_user SET deleted = FALSE, email = 'admin@braincode.de' where id = 'bdab305d-5336-4924-87da-174cd8598e7d'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM app_user
;-- -. . -..- - / . -. - .-. -.--
SELECT  * FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT  backup_action_image_more FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT  backup_action_image_more, backup_sections  FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT
  backup_action_image_more,
  backup_sections
FROM article
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE article
  DROP COLUMN backup_action_image_more,
  DROP COLUMN backup_sections
;-- -. . -..- - / . -. - .-. -.--
select * from schema_version
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (3, '1.2', 'CassandraToPostgresArticleMigration', 'SPRING_JDBC', 'de.braincode.contentmanagement.config.dbmigration.V1_2__CassandraToPostgresArticleMigration', NULL, 'braincode', '2016-03-17 13:31:45.080271', 365, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (29, '15', 'Migrate Section TextWithQuote', 'SPRING_JDBC', 'de.braincode.contentmanagement.db.migration.V15__Migrate_Section_TextWithQuote', NULL, 'braincode', '2016-09-28 14:46:26.132979', 804, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (38, '21', 'Migrate Widgets to Section', 'SPRING_JDBC', 'de.braincode.contentmanagement.db.migration.V21__Migrate_Widgets_to_Section', NULL, 'braincode', '2017-01-04 12:09:58.240637', 870, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (39, '22', 'Migrate SectionType', 'SPRING_JDBC', 'de.braincode.contentmanagement.db.migration.V22__Migrate_SectionType', NULL, 'braincode', '2017-01-04 12:09:59.130565', 357, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (1, '1', 'init', 'SQL', 'V1__init.sql', 1105265262, 'braincode', '2016-03-17 13:31:44.922818', 24, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (4, '2', 'add published at', 'SQL', 'V2__add_published_at.sql', 680463154, 'braincode', '2016-03-21 12:15:45.322865', 13, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (5, '2.1', 'populate published at', 'SQL', 'V2_1__populate_published_at.sql', 1129564796, 'braincode', '2016-03-21 12:35:13.236551', 7, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (6, '3', 'image brands sectors', 'SQL', 'V3__image_brands_sectors.sql', 742673270, 'braincode', '2016-04-06 14:29:57.879922', 91, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (7, '3.1', 'change column names', 'SQL', 'V3_1__change_column_names.sql', 1032637647, 'braincode', '2016-04-06 16:55:26.314334', 23, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (8, '3.2', 'remove dangling image', 'SQL', 'V3_2__remove_dangling_image.sql', 332886740, 'braincode', '2016-04-07 11:06:45.927011', 20, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (9, '3.3', 'change column names', 'SQL', 'V3_3__change_column_names.sql', 793500248, 'braincode', '2016-04-07 14:05:08.443', 19, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (10, '3.4', 'change column names', 'SQL', 'V3_4__change_column_names.sql', -2028166336, 'braincode', '2016-04-08 08:52:38.098289', 11, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (11, '3.5', 'add brands to article', 'SQL', 'V3_5__add_brands_to_article.sql', -2104255891, 'braincode', '2016-04-08 15:13:00.972916', 8, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (12, '3.6', 'brands sectors notnull', 'SQL', 'V3_6__brands_sectors_notnull.sql', -1558186807, 'braincode', '2016-04-15 12:25:42.299977', 19, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (13, '3.7', 'brands header image', 'SQL', 'V3_7__brands_header_image.sql', -1024517966, 'braincode', '2016-05-30 14:57:59.37419', 22, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (14, '4', 'brand level', 'SQL', 'V4__brand_level.sql', -1428901899, 'braincode', '2016-06-29 13:29:46.201611', 25, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (15, '5', 'brand about', 'SQL', 'V5__brand_about.sql', 162134630, 'braincode', '2016-07-04 12:34:14.500297', 14, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (16, '6', 'partner user acls', 'SQL', 'V6__partner_user_acls.sql', -1232173611, 'braincode', '2016-07-12 07:01:22.679652', 37, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (17, '7', 'advertising', 'SQL', 'V7__advertising.sql', -578865782, 'braincode', '2016-07-14 09:09:54.916393', 51, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (18, '7.1', 'article advertisings', 'SQL', 'V7_1__article_advertisings.sql', -1032330886, 'braincode', '2016-07-19 12:43:45.636711', 11, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (19, '7.2', 'article advertisings notnull', 'SQL', 'V7_2__article_advertisings_notnull.sql', -1434116808, 'braincode', '2016-07-19 15:12:49.448369', 20, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (20, '7.3', 'advertising delete article', 'SQL', 'V7_3__advertising_delete_article.sql', -1699817993, 'braincode', '2016-07-26 07:50:39.184254', 29, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (21, '8', 'sponsored', 'SQL', 'V8__sponsored.sql', 981022745, 'braincode', '2016-07-28 09:32:39.947709', 41, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (22, '9', 'logo', 'SQL', 'V9__logo.sql', -2034036719, 'braincode', '2016-07-29 14:17:52.161952', 47, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (23, '10', 'advertising json', 'SQL', 'V10__advertising_json.sql', 405690440, 'braincode', '2016-08-02 13:42:41.585042', 72, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (24, '11', 'customer segment', 'SQL', 'V11__customer_segment.sql', -955856454, 'braincode', '2016-08-16 14:15:09.019053', 41, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (25, '12', 'customer segment default', 'SQL', 'V12__customer_segment_default.sql', -343710080, 'braincode', '2016-08-17 14:35:03.844307', 30, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (26, '13', 'add timeframe', 'SQL', 'V13__add_timeframe.sql', 993715713, 'braincode', '2016-08-31 07:22:52.921743', 25, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (27, '13.1', 'rename timeframe cols', 'SQL', 'V13_1__rename_timeframe_cols.sql', -1569080093, 'braincode', '2016-08-31 13:59:31.882683', 7, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (28, '14', 'system status', 'SQL', 'V14__system_status.sql', 431308375, 'braincode', '2016-09-27 11:20:30.871407', 56, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (30, '16', 'add benefit', 'SQL', 'V16__add_benefit.sql', -1249283436, 'braincode', '2016-11-09 10:28:27.958529', 15, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (31, '16.1', 'rename benefit columns', 'SQL', 'V16_1__rename_benefit_columns.sql', 471273461, 'braincode', '2016-11-14 08:31:55.517792', 39, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (32, '17', 'rework advertisings', 'SQL', 'V17__rework_advertisings.sql', -1423699945, 'braincode', '2016-11-25 13:11:51.973668', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (33, '18', 'renaming topic', 'SQL', 'V18__renaming_topic.sql', 911228671, 'braincode', '2016-12-20 06:28:28.765458', 26, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (34, '18.1', 'renaming brand', 'SQL', 'V18_1__renaming_brand.sql', 731316876, 'braincode', '2016-12-20 06:28:28.806776', 12, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (35, '18.2', 'renaming article partners', 'SQL', 'V18_2__renaming_article_partners.sql', -402835198, 'braincode', '2016-12-20 06:28:28.828734', 16, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (36, '19', 'drop action backup columns', 'SQL', 'V19__drop_action_backup_columns.sql', 791201721, 'braincode', '2017-01-03 08:34:27.027966', 29, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (37, '20', 'sections backup', 'SQL', 'V20__sections_backup.sql', -364017151, 'braincode', '2017-01-04 12:09:58.13062', 73, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (40, '23', 'mandatory articles', 'SQL', 'V23__mandatory_articles.sql', -414778103, 'braincode', '2017-01-11 09:41:07.772476', 19, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (41, '24', 'deleted user emails', 'SQL', 'V24__deleted_user_emails.sql', 666424210, 'braincode', '2017-01-13 08:07:59.959096', 9, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (42, '25', 'mandatory notnull', 'SQL', 'V25__mandatory_notnull.sql', 2012468087, 'braincode', '2017-01-19 09:19:50.046076', 56, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (43, '26', 'cleanup unused columns', 'SQL', 'V26__cleanup_unused_columns.sql', 686965424, 'braincode', '2017-02-08 08:22:53.772543', 25, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentmanagement.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:31:44.989846', 80, true)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM schema_version