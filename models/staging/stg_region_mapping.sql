WITH regions AS (
    SELECT
        country,
        region
    FROM {{ source('raw_data', 'region_mapping') }}
)
SELECT * FROM regions
