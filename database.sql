-- 1.	Get all users from Chicago.
SELECT * FROM accounts WHERE city ILIKE 'chicago';

-- 2.	Get all users with usernames that contain the letter a.
SELECT * FROM accounts WHERE username ILIKE '%a%';

-- 3.	The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0.
-- 		Give them a new account balance of 10.00.
SELECT * FROM accounts WHERE account_balance = 0 OR transactions_attempted = 0;
UPDATE accounts SET account_balance = 10.00 WHERE user_id = 5;
SELECT * FROM accounts WHERE user_id = 5;

-- 4.	Select all users that have attempted 9 or more transactions.
SELECT * FROM accounts WHERE transactions_attempted >= 9;

-- 5.	Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT * FROM accounts ORDER BY account_balance DESC LIMIT 3;

-- 6.	Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT * FROM accounts ORDER BY account_balance ASC LIMIT 3;

-- 7.   Get all users with account balances that are more than $100.
SELECT * FROM accounts WHERE account_balance > 100;

-- 8.	Add a new record.
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('joe', 'richfield', 5, 5, 300.00);

-- 9.	The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
SELECT * FROM accounts WHERE transactions_completed < 5 AND city='miami' OR transactions_completed < 5 AND city='phoenix';
DELETE FROM accounts WHERE transactions_completed < 5 AND city='miami' OR transactions_completed < 5 AND city='phoenix';
