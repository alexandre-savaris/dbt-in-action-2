WITH spend AS (
    SELECT
        s.customer_id,
        sum(s.total_amount) AS total_spend
    FROM {{ ref('fact_sales') }} s
    GROUP BY s.customer_id
)
SELECT
    spend.customer_id,
    d.customer_name,
    d.region,
    spend.total_spend,
    {{ categorize_spend('spend.total_spend') }} AS spend_category
FROM spend
LEFT JOIN {{ ref('dim_customers') }} d ON spend.customer_id = d.customer_id
