CREATE TABLE sales.products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(10,2),
    stock_quantity INT
);

CREATE TABLE sales.orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    member_id INT,

    FOREIGN KEY (member_id)
        REFERENCES library.members(member_id)
);

CREATE TABLE sales.order_details (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,

    FOREIGN KEY (order_id)
        REFERENCES sales.orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES sales.products(product_id)
);