USE fintech_db;

-- Monthly Revenue
SELECT
    active_month,
    SUM(revenue) AS total_revenue
FROM fintech_users
GROUP BY active_month;

-- User Retention by Signup Cohort
SELECT
    signup_month,
    COUNT(DISTINCT user_id) AS retained_users
FROM fintech_users
GROUP BY signup_month;

-- Average Transactions Per User
SELECT
    AVG(transactions) AS avg_transactions
FROM fintech_users;