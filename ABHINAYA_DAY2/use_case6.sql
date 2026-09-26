USE cdg_hyd_jfs_058;
CREATE TABLE bankaccount (
	account_id INT NOT NULL AUTO_INCREMENT,
    account_number CHAR(12) NOT NULL,
    account_holder_name VARCHAR(120) NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    balance DECIMAL(15 , 2) NOT NULL DEFAULT 0.00,
    currency_code CHAR(3) NOT NULL DEFAULT 'INR',
    branch_name VARCHAR(100) NOT NULL,
    opened_date DATE NOT NULL,
    interest_rate DECIMAL(5 ,2) NOT NULL DEFAULT 0.00,
    overdraft_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    account_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_banckaccount_account_id` PRIMARY KEY(account_id),
    CONSTRAINT `uk_account_number` UNIQUE (account_number),
    CONSTRAINT `chk_balance_non_negative` CHECK (balance >= 0),
    CONSTRAINT `chk_overdraft_non_negative` CHECK (overdraft_limit >= 0),
    CONSTRAINT `chk_interest_rate_valid` CHECK (interest_rate >= 0.00 AND interest_rate <= 100.00)

    
);
SELECT * FROM bankaccount;
INSERT INTO bankaccount(account_id, account_number, account_holder_name, account_type, balance,currency_code, branch_name, opened_date, interest_rate, overdraft_limit,account_status)
VALUES(101, '123456789012', 'Ravi Kumar', 'Savings', 25000.00,'INR', 'HYD', '2024-01-15', 6.50, 5000.00, 'ACTIVE');

INSERT INTO bankaccount(account_id, account_number, account_holder_name, account_type, balance,currency_code, branch_name, opened_date, interest_rate, overdraft_limit,account_status)
VALUES(102, '234567890123', 'Sneha Reddy', 'Current', 50000.00,'INR', 'BLR', '2023-08-20', 7.25, 10000.00, 'ACTIVE');

