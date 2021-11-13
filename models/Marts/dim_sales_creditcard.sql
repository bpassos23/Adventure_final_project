
with
    selected as (
        select *
        from {{ref('Stg_sales_creditcard')}}
    )
    , transformation as (
        select
            row_number() over (order by creditcardid) as creditcardid_sk -- auto-incremental surrogate key
            , creditcardid
            , cardtype
            , cardnumber
            , expmonth
            , expyear
            -- , modifieddate
        from selected
    )

    select * from transformation