with 
    source_data as (
        select 
            countryregioncode
            , name
            , modifieddate
        from {{  source('IndiciumAdventures110112021','person_countryregion')  }}
    )

    select * from source_data