CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    release_year INT,
    genre VARCHAR(50)
);

CREATE TABLE theaters (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE screens (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_id INT,
    screen_number INT,
    FOREIGN KEY (theater_id) REFERENCES theaters(theater_id)
);

CREATE TABLE shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    screen_id INT,
    show_time DATETIME,
    price DECIMAL(6,2),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (screen_id) REFERENCES screens(screen_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    show_id INT,
    customer_id INT,
    number_of_tickets INT,
    booking_time DATETIME,
    FOREIGN KEY (show_id) REFERENCES shows(show_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
