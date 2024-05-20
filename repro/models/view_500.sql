
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
  {{ ref('view_491') }} as v1,
  {{ ref('view_492') }} as v2,
  {{ ref('view_493') }} as v3,
  {{ ref('view_494') }} as v4,
  {{ ref('view_495') }} as v5,
  {{ ref('view_496') }} as v6,
  {{ ref('view_497') }} as v7,
  {{ ref('view_498') }} as v8,
  {{ ref('view_499') }} as v9
        