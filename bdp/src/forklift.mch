MACHINE
    forklift




OPERATIONS

    newCurrent , newRequired <-- MoveStock (
        NewCurrentStock ,
        MaxStockCount_in
    ) =
    PRE
        NewCurrentStock : ( 0 .. 4000 )
        & MaxStockCount_in : ( 0 .. 4000 )

        & NewCurrentStock : ( 0 .. 4000 )
        & NewCurrentStock <= MaxStockCount_in
        & MaxStockCount_in - ( NewCurrentStock ) : ( 0 .. 4000 )
    THEN
        newCurrent := NewCurrentStock
        || newRequired := MaxStockCount_in - NewCurrentStock
    END

END
