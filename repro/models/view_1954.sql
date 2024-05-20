
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_1954' as view_name
        