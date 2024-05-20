
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
  {{ ref('view_1031') }} as v1,
  {{ ref('view_1032') }} as v2,
  {{ ref('view_1033') }} as v3,
  {{ ref('view_1034') }} as v4,
  {{ ref('view_1035') }} as v5,
  {{ ref('view_1036') }} as v6,
  {{ ref('view_1037') }} as v7,
  {{ ref('view_1038') }} as v8,
  {{ ref('view_1039') }} as v9
        