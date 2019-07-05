SELECT COUNT(flightID) AS 'total' FROM flights;
SELECT dest, AVG(arrdelay), AVG(depdelay) FROM flights GROUP BY dest;
SELECT origin, colyear, colmonth, AVG(arrdelay) FROM flights GROUP BY origin,colmonth ORDER BY origin, colyear;
SELECT airport, colyear, colmonth, AVG(arrdelay) FROM flights INNER JOIN usairports ON (flights.origin = usairports.IATA) GROUP BY origin,colmonth ORDER BY airport, colyear;
SELECT uniquecarrier, colyear, colmonth, (AVG(arrdelay) + AVG(depdelay))/2 AS avg_delay, cancelled FROM flights GROUP BY colyear, colmonth ORDER BY cancelled DESC ,uniquecarrier;
SELECT tailnum, distance FROM flights GROUP BY tailnum ORDER BY distance DESC LIMIT 10;
SELECT uniquecarrier,  (AVG(arrdelay) + AVG(depdelay))/2 FROM flights  GROUP BY uniquecarrier HAVING((AVG(arrdelay) + AVG(depdelay))/2 >= 10);



