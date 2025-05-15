{% macro categorize_spend(column_name) %}
    CASE
        WHEN {{ column_name }} >= 1000 THEN 'High'
        WHEN {{ column_name }} BETWEEN 500 AND 999 THEN 'Medium'
        ELSE 'Low'
    END
{% endmacro %}
