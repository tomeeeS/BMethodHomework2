MACHINE
    shortage_classifier
    
DEFINITIONS
    "definitions.def"
    
OPERATIONS
    
    res <-- IsOnShortage(
        CurrentStock,
        MaxStock
    ) =
    PRE
        CurrentStock : NUM_OF_STOCK_TYPE
        & MaxStock : NUM_OF_STOCK_TYPE
        
    THEN
        res :(
            res : BOOL
            & (CurrentStock < MaxStock / 2 =>
                res = TRUE)
            & (not(CurrentStock < MaxStock / 2) =>
                res = FALSE)
        )                
    END
    
    
END
