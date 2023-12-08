INSERT INTO "Enterprises" (enterprise_name)
VALUES
    ('Enterprise1'),
    ('Enterprise2');

-- Insert test data into the 'Product Types' table
INSERT INTO "Product Types" (type_name)
VALUES
    ('Appliances'),
    ('Books'),
    ('Toys'),
    ('Clothing'),
    ('Shoes'),
    ('Health and Beauty'),
    ('Sporting Goods'),
    ('Home Decor'),
    ('Jewelry'),
    ('Electronics'),
    ('Furniture'),
    ('Kitchen Appliances'),
    ('Food and Groceries'),
    ('Tools and Hardware'),
    ('Automotive'),
    ('Music and Instruments');

-- Insert test data into the 'Brands' table
INSERT INTO "Brands" (brand_name)
VALUES
    ('Sony'),
    ('Samsung'),
    ('Apple'),
    ('Nike'),
    ('Adidas'),
    ('Puma'),
    ('Maybelline'),
    ('Dove'),
    ('Rolex'),
    ('LG'),
    ('Whirlpool'),
    ('HP'),
    ('Canon'),
    ('Lenovo'),
    ('Acer'),
    ('Coca-Cola'),
    ('Pepsi'),
    ('Kelloggs'),
    ('Nestle'),
    ('Black & Decker');

-- Insert test data into the 'Vendors' table
INSERT INTO "Vendors" (vendor_name)
VALUES
    ('Vendor13'),
    ('Vendor14'),
    ('Vendor15'),
    ('Vendor16'),
    ('Vendor17'),
    ('Vendor18'),
    ('Vendor19'),
    ('Vendor20'),
    ('Vendor21'),
    ('Vendor22'),
    ('Vendor23'),
    ('Vendor24'),
    ('Vendor25'),
    ('Vendor26'),
    ('Vendor27'),
    ('Vendor28'),
    ('Vendor29'),
    ('Vendor30'),
    ('Vendor31'),
    ('Vendor32');

-- Insert test data into the 'Vendor Sells' table
INSERT INTO "Vendor Sells" (brand_name, vendor_name)
VALUES
    ('Sony', 'Vendor13'),
    ('Samsung', 'Vendor14'),
    ('Apple', 'Vendor15'),
    ('Nike', 'Vendor16'),
    ('Adidas', 'Vendor17'),
    ('Puma', 'Vendor18'),
    ('Maybelline', 'Vendor19'),
    ('Dove', 'Vendor20'),
    ('Rolex', 'Vendor21'),
    ('LG', 'Vendor22'),
    ('Whirlpool', 'Vendor23'),
    ('HP', 'Vendor24'),
    ('Canon', 'Vendor25'),
    ('Lenovo', 'Vendor26'),
    ('Acer', 'Vendor27'),
    ('Coca-Cola', 'Vendor28'),
    ('Pepsi', 'Vendor29'),
    ('Kelloggs', 'Vendor30'),
    ('Nestle', 'Vendor31'),
    ('Black & Decker', 'Vendor32');

-- Insert test data into the 'Products' table
INSERT INTO "Products" (upc_code, product_name, packaging, dimensions, brand_name, product_type, price)
VALUES
    ('12309', 'Milk', 'Bottle', '7x7x10', 'Nestle', 'Food and Groceries', 4.80),
    ('77777', 'Refrigerator', 'Box', '36x24x70', 'LG', 'Appliances', 899.99),
    ('88888', 'Laptop', 'Box', '14x9x0.7', 'HP', 'Electronics', 999.99),
    ('99999', 'Running Shoes', 'Box', '12x6x4', 'Nike', 'Shoes', 89.99),
    ('10101', 'Wristwatch', 'Box', '3x3x1', 'Rolex', 'Jewelry', 499.99),
    ('12121', 'Smartphone', 'Box', '5x3x0.3', 'Samsung', 'Electronics', 599.99),
    ('14141', 'T-shirt', 'Bag', '15x10x1', 'Adidas', 'Clothing', 29.99),
    ('18181', 'Shampoo', 'Bottle', '8x3x3', 'Dove', 'Health and Beauty', 6.99),
    ('20202', 'Soccer Ball', 'Bag', '9x9x9', 'Puma', 'Sporting Goods', 19.99),
    ('28282', 'LED TV', 'Box', '40x24x3', 'Sony', 'Electronics', 599.99),
    ('30303', 'Dining Table', 'Box', '60x36x30', 'Whirlpool', 'Kitchen Appliances', 399.99),
    ('11111', 'Bottle of Coca-Cola', 'Bottle', '10x4x4', 'Coca-Cola', 'Food and Groceries', 3.99),
    ('22222', 'Bottle of Pepsi', 'Bottle', '10x4x4', 'Pepsi', 'Food and Groceries', 4.99);

