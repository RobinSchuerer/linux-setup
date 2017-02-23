UPDATE benefit
SET
  status = 'PUBLISHED';

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
    b.limbic_type,
    b.created_at,
    b.customer_segments,
    b.topics
  FROM benefit b;


SELECT *
FROM benefit;
