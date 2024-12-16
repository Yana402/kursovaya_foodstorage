\c fast_food_restaurant_database;

INSERT INTO users (phone, first_name, last_name, email)
VALUES
    ('375441234567', 'Anton', 'Antonov', 'anton@mail.ru'),
    ('375293311331', 'Alexey', 'Alexeev', 'lesha@gmail.com'),
    ('375447777777', 'Big', 'Smoke', 'grovestreetforever@hotmail.us'),
    ('375336677889', 'Danila', 'Danilov', 'krutoyperec@gmail.com'),
    ('375152233445', 'Trol', 'Trolev', 'anonim@anonim.ru'),
    ('375257654321', 'Admin', 'Adminushka', 'admin@fastfood.com');


INSERT INTO user_credentials (phone, password, role, active)
VALUES
    ('375441234567', '$2a$10$Hb/cqHNmN60ed02PrCv1yuRQiVTVxiVj5qVdGxgTQVJ/sDdWLr6w6', 'CUSTOMER', true),
    ('375293311331', '$2a$10$2jfftyn3FNUILpDST1Wp6.R4eq9wKS5LKWzUG12qYdZMP7vObzv8m', 'CUSTOMER', true),
    ('375447777777', '$2a$10$zjyZt0c1HLQQhFtxIuEu7u0uUubGy2xCKw6gUcJzJ3GDmKb7MDjJy', 'CUSTOMER', true),
    ('375336677889', '$2a$10$co6ooEu1IDoV6Pato7zJKuEZKLIQ8Y0NwJQakqtrAxkcCPvr1pz5O', 'CUSTOMER', true),
    ('375152233445', '$2a$10$b54F7mkpXW.YBYi6wbBaveNnU3YRmfnfnTvBR4smQcO2IwBgpKbQO', 'CUSTOMER', false),
    ('375257654321', '$2a$10$co6ooEu1IDoV6Pato7zJKuEZKLIQ8Y0NwJQakqtrAxkcCPvr1pz5O', 'ADMIN', true);

INSERT INTO categories (id, name)
VALUES
    (1, 'Burgers'),
    (2, 'Pizza'),
    (3, 'Sandwiches'),
    (4, 'Hot Dogs'),
    (5, 'Nuggets'),
    (6, 'Tacos'),
    (7, 'Fries'),
    (8, 'Salads'),
    (9, 'Desserts'),
    (10, 'Beverages');

ALTER SEQUENCE categories_id_seq RESTART WITH 11;

