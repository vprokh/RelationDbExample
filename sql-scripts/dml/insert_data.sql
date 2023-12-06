INSERT INTO address (display_address, post_code, city, street, created_at)
VALUES ('123 Main St', 'ABC123', 'New York', 'Main Street', '2023-11-30 08:00:00'),
       ('456 Elm St', 'DEF456', 'Los Angeles', 'Elm Street', '2023-11-29 15:30:00'),
       ('789 Oak St', 'GHI789', 'Chicago', 'Oak Avenue', '2023-11-28 12:45:00');

INSERT INTO users (name, last_name, email, phone_number, password, role, address_id)
VALUES
    ('John', 'Doe', 'john@example.com', '123456789', 'password123', 'admin', 1),
    ('Jane', 'Smith', 'jane@example.com', '987654321', 'qwerty456', 'user', 2),
    ('Alice', 'Johnson', 'alice@example.com', '555123456', 'pass1234', 'user', 3);

INSERT INTO orders (user_id, status, created_at)
VALUES
    (1, 'pending', '2023-11-30 10:00:00'),
    (2, 'processing', '2023-11-30 11:15:00'),
    (3, 'shipped', '2023-11-30 12:30:00'),
    (1, 'delivered', '2023-11-29 09:45:00'),
    (2, 'pending', '2023-11-29 08:30:00'),
    (3, 'processing', '2023-11-29 14:00:00'),
    (1, 'shipped', '2023-11-28 16:20:00'),
    (2, 'delivered', '2023-11-28 13:00:00'),
    (3, 'pending', '2023-11-27 11:30:00'),
    (1, 'processing', '2023-11-27 09:00:00'),
    (2, 'shipped', '2023-11-26 10:45:00'),
    (3, 'delivered', '2023-11-26 08:15:00'),
    (1, 'pending', '2023-11-25 07:00:00'),
    (2, 'processing', '2023-11-25 15:30:00'),
    (3, 'shipped', '2023-11-25 12:00:00');

INSERT INTO category (name, average_price, enabled)
VALUES
    ('Electronics', 500.00, true),
    ('Clothing', 75.50, true),
    ('Books', 20.00, true),
    ('Home Decor', 150.75, true),
    ('Sports', 120.25, false),
    ('Beauty', NULL, true),
    ('Toys', 40.50, true);

INSERT INTO product (category_id, title, description, price)
VALUES
    (1, 'Smartphone', 'High-performance smartphone with great features', 699.99),
    (2, 'T-Shirt', 'Cotton T-shirt with a trendy design', 19.99),
    (3, 'Book: The Great Gatsby', 'Classic novel by F. Scott Fitzgerald', 12.50),
    (4, 'Decorative Vase', 'Elegant ceramic vase for home decor', 39.99),
    (5, 'Football', 'Official size and weight football', 29.99),
    (1, 'Laptop', 'Powerful laptop for work and entertainment', 1299.99),
    (2, 'Jeans', 'Classic denim jeans for everyday wear', 49.99),
    (4, 'Wall Clock', 'Modern wall clock for your living room', 24.99),
    (5, 'Basketball', 'Indoor/outdoor basketball for recreational play', 19.99),
    (1, 'Headphones', 'Wireless headphones with noise cancellation', 149.99),
    (2, 'Dress', 'Elegant evening dress for special occasions', 79.99),
    (3, 'Book: 1984', 'Dystopian novel by George Orwell', 9.99),
    (4, 'Cushion Cover', 'Decorative cushion cover for sofas', 14.99),
    (5, 'Tennis Racket', 'Professional tennis racket for advanced players', 129.99),
    (1, 'Tablet', 'Portable tablet with a high-resolution display', 399.99),
    (2, 'Jacket', 'Winter jacket for cold weather', 89.99),
    (3, 'Book: The Catcher in the Rye', 'Classic novel by J.D. Salinger', 11.99),
    (4, 'Picture Frame', 'Wooden picture frame for photos', 19.99),
    (5, 'Golf Clubs Set', 'Complete set of golf clubs for beginners', 299.99);


INSERT INTO order_product (order_id, product_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6),
    (4, 7),
    (4, 8),
    (5, 9),
    (5, 10),
    (6, 11),
    (6, 12),
    (7, 13),
    (7, 14);