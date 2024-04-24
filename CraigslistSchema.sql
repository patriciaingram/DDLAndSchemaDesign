CREATE TABLE Region (
    region_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE User (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    preferred_region_id INT REFERENCES Region(region_id)
);

CREATE TABLE Category (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Post (
    post_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    text TEXT,
    user_id INT REFERENCES User(user_id),
    region_id INT REFERENCES Region(region_id),
    category_id INT REFERENCES Category(category_id)
);

CREATE TABLE Post_Category (
    post_id INT REFERENCES Post(post_id),
    category_id INT REFERENCES Category(category_id),
    PRIMARY KEY (post_id, category_id)
);
