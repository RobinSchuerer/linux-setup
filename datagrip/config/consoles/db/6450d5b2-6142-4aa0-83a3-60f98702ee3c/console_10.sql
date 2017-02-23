DELETE FROM schema_version
WHERE version = '1.2' AND description = 'CassandraToPostgresArticleMigration';

DELETE FROM schema_version
WHERE version = '1.1' AND description = 'CassandraToPostgresUserMigration';
