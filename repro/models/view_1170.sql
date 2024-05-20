
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
  {{ ref('view_1161') }} as v1,
  {{ ref('view_1162') }} as v2,
  {{ ref('view_1163') }} as v3,
  {{ ref('view_1164') }} as v4,
  {{ ref('view_1165') }} as v5,
  {{ ref('view_1166') }} as v6,
  {{ ref('view_1167') }} as v7,
  {{ ref('view_1168') }} as v8,
  {{ ref('view_1169') }} as v9
        