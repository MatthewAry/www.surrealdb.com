DATA="CREATE author:john SET
	name.first = 'John',
	name.last = 'Adams',
	name.full = string::join(' ', name.first, name.last),
	age = 29,
	admin = true,
	signup_at = time::now();"
curl -k -L -s --compressed POST \
	--header "Accept: application/json" \
	--header "NS: test" \
	--header "DB: test" \
	--user "root:root" \
	--data "${DATA}" \
	http://localhost:8000/sql
