WITH sales AS (
    SELECT
        customer_id,
        sum(total_amount) AS total_spend
    FROM {{ ref('stg_sales') }}
    GROUP BY customer_id
)
SELECT * FROM sales
