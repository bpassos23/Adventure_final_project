
with
    selected as (
        select *
        from {{ref('Stg_person_address')}}
    )
    , transformation as (
        select
            row_number() over (order by addressid) as addressid_sk -- auto-incremental surrogate key
            , addressid
            , addressline1
            , addressline2
            , city
            , stateprovinceid
            , postalcode
            , spatiallocation
            , rowguid
            , modifieddate	
        from selected
    )

    select * from transformation