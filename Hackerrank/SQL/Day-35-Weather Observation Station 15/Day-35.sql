Query the Western Longitude (LONG_W) for the
largest Northern Latitude (LAT_N) in STATION that is less than . 
Round your answer to  decimal places.

Input Format

The STATION table is described as follows:
+------------+---------+
| Column Name | Type    |
+------------+---------+
| ID         | int     |
| CITY       | varchar |
| STATE      | varchar |
| LAT_N      | float   |
| LONG_W     | float   |
+------------+---------+

Expected Output:
117.2465

select round(LONG_W,4) from STATION
where LAT_N<137.2345
order by LAT_N DESC
limit 1;

Your Output (stdout)
117.2465
