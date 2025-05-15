SELECT
    s.order_id,
    s.customer_id,
    d.customer_name,
    d.region,
    s.order_date,
    s.total_amount
FROM {{ ref('stg_sales') }} s
LEFT JOIN {{ ref('dim_customers') }} d ON s.customer_id = d.customer_id
