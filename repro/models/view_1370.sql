
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
  {{ ref('view_1361') }} as v1,
  {{ ref('view_1362') }} as v2,
  {{ ref('view_1363') }} as v3,
  {{ ref('view_1364') }} as v4,
  {{ ref('view_1365') }} as v5,
  {{ ref('view_1366') }} as v6,
  {{ ref('view_1367') }} as v7,
  {{ ref('view_1368') }} as v8,
  {{ ref('view_1369') }} as v9
        