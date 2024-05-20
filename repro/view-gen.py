import os

# Define the base path for your dbt models
base_path = './models'

# Create the models directory if it doesn't exist
os.makedirs(base_path, exist_ok=True)

# Number of views to generate
num_views = 2000

# Create base views
for i in range(num_views):
    with open(f'{base_path}/view_{i}.sql', 'w') as f:
        f.write(f"""
{{{{ config(
    materialized='view'
) }}}}

select
  generate_series(1, 100) as id,
  'view_{i}' as view_name
        """)

# Create interdependent views
for i in range(10, num_views, 10):  # Every 10th view depends on the previous 9 views
    with open(f'{base_path}/view_{i}.sql', 'w') as f:
        f.write(f"""
{{{{ config(
    materialized='view'
) }}}}

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
  {{{{ ref('view_{i-9}') }}}} as v1,
  {{{{ ref('view_{i-8}') }}}} as v2,
  {{{{ ref('view_{i-7}') }}}} as v3,
  {{{{ ref('view_{i-6}') }}}} as v4,
  {{{{ ref('view_{i-5}') }}}} as v5,
  {{{{ ref('view_{i-4}') }}}} as v6,
  {{{{ ref('view_{i-3}') }}}} as v7,
  {{{{ ref('view_{i-2}') }}}} as v8,
  {{{{ ref('view_{i-1}') }}}} as v9
        """)
