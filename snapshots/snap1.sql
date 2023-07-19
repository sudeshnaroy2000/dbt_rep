{% snapshot snap1 %}
{{

    config(

      target_database='analytics',

      target_schema='snapshots',

      unique_key='EmpId',
    
      strategy='check',

      check_cols=['salary'],

    )

}}

select * from {{ source('core', 'employee') }}

{% endsnapshot %}