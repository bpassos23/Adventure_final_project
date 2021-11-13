with 
    source_data as (
        select 
            salesreasonid	
            , name	
            , reasontype	
            , modifieddate
        from {{  source('IndiciumAdventures110112021','sales_salesreason')  }}
    )

    select * from source_data