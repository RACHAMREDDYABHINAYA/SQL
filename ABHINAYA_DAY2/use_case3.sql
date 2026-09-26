USE cdg_hyd_jfs_058;
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_code VARCHAR(12) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    city VARCHAR(80) NOT NULL,
    state VARCHAR(80) NOT NULL,
    postal_code VARCHAR(12) NOT NULL,
    customer_type VARCHAR(15) NOT NULL DEFAULT 'Regular',
    credit_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `uk_customer_code` UNIQUE (customer_code),
    CONSTRAINT `uk_email` UNIQUE (email),
    CONSTRAINT `uk_phone` UNIQUE (phone),
    CONSTRAINT `pk_customers_customer_id` PRIMARY KEY (customer_id),
    CONSTRAINT `chk_creidt_limit_non_negative` CHECK (credit_limit >= 0.00)
);
SELECT * FROM customers;
INSERT INTO customers (customer_id,customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code) VALUES (101, 'CUS001', 'Ravi', 'Kumar', 'ravi@gmail.com', '9876543210', '1998-05-12', 'Hyderabad', 'Telangana', '500001');
INSERT INTO customers (customer_id,customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code) VALUES (102, 'CUS002', 'Sneha', 'Reddy', 'sneha@gmail.com', '9865432109', '1999-08-20', 'Bengaluru', 'Karnataka', '560001');
