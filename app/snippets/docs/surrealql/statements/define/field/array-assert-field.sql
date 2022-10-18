DEFINE FIELD resource on acl TYPE record 
  ASSERT $value != NONE;
DEFINE FIELD user ON TABLE acl TYPE record (user)
  ASSERT $value != NONE;

-- A user can have multiple permissions on a acl
DEFINE FIELD permission ON TABLE acl TYPE array
  -- A permission is required so the array must not be empty.
  ASSERT array::len($value) > 0;

-- Assigned permissions are identified by strings
DEFINE FIELD type.* ON TABLE resource TYPE string
  -- Permissions are enumerated in our system. Only these values are allowed.
  ASSERT $value INSIDE ["create", "read", "write", "delete"];