/*This will find the route with 'route_id' == 1*/
SELECT * FROM routes WHERE route_id=1;

/*searches 'routes' with the 'route_id' between 2 and 6*/
SELECT * FROM routes WHERE route_id BETWEEN 2 AND 6;

/* same as above with 'src_airport' column specifically*/
SELECT src_airport FROM routes WHERE route_id BETWEEN 2 AND 6;

/* same as above but also gets the 'name's from the table too*/
SELECT airports.src_airport, name FROM airports.airports

/*
selects the 'name' and 'airport_id' columns from the 'airports' table as
well as the 'route_id' from the 'routes' table,
then searches the airports and 'routes' tables for the matching
criteria:
    'airports.airport_id' == ''routes'.route_id'
*/
SELECT airports.name, airports.airport_id, routes.route_id
FROM airports JOIN routes ON airports.airport_id = routes.route_id;

SELECT planes.plane_id, planes.name, flights.plane_id
FROM planes JOIN flights ON planes.plane_id = flights.plane_id;

SELECT flights.airline_id, airlines.airline_id, airlines.name
FROM flights JOIN airlines ON flights.airline_id = airlines.airline_id;
