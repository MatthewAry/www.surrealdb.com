-- Set a field to have the string data type
DEFINE FIELD email ON TABLE user TYPE string;

-- Set a field to have the datetime data type
DEFINE FIELD created ON TABLE user TYPE datetime;

-- Set a field to have the object data type
DEFINE FIELD metadata ON TABLE user TYPE object;

-- Set a field to have the bool data type
DEFINE FIELD locked ON TABLE user TYPE bool;

