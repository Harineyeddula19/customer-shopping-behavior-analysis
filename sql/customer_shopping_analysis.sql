-- ============================================
-- CUSTOMER SHOPPING BEHAVIOR ANALYSIS
-- PostgreSQL SQL Analysis
-- ============================================


-- 1. CHECK TABLE STRUCTURE
SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'customer_shopping'
ORDER BY ordinal_position;


-- 2. TOTAL NUMBER OF RECORDS
SELECT COUNT(*) AS total_records
FROM customer_shopping;


-- 3. CHECK MISSING VALUES
SELECT
    COUNT(*) AS total_rows,
    COUNT("Customer ID") AS customer_id_count,
    COUNT("Age") AS age_count,
    COUNT("Gender") AS gender_count,
    COUNT("Item Purchased") AS item_count,
    COUNT("Category") AS category_count,
    COUNT("Purchase Amount (USD)") AS purchase_amount_count,
    COUNT("Review Rating") AS rating_count,
    COUNT("Subscription Status") AS subscription_count,
    COUNT("Previous Purchases") AS previous_purchase_count
FROM customer_shopping;


-- 4. CHECK DUPLICATE CUSTOMER IDs
SELECT
    "Customer ID",
    COUNT(*) AS customer_count
FROM customer_shopping
GROUP BY "Customer ID"
HAVING COUNT(*) > 1
ORDER BY customer_count DESC;


-- 5. TOTAL REVENUE
SELECT
    SUM("Purchase Amount (USD)") AS total_revenue
FROM customer_shopping;


-- 6. AVERAGE PURCHASE
SELECT
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping;


-- 7. MINIMUM AND MAXIMUM PURCHASE
SELECT
    MIN("Purchase Amount (USD)") AS minimum_purchase,
    MAX("Purchase Amount (USD)") AS maximum_purchase
FROM customer_shopping;


-- 8. REVENUE BY CATEGORY
SELECT
    "Category",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Category"
ORDER BY total_revenue DESC;


-- 9. REVENUE BY GENDER
SELECT
    "Gender",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Gender"
ORDER BY total_revenue DESC;


-- 10. REVENUE BY AGE GROUP
SELECT
    "Age Group",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Age Group"
ORDER BY total_revenue DESC;


-- 11. TOP 10 PRODUCTS BY REVENUE
SELECT
    "Item Purchased",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Item Purchased"
ORDER BY total_revenue DESC
LIMIT 10;


-- 12. TOP 10 LOCATIONS BY REVENUE
SELECT
    "Location",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Location"
ORDER BY total_revenue DESC
LIMIT 10;


-- 13. PAYMENT METHOD ANALYSIS
SELECT
    "Payment Method",
    COUNT(*) AS transaction_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Payment Method"
ORDER BY total_revenue DESC;


-- 14. DISCOUNT ANALYSIS
SELECT
    "Discount Applied",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Discount Applied"
ORDER BY total_revenue DESC;


-- 15. REVIEW RATING DISTRIBUTION
SELECT
    ROUND("Review Rating", 1) AS rating,
    COUNT(*) AS customer_count
FROM customer_shopping
GROUP BY ROUND("Review Rating", 1)
ORDER BY rating DESC;


-- 16. CUSTOMER SEGMENT ANALYSIS
SELECT
    "Customer Segment",
    COUNT(*) AS customer_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Customer Segment"
ORDER BY total_revenue DESC;


-- 17. PURCHASE FREQUENCY ANALYSIS
SELECT
    "Frequency of Purchases",
    COUNT(*) AS customer_count,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase,
    SUM("Purchase Amount (USD)") AS total_revenue
FROM customer_shopping
GROUP BY "Frequency of Purchases"
ORDER BY average_purchase DESC;


-- 18. SUBSCRIPTION ANALYSIS
SELECT
    "Subscription Status",
    COUNT(*) AS customer_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Subscription Status"
ORDER BY total_revenue DESC;


-- 19. SEASON ANALYSIS
SELECT
    "Season",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Season"
ORDER BY total_revenue DESC;


-- 20. SHIPPING TYPE ANALYSIS
SELECT
    "Shipping Type",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS average_purchase
FROM customer_shopping
GROUP BY "Shipping Type"
ORDER BY total_revenue DESC;


-- 21. SIZE ANALYSIS
SELECT
    "Size",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue
FROM customer_shopping
GROUP BY "Size"
ORDER BY purchase_count DESC;


-- 22. COLOR ANALYSIS
SELECT
    "Color",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue
FROM customer_shopping
GROUP BY "Color"
ORDER BY total_revenue DESC
LIMIT 10;


-- 23. REVENUE CONTRIBUTION BY CATEGORY
SELECT
    "Category",
    SUM("Purchase Amount (USD)") AS category_revenue,
    ROUND(
        100.0 * SUM("Purchase Amount (USD)")
        / SUM(SUM("Purchase Amount (USD)")) OVER (),
        2
    ) AS revenue_percentage
FROM customer_shopping
GROUP BY "Category"
ORDER BY category_revenue DESC;


-- 24. HIGH-VALUE PURCHASES
SELECT
    "Customer ID",
    "Age",
    "Gender",
    "Item Purchased",
    "Purchase Amount (USD)",
    "Customer Segment"
FROM customer_shopping
WHERE "Purchase Amount (USD)" >= 90
ORDER BY "Purchase Amount (USD)" DESC;


-- 25. CASE WHEN - PURCHASE LEVEL
SELECT
    "Customer ID",
    "Purchase Amount (USD)",
    CASE
        WHEN "Purchase Amount (USD)" >= 80 THEN 'High Purchase'
        WHEN "Purchase Amount (USD)" >= 50 THEN 'Medium Purchase'
        ELSE 'Low Purchase'
    END AS purchase_level
FROM customer_shopping
LIMIT 20;


-- 26. HAVING EXAMPLE
SELECT
    "Category",
    COUNT(*) AS purchase_count,
    SUM("Purchase Amount (USD)") AS total_revenue
FROM customer_shopping
GROUP BY "Category"
HAVING SUM("Purchase Amount (USD)") > 30000
ORDER BY total_revenue DESC;


-- 27. CUSTOMER SEGMENT REVENUE CONTRIBUTION
SELECT
    "Customer Segment",
    COUNT(*) AS customer_count,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_purchase,
    SUM("Purchase Amount (USD)") AS total_revenue,
    ROUND(
        100.0 * SUM("Purchase Amount (USD)")
        / (SELECT SUM("Purchase Amount (USD)")
           FROM customer_shopping),
        2
    ) AS revenue_percentage
FROM customer_shopping
GROUP BY "Customer Segment"
ORDER BY total_revenue DESC;


-- 28. CTE + RANK WINDOW FUNCTION
WITH category_sales AS (
    SELECT
        "Category",
        SUM("Purchase Amount (USD)") AS total_revenue
    FROM customer_shopping
    GROUP BY "Category"
)
SELECT
    "Category",
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM category_sales
ORDER BY revenue_rank;