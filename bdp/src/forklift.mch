MACHINE
    forklift




OPERATIONS

    newCurrent , newRequired <-- BringIntoWarehouse (
        CurrentStockCount_in ,
        amt ,
        MaxStockCount_in
    ) =
    PRE
        CurrentStockCount_in : ( 0 .. 4000 )
        & MaxStockCount_in : ( 0 .. 4000 )
        & amt : 1 .. 4000

        & CurrentStockCount_in + amt : ( 0 .. 4000 )
        & CurrentStockCount_in + amt <= MaxStockCount_in
        & MaxStockCount_in - ( CurrentStockCount_in + amt ) : ( 0 .. 4000 )
    THEN
        newCurrent := CurrentStockCount_in + amt
        || newRequired := MaxStockCount_in - ( CurrentStockCount_in + amt )
    END
    /*;
    
    
    ret <-- load_delivery_truck(CurrentStocks, ii, amt) 
    BEGIN
        ;
    END
    */
END