-- Insert test data into the 'Stores' table
INSERT INTO "Stores" (store_id, store_name, store_address, store_state, opening_time, closing_time, enterprise_name, phone_number)
VALUES
    (9, 'Store I', '999 Oak St', 'NY', '11:00:00', '20:00:00', 'Enterprise1', '555-666-7777'),
    (10, 'Store J', '101 Birch St', 'PA', '10:30:00', '19:30:00', 'Enterprise2', '888-999-0000'),
    (11, 'Store K', '111 Pine St', 'NY', '09:30:00', '18:30:00', 'Enterprise1', '123-456-7890'),
    (12, 'Store L', '121 Elm St', 'CA', '10:00:00', '19:00:00', 'Enterprise2', '987-654-3210'),
    (13, 'Store M', '131 Cedar St', 'HI', '08:30:00', '17:30:00', 'Enterprise1', '111-222-3333'),
    (14, 'Store N', '141 Oak St', 'NY', '09:00:00', '18:00:00', 'Enterprise2', '444-555-6666'),
    (15, 'Store O', '151 Birch St', 'PA', '09:30:00', '19:30:00', 'Enterprise1', '777-888-9999'),
    (16, 'Store P', '161 Pine St', 'AZ', '08:00:00', '17:00:00', 'Enterprise2', '111-222-3333'),
    (17, 'Store Q', '171 Elm St', 'NY', '10:00:00', '20:00:00', 'Enterprise1', '444-555-6666'),
    (18, 'Store R', '181 Cedar St', 'PA', '08:30:00', '17:30:00', 'Enterprise2', '777-888-9999');

-- Insert test data into the 'Inventory' table
INSERT INTO "Inventory" (upc_code, store_id, quantity_in_stock)
VALUES
    ('77777', 9, 5),
    ('88888', 11, 15),
    ('99999', 12, 25),
    ('10101', 15, 10),
    ('12121', 13, 30),
    ('14141', 12, 50),
    ('18181', 10, 20),
    ('20202', 10, 15),
    ('28282', 9, 10),
    ('30303', 9, 15);


-- Insert test data into the 'Sales' table
INSERT INTO "Sales" (sale_id, store_id, date)
VALUES
(16, 17, '2023-11-28'),
(17, 11, '2023-04-05'),
(18, 10, '2023-07-27'),
(19, 11, '2023-03-13'),
(1, 9, '2023-10-28'),
(2, 10, '2023-10-28'),
(3, 11, '2023-10-28'),
(4, 12, '2023-10-29'),
(5, 13, '2023-10-29'),
(6, 14, '2023-10-29'),
(7, 15, '2023-10-30'),
(8, 16, '2023-10-30'),
(9, 17, '2023-10-30'),
(10, 18, '2023-10-31'),
(11, 13, '2023-10-31'),
(12, 9, '2023-11-04'),
(13, 17, '2023-11-06'),
(14, 11, '2023-11-07'),
(15, 18, '2023-11-11');

-- Insert test data into the 'Sale Item' table
INSERT INTO "Sale Item" (sale_item_id, sale_id, upc_code, quantity)
VALUES
(19, 16, '12309', 1),
(20, 16, '77777', 4),
(21, 17, '12309', 2),
(22, 17, '20202', 6),
(23, 18, '12309', 4),
(24, 18, '14141', 7),
(25, 19, '12309', 2),
(26, 19, '11111', 3),
(27, 19, '22222', 11),
(1, 1, '77777', 5),
(2, 2, '88888', 12),
(3, 3, '99999', 20),
(4, 4, '10101', 19),
(5, 5, '12121', 37),
(6, 6, '14141', 21),
(7, 7, '18181', 3),
(8, 8, '20202', 42),
(9, 11, '11111', 10),
(10, 11, '22222', 2),
(11, 12, '11111', 14),
(12, 12, '22222', 22),
(13, 13, '11111', 19),
(14, 13, '22222', 33),
(15, 14, '11111', 32),
(16, 14, '22222', 26),
(17, 15, '11111', 18),
(18, 15, '22222', 17);