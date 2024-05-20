
{{ config(
    materialized='view'
) }}

select
  v1.id as id,
  v1.view_name as view_name_1,
  v2.view_name as view_name_2,
  v3.view_name as view_name_3,
  v4.view_name as view_name_4,
  v5.view_name as view_name_5,
  v6.view_name as view_name_6,
  v7.view_name as view_name_7,
  v8.view_name as view_name_8,
  v9.view_name as view_name_9
from
  {{ ref('view_1931') }} as v1,
  {{ ref('view_1932') }} as v2,
  {{ ref('view_1933') }} as v3,
  {{ ref('view_1934') }} as v4,
  {{ ref('view_1935') }} as v5,
  {{ ref('view_1936') }} as v6,
  {{ ref('view_1937') }} as v7,
  {{ ref('view_1938') }} as v8,
  {{ ref('view_1939') }} as v9
        