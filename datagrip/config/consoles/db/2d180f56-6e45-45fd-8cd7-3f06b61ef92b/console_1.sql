SELECT *
FROM activity_archive
WHERE payload :: TEXT LIKE '%brand%';