

-- Create the 'Product Types' table
CREATE TABLE IF NOT EXISTS "Product Types" (
    type_name TEXT PRIMARY KEY
);

-- Create the 'Brands' table
CREATE TABLE IF NOT EXISTS "Brands" (
    brand_name TEXT PRIMARY KEY
);

-- Create the 'Vendors' table
CREATE TABLE IF NOT EXISTS "Vendors" (
    vendor_name TEXT PRIMARY KEY
);

-- Create the 'Vendor Sells' table with foreign keys
CREATE TABLE IF NOT EXISTS "Vendor Sells" (
    brand_name TEXT REFERENCES "Brands" (brand_name),
    vendor_name TEXT REFERENCES "Vendors" (vendor_name),
    PRIMARY KEY (brand_name, vendor_name)
);

-- Create the 'Products' table with foreign keys
CREATE TABLE IF NOT EXISTS "Products" (
    upc_code TEXT PRIMARY KEY,
    product_name TEXT,
    packaging TEXT,
    dimensions TEXT,
    brand_name TEXT REFERENCES "Brands" (brand_name),
    product_type TEXT REFERENCES "Product Types" (type_name),
    price NUMERIC
);
-- Create the 'Enterprises' table
CREATE TABLE IF NOT EXISTS "Enterprises" (
    enterprise_name TEXT PRIMARY KEY
);

-- Create the 'Stores' table with foreign keys
CREATE TABLE IF NOT EXISTS "Stores" (
    store_id SERIAL PRIMARY KEY,
    store_name TEXT,
    store_address TEXT,
    store_state TEXT,
    opening_time TIME,
    closing_time TIME,
    enterprise_name TEXT REFERENCES "Enterprises" (enterprise_name),
    phone_number TEXT
);

-- Create the 'Inventory' table with foreign keys
CREATE TABLE IF NOT EXISTS "Inventory" (
    upc_code TEXT REFERENCES "Products" (upc_code),
    store_id INT REFERENCES "Stores" (store_id),
    quantity_in_stock INT,
    PRIMARY KEY (upc_code, store_id)
);



-- Create the 'Sales' table with foreign keys
CREATE TABLE IF NOT EXISTS "Sales" (
    sale_id SERIAL PRIMARY KEY,
    store_id INT REFERENCES "Stores" (store_id),
    date DATE
);

-- Create the 'Sale Item' table with foreign keys
CREATE TABLE IF NOT EXISTS "Sale Item" (
    sale_item_id SERIAL PRIMARY KEY,
    sale_id INT REFERENCES "Sales" (sale_id),
    upc_code TEXT REFERENCES "Products" (upc_code),
    quantity INT
);