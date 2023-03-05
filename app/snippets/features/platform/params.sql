-- Define a global parameter which will be accessible to all queries.
DEFINE PARAM $STRIPE VALUE "https://api.stripe.com/payments/new";

-- Use the defined global parameter in all queries on the database.
DEFINE EVENT payment ON TABLE order WHEN $event = 'CREATE' THEN http::post($STRIPE, $value);
