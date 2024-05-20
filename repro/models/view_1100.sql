
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
  {{ ref('view_1091') }} as v1,
  {{ ref('view_1092') }} as v2,
  {{ ref('view_1093') }} as v3,
  {{ ref('view_1094') }} as v4,
  {{ ref('view_1095') }} as v5,
  {{ ref('view_1096') }} as v6,
  {{ ref('view_1097') }} as v7,
  {{ ref('view_1098') }} as v8,
  {{ ref('view_1099') }} as v9
        