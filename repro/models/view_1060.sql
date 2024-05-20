
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
  {{ ref('view_1051') }} as v1,
  {{ ref('view_1052') }} as v2,
  {{ ref('view_1053') }} as v3,
  {{ ref('view_1054') }} as v4,
  {{ ref('view_1055') }} as v5,
  {{ ref('view_1056') }} as v6,
  {{ ref('view_1057') }} as v7,
  {{ ref('view_1058') }} as v8,
  {{ ref('view_1059') }} as v9
        