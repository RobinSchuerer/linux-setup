DELETE FROM  advertising
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM  partner
;-- -. . -..- - / . -. - .-. -.--
DELETE from article
;-- -. . -..- - / . -. - .-. -.--
select * from advertising
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version
WHERE version = '14'
;-- -. . -..- - / . -. - .-. -.--
ALTER  TABLE advertising
    RENAME COLUMN advertising_name to title
;-- -. . -..- - / . -. - .-. -.--
ALTER  TABLE advertising
    ADD  COLUMN caption TEXT
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM advertising
;-- -. . -..- - / . -. - .-. -.--
select * from brand
;-- -. . -..- - / . -. - .-. -.--
select * from partner
;-- -. . -..- - / . -. - .-. -.--
SELECT
FROM sector
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM sector
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE sector
  RENAME TO topic
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE topic
  RENAME COLUMN sector_key TO topic_key
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE topic
  RENAME CONSTRAINT sector_url_name_check TO topic_url_name_check
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE partner
  RENAME COLUMN brand_key TO partner_key
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM advertising
;-- -. . -..- - / . -. - .-. -.--
SELECT a.data, a.*
FROM advertising a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  data,
  a.*
FROM advertising a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  data,
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.data,
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.data -> 'partner',
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.data -> 'classifications',
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.data -> 'classification' json,
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.data -> 'classification' -> brands,
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.data -> 'classification' -> 'brands',
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
brands
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.id,
  a.data -> 'classification' -> 'brands',
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.id,
  a.data -> 'classification' -> 'brands' as 'brands',
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.id,
  a.data -> 'classification' -> 'brands' as rands,
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
  a.id,
  a.data -> 'classification' -> 'brands' as brands,
  a.*
FROM article a
;-- -. . -..- - / . -. - .-. -.--
SELECT
    jsonb_set(
        data,
        '{classification, partners123}',
        data -> 'classification' -> 'brands',
        true)
;-- -. . -..- - / . -. - .-. -.--
SELECT
    jsonb_set(
        data,
        '{classification, partners123}',
        data -> 'classification' -> 'brands',
        true)
from article
;-- -. . -..- - / . -. - .-. -.--
select * FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT data -> 'classification' -> 'related_partners'
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT
  data -> 'classification' -> 'related_partners' AS related_partners,
  data -> 'classification' -> brands as brands
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT
  jsonb_object_keys(data -> 'classification')
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT
  distinc jsonb_object_keys(data -> 'classification')
FROM article
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
SET data = jsonb_set(
    data,
    '{classification, related_partners}',
    data -> 'classification' -> 'brands',
    TRUE)
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
SET data = jsonb_set(
    data,
    '{classification, topics}',
    data -> 'classification' -> 'sectors',
    TRUE)
;-- -. . -..- - / . -. - .-. -.--
UPDATE article
SET data = data #- '{classification,brands}' :: TEXT []
;-- -. . -..- - / . -. - .-. -.--
SELECT
  jsonb_object_keys(data -> 'classification') as key,
  count(*)
FROM article
GROUP BY key
;-- -. . -..- - / . -. - .-. -.--
SELECT
    jsonb_set(
     DATA,
   '{classification, related_partners}',
     DATA -> 'fdsgsfd',
     TRUE )
     FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT jsonb_set(
    DATA -> 'classification',
    '{classification, related_partners}',
    DATA -> 'fdsgsfd',
    TRUE)
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT jsonb_set(
    DATA -> 'classification',
    '{classification, related_partners}',
    null,
    TRUE)
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT jsonb_set(
    DATA,
    '{classification, related_partners}',
    DATA -> 'fdsgsfd',
    TRUE)
FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT jsonb_set(
    DATA,
    '{classification, related_partners}',
    coalesce(DATA -> 'fdsgsfd', '[]'),
    TRUE)
