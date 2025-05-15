WITH customers AS (
    SELECT
        *
    FROM {{ ref('stg_customers') }}
),
regions AS (
    SELECT
        *
    FROM {{ ref('stg_region_mapping') }}
)
SELECT
    c.customer_id,
    c.customer_name,
    c.country,
    r.region
FROM customers c
LEFT JOIN regions r ON c.country = r.country
