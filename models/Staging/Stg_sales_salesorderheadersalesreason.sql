with 
    source_data as (
        select 
            salesorderid
            , salesreasonid
            , modifieddate
        from {{  source('IndiciumAdventures110112021','sales_salesorderheadersalesreason')  }}
    )

    select * from source_data