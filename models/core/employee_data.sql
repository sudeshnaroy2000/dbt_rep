with employee_data as (

select
        EmpId as id,
        first_name as first_name,
        last_name as last_name,
        Concat(first_name,last_name) as full_name,
        email as email_id,
        phoneno as phone_no,
        salary as salary


from {{ source('core', 'employee') }}

)

select * from employee_data