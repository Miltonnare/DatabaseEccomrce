-- Creating the Brand Table

CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL,
    brand_description TEXT
    logo_url VARCHAR(255) -- URL to the brand logo image
);

-- Creating the product Category Table to help in locating the categories
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    parent_category_id INT, -- For subcategories
    FOREIGN KEY (parent_category_id) REFERENCES product_category(category_id),
    category_description TEXT
);

-- Now we define the Product Table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT,
    base_price DECIMAL(10, 2) NOT NULL,
    product_description TEXT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- We define   the table to hold the image (multiple images) of the product
-- This is a one-to-many relationship, as a product can have multiple images
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    alt_text VARCHAR(150),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Category Mapping (Many-to-Many)
CREATE TABLE product_category_mapping (
    product_id INT NOT NULL REFERENCES product(product_id),
    category_id INT NOT NULL REFERENCES product_category(category_id),
    PRIMARY KEY (product_id, category_id)
);


-- Relate the Color Table

CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL,
    hex_value VARCHAR(7) -- e.g.rgb(232, 158, 158)
);

-- Now we work on size_category
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    size_name VARCHAR(100) NOT NULL --eg. "Clothing", "shoes".
);

-- The size option Table
CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    value VARCHAR(20) NOT NULL, -- e.g., S, M, L, XL, etc.
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Product Variation Table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

-- Product Item Table
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    variation_id INT,
    sku VARCHAR(100) UNIQUE NOT NULL, -- sku is the Stock Keeping unit
    stock_quantity INT NOT NULL,
    price DECIMAL(10, 2),
    FOREIGN KEY (variation_id) REFERENCES product_variation(variation_id)
);

-- Attribute Category Table
CREATE TABLE attribute_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Attribute type Table
CREATE TABLE attribute_type (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL -- e.g., text, number, boolean
);

-- Product Attribute Table
CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    category_id INT,
    type_id INT,
    name  VARCHAR(100) NOT NULL,
    value TEXT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (category_id) REFERENCES attribute_category(category_id),
    FOREIGN KEY (type_id) REFERENCES attribute_type(type_id)
);


CREATE TABLE product_attribute_value (
    item_id INT NOT NULL REFERENCES product_item(item_id),
    attr_id INT NOT NULL REFERENCES product_attribute(attr_id),
    value TEXT NOT NULL,  -- Stores text/numbers (coerced via attr_type)
    PRIMARY KEY (item_id, attr_id)
);
-- Working on large systems require thinking outside the box😂. All I can say Think


