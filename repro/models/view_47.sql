
{{ config(
    materialized='view'
) }}

select
  generate_series(1, 100) as id,
  'view_47' as view_name
        