
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_348' as view_name
        