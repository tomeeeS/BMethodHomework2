MACHINE
    shortage_classifier




ABSTRACT_VARIABLES
    CurrentStockCount , RequiredStockCount , MaxStockCount

INVARIANT
    // types
    CurrentStockCount : ( 0 .. 4000 )
    & RequiredStockCount : ( 0 .. 4000 )
    & MaxStockCount : ( 0 .. 4000 )

    & CurrentStockCount <= MaxStockCount
    & RequiredStockCount = MaxStockCount - CurrentStockCount

INITIALISATION
    CurrentStockCount := 0
    || RequiredStockCount := 0
    || MaxStockCount := 0

OPERATIONS
    //bool(cCurrentStocks(ii) + amt < MaxStocks(ii) / 2) 


    newCurrent , newRequired <-- bring_into_warehouse (
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
        CurrentStockCount := CurrentStockCount_in + amt
        || RequiredStockCount := MaxStockCount_in - ( CurrentStockCount_in + amt )
        || MaxStockCount := MaxStockCount_in

        || newCurrent := CurrentStockCount_in + amt
        || newRequired := MaxStockCount_in - ( CurrentStockCount_in + amt )
    END
    /*;
    
    
    ret <-- load_delivery_truck(CurrentStocks, ii, amt) 
    BEGIN
        ;
    END
    */
END
