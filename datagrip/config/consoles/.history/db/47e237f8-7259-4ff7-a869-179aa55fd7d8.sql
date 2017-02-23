SELECT * FROM edition
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM app_user
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM favorite_article
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM fallback_user_content_structure
;-- -. . -..- - / . -. - .-. -.--
SELECT excluded_brands
FROM app_user
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE app_user
  ALTER COLUMN excluded_sectors RENAME TO excluded_topics
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE app_user
  RENAME COLUMN excluded_sectors TO excluded_topics
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE app_user
  RENAME COLUMN excluded_brands TO excluded_partners
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM app_user
;-- -. . -..- - / . -. - .-. -.--
update app_user set email = null where email =''
;-- -. . -..- - / . -. - .-. -.--
UPDATE app_user
SET email = NULL
WHERE email = ''
;-- -. . -..- - / . -. - .-. -.--
select target_user_id, json_array_length(articles) as usc_size from user_content_structure order by 2 asc
;-- -. . -..- - / . -. - .-. -.--
SELECT string_to_array('Robin Schürer', ' ') [0]
;-- -. . -..- - / . -. - .-. -.--
SELECT string_to_array('Robin Schürer', ' ')[0]
;-- -. . -..- - / . -. - .-. -.--
SELECT (string_to_array('Robin Schürer', ' '))[0]
;-- -. . -..- - / . -. - .-. -.--
SELECT (string_to_array('Robin Schürer', ' '))[1]
;-- -. . -..- - / . -. - .-. -.--
SELECT (string_to_array('Robin Schürer', ' '))[2]
;-- -. . -..- - / . -. - .-. -.--
SELECT (string_to_array('Robin Schürer', ' '))[3]
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce ((string_to_array('Robin Schürer', ' '))[3], 'Robin Schürer', ' ')
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce((string_to_array('Robin Schürer', ' ')) [3], 'Robin Schürer', ' '))[1])
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce((string_to_array('Robin Schürer', ' ')) [3], (string_to_array('Robin Schürer', ' ')) [1])
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce((string_to_array('Robin Schürer', ' ')) [5], (string_to_array('Robin Schürer', ' ')) [1])
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce((string_to_array('Robin Schürer', ' ')) [2], (string_to_array('Robin Schürer', ' ')) [1])
;-- -. . -..- - / . -. - .-. -.--
SET * from app_user
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce((string_to_array(u.name, ' ')) [2], (string_to_array(u.name, ' ')) [1]) from app_user u
;-- -. . -..- - / . -. - .-. -.--
SELECT coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1]) from app_user u
;-- -. . -..- - / . -. - .-. -.--
SELECT
  coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1]),
  coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1])
FROM app_user u
;-- -. . -..- - / . -. - .-. -.--
SELECT
  coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1]),
  coalesce((string_to_array(u.name, ' ')) [2], (string_to_array(u.name, ' ')) [1])
FROM app_user u
;-- -. . -..- - / . -. - .-. -.--
UPDATE app_user
SET firstName = subquery.customer, lastName = subquery.address
FROM (SELECT
        id,
        coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1]),
        coalesce((string_to_array(u.name, ' ')) [2], (string_to_array(u.name, ' ')) [1])
      FROM app_user u) AS subquery
WHERE app_user.id = subquery.id
;-- -. . -..- - / . -. - .-. -.--
SELECT
        id,
        coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1]) as fistName,
        coalesce((string_to_array(u.name, ' ')) [2], (string_to_array(u.name, ' ')) [1]) as lastName
      FROM app_user u
;-- -. . -..- - / . -. - .-. -.--
UPDATE app_user
SET firstName = subquery.firstName, lastName = subquery.lastName
FROM (SELECT
        id,
        coalesce((string_to_array(u.name, ' ')) [1], (string_to_array(u.name, ' ')) [1]) as firstName,
        coalesce((string_to_array(u.name, ' ')) [2], (string_to_array(u.name, ' ')) [1]) as lastName
      FROM app_user u) AS subquery
