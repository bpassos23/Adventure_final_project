with 
    source_data as (
        select 
            customerid
            , personid
            , storeid
            , territoryid
            , rowguid
            , modifieddate
        from {{  source('IndiciumAdventures110112021','sales_customer')  }}
    )

    select * from source_data