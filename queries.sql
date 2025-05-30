--1. 
SELECT 
    m.title,
    COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN shows s ON b.show_id = s.show_id
JOIN movies m ON s.movie_id = m.movie_id
GROUP BY m.title
ORDER BY total_bookings DESC
LIMIT 5;

--2.
SELECT 
    t.name AS theater_name,
    SUM(b.number_of_tickets * s.price) AS total_revenue
FROM bookings b
JOIN shows s ON b.show_id = s.show_id
JOIN screens sc ON s.screen_id = sc.screen_id
JOIN theaters t ON sc.theater_id = t.theater_id
GROUP BY t.name;

--3.
SELECT 
    HOUR(s.show_time) AS show_hour,
    COUNT(b.booking_id) AS total_bookings
FROM shows s
JOIN bookings b ON s.show_id = b.show_id
GROUP BY HOUR(s.show_time)
ORDER BY total_bookings DESC;

--4.
SELECT 
    c.name,
    SUM(b.number_of_tickets) AS total_tickets
FROM bookings b
JOIN customers c ON b.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_tickets DESC
LIMIT 1;

--5.
SELECT 
    m.title,
    s.show_time,
    RANK() OVER (PARTITION BY m.title ORDER BY s.show_time) AS show_rank
FROM shows s
JOIN movies m ON s.movie_id = m.movie_id;
