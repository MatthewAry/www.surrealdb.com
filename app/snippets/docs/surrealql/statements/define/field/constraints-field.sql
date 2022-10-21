-- Specify a field on the user table
DEFINE FIELD countrycode ON user TYPE string
	-- Ensure country code is ISO-3166
	ASSERT $value != NONE AND $value = /[A-Z]{3}/
	-- Set a default value if empty
	VALUE $value OR 'GBR'
;
