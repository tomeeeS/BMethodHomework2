MACHINE
    forklift

DEFINITIONS
    "definitions.def"
    
OPERATIONS
    
    newCurrent, newRequired <-- BringIntoWarehouse(
        CurrentStockCount_in,
        amt,
        MaxStockCount_in
    ) =
    PRE
        CurrentStockCount_in : NUM_OF_STOCK_TYPE
        & MaxStockCount_in : NUM_OF_STOCK_TYPE
        & amt : 1 .. 4000
        
        & CurrentStockCount_in + amt : NUM_OF_STOCK_TYPE
        & CurrentStockCount_in + amt <= MaxStockCount_in
        & MaxStockCount_in - (CurrentStockCount_in + amt) : NUM_OF_STOCK_TYPE
    THEN
        newCurrent := CurrentStockCount_in + amt
        || newRequired := MaxStockCount_in - (CurrentStockCount_in + amt)
    END
    /*;
    
    
    ret <-- load_delivery_truck(CurrentStocks, ii, amt) 
    BEGIN
        ;
    END
    */
END
