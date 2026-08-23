USE startersql;
-- Check existing table
SELECT * FROM users;
-- =========================
-- ADDING COLUMNS
-- =========================

ALTER TABLE users
ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

SELECT * FROM users;


ALTER TABLE users
ADD COLUMN contact_info BOOLEAN DEFAULT TRUE;
SELECT * FROM users;

ALTER TABLE users
ADD COLUMN date_of_birth BOOLEAN DEFAULT TRUE;
SELECT * FROM users;

-- =========================
-- DROPPING COLUMNS
-- =========================

ALTER TABLE users
DROP COLUMN is_active;

SELECT * FROM users;


-- =========================
-- DESCRIBE TABLE
-- =========================
DESCRIBE users;
-- =========================
-- MODIFYING COLUMNS
-- =========================

ALTER TABLE users
MODIFY COLUMN email VARCHAR(100) AFTER id;

ALTER TABLE users
MODIFY COLUMN date_of_birth DATETIME FIRST;

SELECT * FROM users;

DESCRIBE users;
ALTER TABLE users
MODIFY COLUMN date_of_birth DATETIME FIRST;
DESCRIBE users;