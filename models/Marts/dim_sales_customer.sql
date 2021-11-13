
with
    selected as (
        select *
        from {{ref('stg_sales_customer')}}
    )
    , transformation as (
        select
            row_number() over (order by customerid) as customerid_sk -- auto-incremental surrogate key
            , customerid
            , personid
            , storeid
            , territoryid
            , rowguid
            , modifieddate
        from selected
    )
    select * from transformation