WHERE app_user.id = subquery.id
;-- -. . -..- - / . -. - .-. -.--
select u.first_name, u.last_name, u.name from app_user u
;-- -. . -..- - / . -. - .-. -.--
select * from app_user
;-- -. . -..- - / . -. - .-. -.--
select name,first_name,last_name from app_user
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE app_user
  DROP COLUMN name
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM registering_user
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version VALUES (2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:55:37.158716', 98, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version(version_rank, installed_rank, version, description, type, script, checksum, installed_by, execution_time, success) VALUES (2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:55:37.158716', 98, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version(installed_rank, version, description, type, script, checksum, installed_by, execution_time, success) VALUES (2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:55:37.158716', 98, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, execution_time, success)
VALUES (2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC',
        'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode',
        '2016-03-17 13:55:37.158716', 98, TRUE)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (2, 2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:55:37.158716', 98, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (3, 3, '1.2', 'CassandraToPostgresEditionMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_2__CassandraToPostgresEditionMigration', NULL, 'braincode', '2016-03-17 13:55:37.266293', 7, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (4, 4, '1.3', 'CassandraToPostgresUserContentStructureMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_3__CassandraToPostgresUserContentStructureMigration', NULL, 'braincode', '2016-03-17 14:02:27.335541', 120, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (5, 5, '1.4', 'CassandraToPostgresFallbackUserContentStructureMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_4__CassandraToPostgresFallbackUserContentStructureMigration', NULL, 'braincode', '2016-03-17 14:02:27.466165', 6, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (6, 6, '1.5', 'CassandraToPostgresArticleMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_5__CassandraToPostgresArticleMigration', NULL, 'braincode', '2016-03-17 14:19:41.67945', 183, true)
;-- -. . -..- - / . -. - .-. -.--
delete from schema_version
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (version_rank, installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (2,2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:55:37.158716', 98, true)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM schema_version
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (2, '1.1', 'CassandraToPostgresUserMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_1__CassandraToPostgresUserMigration', NULL, 'braincode', '2016-03-17 13:55:37.158716', 98, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (3, '1.2', 'CassandraToPostgresEditionMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_2__CassandraToPostgresEditionMigration', NULL, 'braincode', '2016-03-17 13:55:37.266293', 7, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (4, '1.3', 'CassandraToPostgresUserContentStructureMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_3__CassandraToPostgresUserContentStructureMigration', NULL, 'braincode', '2016-03-17 14:02:27.335541', 120, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (5, '1.4', 'CassandraToPostgresFallbackUserContentStructureMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_4__CassandraToPostgresFallbackUserContentStructureMigration', NULL, 'braincode', '2016-03-17 14:02:27.466165', 6, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (6, '1.5', 'CassandraToPostgresArticleMigration', 'SPRING_JDBC', 'de.braincode.contentdelivery.config.dbmigration.V1_5__CassandraToPostgresArticleMigration', NULL, 'braincode', '2016-03-17 14:19:41.67945', 183, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (1, '1', 'init', 'SQL', 'V1__init.sql', -972996296, 'braincode', '2016-03-17 13:55:37.060273', 63, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (7, '2', 'user registration timestamp', 'SQL', 'V2__user_registration_timestamp.sql', -1854607711, 'braincode', '2016-04-04 14:25:51.437263', 14, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (8, '2.1', 'user last login', 'SQL', 'V2_1__user_last_login.sql', 2020495056, 'braincode', '2016-04-04 14:25:51.475824', 2, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (9, '2.2', 'user reg payload', 'SQL', 'V2_2__user_reg_payload.sql', 1455989345, 'braincode', '2016-04-04 16:35:00.941107', 8, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (10, '3', 'custom edition page', 'SQL', 'V3__custom_edition_page.sql', -1700598329, 'braincode', '2016-04-11 12:29:18.577845', 43, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (11, '3.1', 'brands and sectors', 'SQL', 'V3_1__brands_and_sectors.sql', -682524888, 'braincode', '2016-04-11 12:29:18.640993', 15, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (12, '3.2', 'brand sector image notnull', 'SQL', 'V3_2__brand_sector_image_notnull.sql', -1812965312, 'braincode', '2016-04-14 07:35:16.335929', 9, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (13, '3.3', 'brand sector key unique', 'SQL', 'V3_3__brand_sector_key_unique.sql', 284025890, 'braincode', '2016-04-14 07:35:16.358888', 21, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (14, '4', 'user lock', 'SQL', 'V4__user_lock.sql', -2006644715, 'braincode', '2016-04-14 12:08:29.305844', 38, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (15, '5.1', 'article brands sectors notnull', 'SQL', 'V5_1__article_brands_sectors_notnull.sql', -1448607151, 'braincode', '2016-04-14 13:58:48.0186', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (16, '5.2', 'preview article brands', 'SQL', 'V5_2__preview_article_brands.sql', 259796605, 'braincode', '2016-04-15 07:41:25.99162', 14, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (17, '6', 'user roles', 'SQL', 'V6__user_roles.sql', -607717457, 'braincode', '2016-04-15 12:29:18.323286', 6, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (18, '7', 'first published at', 'SQL', 'V7__first_published_at.sql', -651420568, 'braincode', '2016-04-18 12:18:51.178018', 13, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (19, '8', 'brand header image', 'SQL', 'V8__brand_header_image.sql', 1926385368, 'braincode', '2016-05-30 15:14:59.382248', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (20, '9', 'user cancellation', 'SQL', 'V9__user_cancellation.sql', -891280418, 'braincode', '2016-06-22 15:18:54.551077', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (21, '9.1', 'user anonymize', 'SQL', 'V9_1__user_anonymize.sql', -505234424, 'braincode', '2016-06-22 15:18:54.57553', 2, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (22, '10', 'partner follow', 'SQL', 'V10__partner_follow.sql', 1605262355, 'braincode', '2016-06-29 14:02:35.816246', 48, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (23, '11', 'brand level', 'SQL', 'V11__brand_level.sql', 96428189, 'braincode', '2016-07-01 08:36:47.767267', 13, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (24, '12', 'drop article', 'SQL', 'V12__drop_article.sql', 451106749, 'braincode', '2016-07-05 15:22:59.866045', 33, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (25, '13', 'remove sponsor', 'SQL', 'V13__remove_sponsor.sql', -1368004806, 'braincode', '2016-07-06 09:27:24.034152', 12, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (26, '14', 'brand about', 'SQL', 'V14__brand_about.sql', 162134630, 'braincode', '2016-07-06 10:31:37.404608', 19, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (27, '15', 'remove brand sector', 'SQL', 'V15__remove_brand_sector.sql', -12156267, 'braincode', '2016-07-07 14:05:03.466107', 17, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (28, '16', 'remove lead formdata', 'SQL', 'V16__remove_lead_formdata.sql', -2083585009, 'braincode', '2016-07-28 09:48:45.685831', 13, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (29, '17', 'profile data from application', 'SQL', 'V17__profile_data_from_application.sql', -1601629397, 'braincode', '2016-07-28 09:48:45.714739', 5, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (30, '18', 'member title', 'SQL', 'V18__member_title.sql', -151865940, 'braincode', '2016-07-28 09:48:45.729163', 2, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (31, '19', 'member address', 'SQL', 'V19__member_address.sql', -926512276, 'braincode', '2016-08-10 15:32:50.324382', 12, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (32, '19.1', 'lead address', 'SQL', 'V19_1__lead_address.sql', 1090878196, 'braincode', '2016-08-12 07:37:22.37218', 13, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (33, '20', 'member segment notnull', 'SQL', 'V20__member_segment_notnull.sql', 1916040920, 'braincode', '2016-08-16 12:54:55.41646', 12, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (34, '21', 'system status', 'SQL', 'V21__system_status.sql', 431308375, 'braincode', '2016-09-28 07:15:24.382015', 40, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (35, '22', 'newsletter unsubscribe', 'SQL', 'V22__newsletter_unsubscribe.sql', -636771723, 'braincode', '2016-09-28 14:27:32.131076', 23, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (36, '23', 'member audit', 'SQL', 'V23__member_audit.sql', -521398894, 'braincode', '2016-09-29 11:25:20.746218', 50, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (37, '24', 'remove age range', 'SQL', 'V24__remove_age_range.sql', -1768935588, 'braincode', '2016-10-11 11:41:25.180096', 15, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (38, '25', 'test member account', 'SQL', 'V25__test_member_account.sql', -306680135, 'braincode', '2016-10-19 14:14:13.313371', 11, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (39, '26', 'rename member prospect', 'SQL', 'V26__rename_member_prospect.sql', -564484209, 'braincode', '2016-10-24 07:00:33.733219', 9, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (40, '27', 'newsletter flag notnull', 'SQL', 'V27__newsletter_flag_notnull.sql', 433586386, 'braincode', '2016-11-04 12:06:32.531454', 11, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (41, '28', 'drop lead table', 'SQL', 'V28__drop_lead_table.sql', -1189211877, 'braincode', '2016-11-11 14:21:41.182137', 17, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (42, '29', 'registered at initvalue', 'SQL', 'V29__registered_at_initvalue.sql', -410515057, 'braincode', '2016-11-18 15:57:24.951704', 22, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (43, '30', 'renaming', 'SQL', 'V30__renaming.sql', -1783830479, 'braincode', '2016-12-20 06:26:09.48455', 12, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (44, '31', 'spring session', 'SQL', 'V31__spring_session.sql', -1832703519, 'braincode', '2017-01-03 08:33:47.062121', 63, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (45, '32', 'empty string to null', 'SQL', 'V32__empty_string_to_null.sql', 1342419070, 'braincode', '2017-01-04 12:46:15.097406', 10, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (46, '33', 'ucs log', 'SQL', 'V33__ucs_log.sql', 1277847580, 'braincode', '2017-01-19 11:44:33.734204', 72, true)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO schema_version (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) VALUES (47, '34', 'member lastname', 'SQL', 'V34__member_lastname.sql', 1198966492, 'braincode', '2017-02-06 14:56:05.06024', 19, true)
;-- -. . -..- - / . -. - .-. -.--
select * from schema_version
;-- -. . -..- - / . -. - .-. -.--
SELECT * from schema_version
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM schema_version where version in ('1.1', '1.2', '1.3', '1.4', '1.5')
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM registering_user
;-- -. . -..- - / . -. - .-. -.--
SELECT * from registering_user
;-- -. . -..- - / . -. - .-. -.--
registering_user
;-- -. . -..- - / . -. - .-. -.--
SELECT * from app_user
;-- -. . -..- - / . -. - .-. -.--
SELECT * from partner_follow