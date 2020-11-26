MACHINE
    forklift

DEFINITIONS
    "definitions.def"

ABSTRACT_VARIABLES
    CurrentStockCount , RequiredStockCount , MaxStockCount

INVARIANT
    // types
    CurrentStockCount : NUM_OF_STOCK_TYPE
    & RequiredStockCount : NUM_OF_STOCK_TYPE
    & MaxStockCount : NUM_OF_STOCK_TYPE

    & CurrentStockCount : 0 .. MaxStockCount
    & RequiredStockCount = MaxStockCount - CurrentStockCount

INITIALISATION
    CurrentStockCount := 0
    || RequiredStockCount := 0
    || MaxStockCount := 0

OPERATIONS

    newCurrent , newRequired <-- bring_into_warehouse (
        CurrentStockCount_in ,
        amt ,
        MaxStockCount_in
    ) =
    PRE
        CurrentStockCount_in : NUM_OF_STOCK_TYPE
        & MaxStockCount_in : NUM_OF_STOCK_TYPE
        & amt : 1 .. 4000

        & CurrentStockCount + amt : NUM_OF_STOCK_TYPE
        & CurrentStockCount + amt <= MaxStockCount_in
        & MaxStockCount_in - ( CurrentStockCount_in + amt ) : NUM_OF_STOCK_TYPE
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
