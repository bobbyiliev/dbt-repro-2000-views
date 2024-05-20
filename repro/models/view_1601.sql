
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_1601' as view_name
        