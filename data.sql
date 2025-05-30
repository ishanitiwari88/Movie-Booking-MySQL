-- Sample insert
INSERT INTO movies (title, release_year, genre) VALUES
('Interstellar', 2014, 'Sci-Fi'),
('Inception', 2010, 'Thriller'),
('Coco', 2017, 'Animation');

INSERT INTO theaters (name, city) VALUES
('PVR Icon', 'Mumbai'),
('INOX Megaplex', 'Delhi');

INSERT INTO screens (theater_id, screen_number) VALUES
(1, 1), (1, 2), (2, 1);

INSERT INTO shows (movie_id, screen_id, show_time, price) VALUES
(1, 1, '2025-05-26 18:00:00', 300),
(2, 2, '2025-05-26 20:00:00', 350),
(3, 3, '2025-05-26 16:00:00', 250);

INSERT INTO customers (name, email) VALUES
('Sourav', 'sourav@gmail.com'),
('Rahul', 'rahul@gmail.com');

INSERT INTO bookings (show_id, customer_id, number_of_tickets, booking_time) VALUES
(1, 1, 2, NOW()),
(2, 2, 3, NOW());
