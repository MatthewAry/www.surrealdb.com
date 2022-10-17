DATA="INFO FOR DB;"
curl --request POST \
	--header "Accept: application/json" \
	--user "root:root" \
	--data "${DATA}" \
	http://localhost:8000/sql
