SELECT
  jsonb_object_keys(article.sections -> 'classification') as key,
  count(*)
FROM article
GROUP BY key;
