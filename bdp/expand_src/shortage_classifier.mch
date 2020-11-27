MACHINE
    shortage_classifier

DEFINITIONS
    "definitions.def"

OPERATIONS

    res <-- IsOnShortage (
        Shortages ,
        CurrentStocks ,
        ii ,
        amt ,
        MaxStocks
    ) =
    PRE
        Shortages : ( 1 .. 5 ) --> BOOL
        & CurrentStocks : STOCKS --> NUM_OF_STOCK_TYPE
        & ii : dom ( CurrentStocks )
        & MaxStocks : STOCKS --> NUM_OF_STOCK_TYPE
        & amt : 1 .. 4000
        & res : ( 1 .. 5 ) --> BOOL

        & CurrentStocks ( ii ) + amt : NUM_OF_STOCK_TYPE
        & ! xx . ( xx : dom ( Shortages |> { TRUE } ) => CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
        & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) =>
            xx : dom ( Shortages |> { TRUE } ) )
    THEN
        res := Shortages <+ ( { ii |-> bool ( CurrentStocks ( ii ) + amt < MaxStocks ( ii ) / 2 ) } )
    END

END
