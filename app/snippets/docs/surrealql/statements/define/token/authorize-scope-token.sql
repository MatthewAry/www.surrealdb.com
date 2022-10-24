-- Specify the namespace for the token
USE NS abcum DB app_vitalsense;

-- Define the scope
DEFINE SCOPE account;

-- Set the name of the token
DEFINE TOKEN token_name
  -- Use this OAuth provider for scope authorization
  ON SCOPE account
  -- Specify the cryptographic signature algorithm used to sign the token
  TYPE HS512
  -- Specify the public key so we can verify the authenticity of the token
  VALUE "sNSYneezcr8kqphfOC6NwwraUHJCVAt0XjsRSNmssBaBRh3WyMa9TRfq8ST7fsU2H2kGiOpU4GbAF1bCiXmM1b3JGgleBzz7rsrz6VvYEM4q3CLkcO8CMBIlhwhzWmy8"
;