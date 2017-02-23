ALTER TABLE member_profile
  RENAME COLUMN sectors TO topics;

ALTER TABLE member_profile
  RENAME COLUMN action_types TO benefit_types;

ALTER TABLE member_profile_history
  RENAME COLUMN sectors TO topics;

ALTER TABLE member_profile_history
  RENAME COLUMN action_types TO benefit_types;

SELECT *
FROM member_profile;

