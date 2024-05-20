
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_736' as view_name
        