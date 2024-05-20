
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
  {{ ref('view_191') }} as v1,
  {{ ref('view_192') }} as v2,
  {{ ref('view_193') }} as v3,
  {{ ref('view_194') }} as v4,
  {{ ref('view_195') }} as v5,
  {{ ref('view_196') }} as v6,
  {{ ref('view_197') }} as v7,
  {{ ref('view_198') }} as v8,
  {{ ref('view_199') }} as v9
        