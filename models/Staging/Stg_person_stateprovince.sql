with 
    source_data as (
        select 
            stateprovinceid
            , stateprovincecode
            , countryregioncode
            , isonlystateprovinceflag
            , name
            , territoryid
            , rowguid
            , modifieddate
        from {{  source('IndiciumAdventures110112021','person_stateprovince')  }}
    )

    select * from source_data