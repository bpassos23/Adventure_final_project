
with
    selected as (
        select *
        from {{ref('Stg_person_stateprovince')}}
    )
    , transformation as (
        select
            row_number() over (order by stateprovinceid) as stateprovinceid_sk -- auto-incremental surrogate key
            , stateprovinceid
            , stateprovincecode
            , countryregioncode
            , isonlystateprovinceflag
            , name
            , territoryid
            , rowguid
            --, modifieddate
        from selected
    )

    select * from transformation