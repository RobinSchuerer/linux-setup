SELECT article.id, sections
FROM article
WHERE sections :: jsonb @> '[{"type":"compositionV"}]';

SELECT *
FROM article;


UPDATE article
SET sections = jsonb_set(
    sections :: jsonb,
    '{partner}',
    coalesce(sections -> 'brand'),
    false)
WHERE sections :: jsonb @> '[{"type":"compositionV"}]';;

SELECT sections -> 'brand' from article