
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_1981' as view_name
        