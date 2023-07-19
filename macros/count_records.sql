{% macro count_records(table_name) %}

    select COUNT(*) as record_count

    FROM {{ table_name }}

{% endmacro %}