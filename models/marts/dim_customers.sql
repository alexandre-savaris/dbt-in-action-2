SELECT
    customer_id,
    customer_name,
    country,
    region
FROM {{ ref('int_customer_region') }}
