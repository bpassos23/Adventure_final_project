
with
    selected as (
        select *
        from {{ref('Stg_person_countryregion')}}
    )
    , transformation as (
        select
            row_number() over (order by countryregioncode) as countryregioncode_sk -- auto-incremental surrogate key
            , countryregioncode
            , name
            , modifieddate
        from selected
    )

    select * from transformation