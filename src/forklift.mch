MACHINE
    forklift

DEFINITIONS
    "definitions.def"
    
OPERATIONS
    
    newCurrent, newRequired <-- MoveStock(
        NewCurrentStock,
        MaxStockCount_in
    ) =
    PRE
        NewCurrentStock : NUM_OF_STOCK_TYPE
        & MaxStockCount_in : NUM_OF_STOCK_TYPE
        
        & NewCurrentStock : NUM_OF_STOCK_TYPE
        & NewCurrentStock <= MaxStockCount_in
        & MaxStockCount_in - (NewCurrentStock) : NUM_OF_STOCK_TYPE
    THEN
        newCurrent := NewCurrentStock
        || newRequired := MaxStockCount_in - NewCurrentStock
    END
    
END
