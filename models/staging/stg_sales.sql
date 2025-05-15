WITH sales AS (
    SELECT
        order_id,
        customer_id,
        order_date::date AS order_date,
        total_amount::numeric AS total_amount
    FROM {{ source('raw_data', 'sales') }}
)
SELECT * FROM sales
