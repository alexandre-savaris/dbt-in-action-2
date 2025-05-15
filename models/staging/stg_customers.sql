WITH customers AS (
    SELECT
        customer_id,
        customer_name,
        country
    FROM {{ source('raw_data', 'customers') }}
)
SELECT * FROM customers
