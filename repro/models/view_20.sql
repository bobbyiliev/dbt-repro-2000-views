
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
  {{ ref('view_11') }} as v1,
  {{ ref('view_12') }} as v2,
  {{ ref('view_13') }} as v3,
  {{ ref('view_14') }} as v4,
  {{ ref('view_15') }} as v5,
  {{ ref('view_16') }} as v6,
  {{ ref('view_17') }} as v7,
  {{ ref('view_18') }} as v8,
  {{ ref('view_19') }} as v9
        