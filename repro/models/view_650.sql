
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
  {{ ref('view_641') }} as v1,
  {{ ref('view_642') }} as v2,
  {{ ref('view_643') }} as v3,
  {{ ref('view_644') }} as v4,
  {{ ref('view_645') }} as v5,
  {{ ref('view_646') }} as v6,
  {{ ref('view_647') }} as v7,
  {{ ref('view_648') }} as v8,
  {{ ref('view_649') }} as v9
        