-- Create the 'store_names' table
CREATE TABLE store_names (
    id_store_names INT PRIMARY KEY,
    store_name VARCHAR(20)
);

-- Create the 'categories' table
CREATE TABLE categories (
    id_categories INT PRIMARY KEY,
    category VARCHAR(100)
);

-- Create the 'stores' table
CREATE TABLE stores (
    id_store INT PRIMARY KEY,
    id_store_names INT,
    id_categories INT,
    store_address VARCHAR(200),
    latitude FLOAT,
    longitude FLOAT,
    rating_count FLOAT,
    FOREIGN KEY (id_store_names) REFERENCES store_names(id_store_names),
    FOREIGN KEY (id_categories) REFERENCES categories(id_categories)
);

-- Create the 'reviews' table
CREATE TABLE reviews (
    id_review INT PRIMARY KEY,
    id_store INT,
    review_time VARCHAR(50),
    rating VARCHAR(10),
    review TEXT,
    FOREIGN KEY (id_store) REFERENCES stores(id_store)
);