FROM article
;-- -. . -..- - / . -. - .-. -.--
DELETE  FROM article
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM article
;-- -. . -..- - / . -. - .-. -.--
delete from schema_version
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (2, '1.1', 'CassandraToPostgresIdMapMigration', 'SPRING_JDBC', 'de.braincode.contentsync.config.dbmigration.V1_1__CassandraToPostgresIdMapMigration', NULL, 'braincode', '2016-03-17 14:52:11.429547', 78, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (24, '18', 'DeleteAdvertisementSections', 'SPRING_JDBC', 'de.braincode.contentsync.db.migration.V18__DeleteAdvertisementSections', NULL, 'braincode', '2017-01-19 10:29:18.597912', 220, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (1, '1', 'init', 'SQL', 'V1__init.sql', 427268682, 'braincode', '2016-03-17 14:48:36.966171', 20, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (3, '2', 'first published', 'SQL', 'V2__first_published.sql', -1981514426, 'braincode', '2016-04-18 12:11:01.278691', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (4, '3', 'article content', 'SQL', 'V3__article_content.sql', 673082483, 'braincode', '2016-07-05 15:21:16.731994', 51, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (5, '4', 'cosy2contentservice', 'SQL', 'V4__cosy2contentservice.sql', -780774262, 'braincode', '2016-07-05 15:21:16.795573', 16, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (6, '5', 'partner sector', 'SQL', 'V5__partner_sector.sql', -1664109312, 'braincode', '2016-07-07 14:18:37.46145', 57, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (7, '6', 'advertising', 'SQL', 'V6__advertising.sql', 1915088879, 'braincode', '2016-07-15 14:46:26.203754', 61, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (8, '7', 'advertising link', 'SQL', 'V7__advertising_link.sql', 189179466, 'braincode', '2016-07-21 08:54:37.419555', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (9, '7.1', 'advertising link type', 'SQL', 'V7_1__advertising_link_type.sql', 1423655402, 'braincode', '2016-07-25 10:42:10.430225', 56, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (10, '8', 'remove sectionsDeprecated', 'SQL', 'V8__remove_sectionsDeprecated.sql', 1889214853, 'braincode', '2016-08-10 14:24:42.355682', 148, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (11, '9', 'article customer segments defaults', 'SQL', 'V9__article_customer_segments_defaults.sql', -1607776171, 'braincode', '2016-08-17 14:33:48.448452', 12, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (12, '10', 'add timeframe', 'SQL', 'V10__add_timeframe.sql', 993715713, 'braincode', '2016-08-31 12:08:55.047045', 16, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (13, '10.1', 'rename timeframe cols', 'SQL', 'V10_1__rename_timeframe_cols.sql', -1569080093, 'braincode', '2016-08-31 12:08:55.082219', 6, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (14, '11', 'preview article', 'SQL', 'V11__preview_article.sql', 1761519567, 'braincode', '2016-10-12 12:35:10.879023', 48, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (15, '12', 'article benefitdata', 'SQL', 'V12__article_benefitdata.sql', -532276301, 'braincode', '2016-11-09 10:26:38.896619', 138, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (16, '13', 'preview benefitdata', 'SQL', 'V13__preview_benefitdata.sql', -1818380001, 'braincode', '2016-11-11 14:53:36.927043', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (17, '14', 'advertising changes', 'SQL', 'V14__advertising_changes.sql', 930371544, 'braincode', '2016-11-25 12:58:21.723973', 20, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (18, '14.1', 'advertising remove name', 'SQL', 'V14_1__advertising_remove_name.sql', 853006737, 'braincode', '2016-11-25 13:37:36.720104', 6, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (19, '15', 'renaming topic partner', 'SQL', 'V15__renaming_topic_partner.sql', 996411075, 'braincode', '2016-12-20 06:23:10.888735', 15, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (20, '15.1', 'renaming json', 'SQL', 'V15_1__renaming_json.sql', -1944339842, 'braincode', '2016-12-20 06:23:10.935417', 276, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (21, '15.2', 'renaming json 2', 'SQL', 'V15_2__renaming_json_2.sql', 1963371778, 'braincode', '2016-12-20 06:23:11.225243', 97, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (22, '16', 'mandatory article', 'SQL', 'V16__mandatory_article.sql', -414778103, 'braincode', '2017-01-11 10:22:17.392207', 25, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (23, '17', 'mandatory notnull', 'SQL', 'V17__mandatory_notnull.sql', 2012468087, 'braincode', '2017-01-19 09:30:42.605089', 21, true)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
DELETE from schema_version WHERE version in ('1.1')