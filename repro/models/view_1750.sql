
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
  {{ ref('view_1741') }} as v1,
  {{ ref('view_1742') }} as v2,
  {{ ref('view_1743') }} as v3,
  {{ ref('view_1744') }} as v4,
  {{ ref('view_1745') }} as v5,
  {{ ref('view_1746') }} as v6,
  {{ ref('view_1747') }} as v7,
  {{ ref('view_1748') }} as v8,
  {{ ref('view_1749') }} as v9
        