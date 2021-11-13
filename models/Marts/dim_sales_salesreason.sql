
with
    selected as (
        select *
        from {{ref('stg_sales_salesreason')}}
    )
    , transformation as (
        select
            row_number() over (order by salesreasonid) as salesreasonid_sk -- auto-incremental surrogate key
            , salesreasonid	
            , name	
            , reasontype	
            , modifieddate
        from selected
    )

    select * from transformation