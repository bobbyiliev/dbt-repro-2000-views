
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_1491' as view_name
        