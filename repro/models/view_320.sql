
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
  {{ ref('view_311') }} as v1,
  {{ ref('view_312') }} as v2,
  {{ ref('view_313') }} as v3,
  {{ ref('view_314') }} as v4,
  {{ ref('view_315') }} as v5,
  {{ ref('view_316') }} as v6,
  {{ ref('view_317') }} as v7,
  {{ ref('view_318') }} as v8,
  {{ ref('view_319') }} as v9
        