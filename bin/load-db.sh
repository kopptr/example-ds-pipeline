#!/bin/bash

psql $URL <<EOF
DROP TABLE IF EXISTS ticket_prices;

CREATE TABLE ticket_prices (
	event VARCHAR,
	division VARCHAR,
	avg_ticket_price FLOAT
);
\\copy ticket_prices FROM five-thirtyeight-data/nfl-ticket-prices/2014-average-ticket-price.csv WITH (FORMAT csv, HEADER);
EOF
