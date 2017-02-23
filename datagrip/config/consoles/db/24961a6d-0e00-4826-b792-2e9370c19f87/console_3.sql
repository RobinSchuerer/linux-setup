UPDATE article
SET data = jsonb_set(
    data,
    '{classification, related_partners}',
    coalesce(data -> 'classification' -> 'brands', '[]'),
    TRUE);

UPDATE article
SET data = jsonb_set(
    data,
    '{classification, topics}',
    coalesce(data -> 'classification' -> 'sectors', '[]'),
    TRUE);

UPDATE article
SET data = data #- '{classification,brands}' :: TEXT [];

UPDATE article
SET data = data #- '{classification,topics}' :: TEXT [];