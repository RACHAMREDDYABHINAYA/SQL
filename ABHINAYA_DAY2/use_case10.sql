USE cdg_hyd_jfs_058;

CREATE TABLE support_tickets (
    ticket_id INT AUTO_INCREMENT,
    ticket_number VARCHAR(20) NOT NULL,
    requester_name VARCHAR(120) NOT NULL,
    requester_email VARCHAR(200) NOT NULL,
    subject VARCHAR(120) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(20) NOT NULL,
    priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
    ticket_status VARCHAR(20) NOT NULL DEFAULT 'OPEN',
    assigned_agent VARCHAR(120),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    last_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_support_tickets_ticket_id` PRIMARY KEY (ticket_id),
    CONSTRAINT `uq_ticket_number` UNIQUE (ticket_number),
    CONSTRAINT `chk_resolved_time` CHECK (resolved_at IS NULL OR resolved_at >= created_at)
);

INSERT INTO support_tickets(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES('TKT002', 'Priya Sharma', 'priya.sharma@gmail.com', 'Payment Failed', 'My payment failed while trying to complete the transaction.', 'PAYMENT', 'HIGH', 'OPEN', 'Suresh Reddy', NULL);

INSERT INTO support_tickets(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES('TKT003', 'Arjun Mehta', 'arjun.mehta@gmail.com', 'Account Locked', 'My account has been locked after multiple unsuccessful login attempts.', 'ACCOUNT', 'MEDIUM', 'IN_PROGRESS', 'Ravi Kumar', NULL);

SELECT * FROM support_tickets;