INSERT INTO products (id, name, price, weight, image_url, description, category_id)
VALUES
    (1, 'Cheeseburger', 5.99, 250, 'https://lh3.google.com/u/0/d/1O9jCHy1mhfEJ01j8E2yraGBO-Bd3yCNM', 'A classic cheeseburger with cheese and toppings.', 1),
    (2, 'Veggie Burger', 6.49, 200, 'https://lh3.google.com/u/0/d/1U1cAFcsFgmh4U3coBtLLFt_pcJ5YOiSX', 'A delicious veggie burger for a healthier option.', 1),

    (3, 'Pepperoni Pizza', 8.99, 500, 'https://lh3.google.com/u/0/d/153jeNx923DLyr-cMoNY66OgWVLUmdO2a', 'A classic pizza topped with pepperoni.', 2),
    (4, 'Margherita Pizza', 7.99, 480, 'https://lh3.google.com/u/0/d/1U45qBUbU-6c7oM61k6rSGzm2l6_Z64No', 'A simple pizza with fresh mozzarella and basil.', 2),

    (5, 'Club Sandwich', 6.99, 300, 'https://lh3.google.com/u/0/d/1_ZTLMU3NWG_0c9FYg0CUBJfRMtJV7RFW', 'A triple-decker sandwich with turkey, bacon, and lettuce.', 3),
    (6, 'BLT Sandwich', 5.49, 250, 'https://lh3.google.com/u/0/d/1a7QU8oWMVT5rR9lJy2baf0aSgMo-skpk', 'Bacon, lettuce, and tomato on toasted bread.', 3),

    (7, 'Classic Hot Dog', 3.99, 150, 'https://lh3.google.com/u/0/d/15mWBxz2y7y2XIJgrOKhIHGGVn0PaxtMu', 'A classic hot dog served with mustard.', 4),
    (8, 'Chili Cheese Dog', 4.99, 200, 'https://lh3.google.com/u/0/d/1loUgzzg16ejfaJtzNwWhC1Yn1apU3mjL', 'A hot dog topped with chili and cheese.', 4),

    (9, 'Chicken Nuggets', 4.99, 300, 'https://lh3.google.com/u/0/d/1ccdn9W7vWVg2QW5jglmOwFHyFGX9e2T5', 'Crispy chicken nuggets served with dipping sauce.', 5),
    (10, 'Veggie Nuggets', 4.49, 250, 'https://lh3.google.com/u/0/d/1728P4yI252tkJeJxY6sOoVSUCOGIzmex', 'Delicious veggie nuggets that everyone will love.', 5),

    (11, 'Beef Taco', 2.99, 150, 'https://lh3.google.com/u/0/d/1_VYdM7W3elt5E57Z_-meG3-jPdl5Nu0U', 'A taco filled with seasoned beef and toppings.', 6),
    (12, 'Chicken Taco', 2.99, 150, 'https://lh3.google.com/u/0/d/1O3kCp6_jlOlMozS-SW6_m0QoMb2DqP0T', 'A taco filled with grilled chicken and salsa.', 6),

    (13, 'French Fries', 2.49, 200, 'https://lh3.google.com/u/0/d/1lfCU64qtZVTMR1HKhOwzya9qbDiX5XHg', 'Crispy golden French fries.', 7),
    (14, 'Cheese Fries', 3.49, 250, 'https://lh3.google.com/u/0/d/11p2P4FLmqGzSWoUZTyLMMZCmNqkppZCg', 'French fries topped with melted cheese.', 7),

    (15, 'Caesar Salad', 5.99, 300, 'https://lh3.google.com/u/0/d/1JT8NphOu8fhhK_HIgbjMa_nl7q11t3vB', 'A classic Caesar salad with croutons and dressing.', 8),
    (16, 'Greek Salad', 5.49, 280, 'https://lh3.google.com/u/0/d/1qeVT3bwYHvvV6gEbp5uNC4GAKpEtfpCR', 'A fresh Greek salad with olives and feta.', 8),

    (17, 'Chocolate Cake', 3.99, 200, 'https://lh3.google.com/u/0/d/1STlK5FRD2ahA_vJJuRyyiJAkNEsK4GeH', 'Rich chocolate cake with creamy frosting.', 9),
    (18, 'Ice Cream Sundae', 4.49, 150, 'https://lh3.google.com/u/0/d/1ot66rZ8XNtDlAJGF90ekVGk_SBId19TW', 'A delicious sundae topped with nuts and cherries.', 9),

    (19, 'Cola', 1.99, 350, 'https://lh3.google.com/u/0/d/1XFOB-DZet6lDkq261ZJ4lNaVlrF2JZJO', 'A refreshing cola drink.', 10),
    (20, 'Lemonade', 1.49, 350, 'https://lh3.google.com/u/0/d/111qm8yPseHyAUj3G65tNsi0QX1VG14Yw', 'Freshly squeezed lemonade.', 10);

ALTER SEQUENCE products_id_seq RESTART WITH 21;

INSERT INTO carts (id, user_phone, updated_at)
VALUES
    ('375441234567', '375441234567', NOW() - INTERVAL '7 days'),
    ('375293311331', '375293311331', NOW() - INTERVAL '1 day'),
    ('375447777777', '375447777777', NOW());

INSERT INTO cart_items (id, cart_id, product_id, quantity)
VALUES
    (1, '375441234567', '1', 2),
    (2, '375441234567', '2', 2),
    (3, '375441234567', '9', 2),
    (4, '375441234567', '19', 2),
    (5, '375293311331', '3', 1),
    (6, '375293311331', '4', 1),
    (7, '375447777777', '1', 2),
    (8, '375447777777', '2', 2),
    (9, '375447777777', '12', 1),
    (10, '375447777777', '9', 1),
    (11, '375447777777', '13', 7),
    (12, '375447777777', '20', 8);

ALTER SEQUENCE cart_items_id_seq RESTART WITH 13;

INSERT INTO orders (id, user_phone, delivery_address, status, created_at, completed_at)
VALUES
    (1, '375447777777', '789 Grove St, Los Angeles', 'DELIVERED', NOW() - INTERVAL '5 days 20 minutes', NOW() - INTERVAL '5 days'),
    (2, '375293311331', '456 Port St, Los Angeles', 'DELIVERED', NOW() - INTERVAL '1 day', NOW() - INTERVAL '1 day'),
    (3, '375441234567', '123 Green Avenue, Los Angeles', 'SHIPPED', NOW() - INTERVAL '1 hour', NULL),
    (4, '375336677889', '321 Pine St, Los Angeles', 'PROCESSING', NOW(), NULL);

ALTER SEQUENCE orders_id_seq RESTART WITH 5;

INSERT INTO order_items (id, order_id, product_id, quantity, relevant_price)
VALUES
    (1, 1, 1, 2, 3.99),
    (2, 1, 3, 1, 11.99),

    (3, 2, 2, 1, 3.49),
    (4, 2, 4, 1, 7.99),

    (5, 3, 5, 1, 6.99),
    (6, 3, 19, 2, 1.99),

    (7, 4, 12, 1, 2.99),
    (8, 4, 13, 3, 2.49);

ALTER SEQUENCE order_items_id_seq RESTART WITH 9;