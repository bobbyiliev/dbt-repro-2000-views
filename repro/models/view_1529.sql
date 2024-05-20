
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_1529' as view_name
        