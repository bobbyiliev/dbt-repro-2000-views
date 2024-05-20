
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
  {{ ref('view_341') }} as v1,
  {{ ref('view_342') }} as v2,
  {{ ref('view_343') }} as v3,
  {{ ref('view_344') }} as v4,
  {{ ref('view_345') }} as v5,
  {{ ref('view_346') }} as v6,
  {{ ref('view_347') }} as v7,
  {{ ref('view_348') }} as v8,
  {{ ref('view_349') }} as v9
        