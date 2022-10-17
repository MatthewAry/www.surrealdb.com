DATA="CREATE article SET
	created_at = time::now(),
	author = author:john,
	title = 'Lorem ipsum dolor',
	text = 'Donec eleifend, nunc vitae commodo accumsan, mauris est fringilla.',
	account = (SELECT id FROM account WHERE name = 'ACME Inc' LIMIT 1);"
curl -k -L -s --compressed POST \
	--header "Accept: application/json" \
	--header "NS: test" \
	--header "DB: test" \
	--user "root:root" \
	--data "${DATA}" \
	http://localhost:8000/sql
