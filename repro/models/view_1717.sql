
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_1717' as view_name
        