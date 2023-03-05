// Set a new parameter
LET $now = time::now();
// Create a record with a complex ID using an array
CREATE temperature:['London', $now] SET
	location = 'London',
	date = $now,
	temperature = 23.7
;
// Create a record with a complex ID using an object
CREATE temperature:{ location: 'London', date: $now } SET
	location = 'London',
	date = $now,
	temperature = 23.7
;
