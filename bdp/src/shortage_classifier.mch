MACHINE
    shortage_classifier




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
        & CurrentStocks : ( 1 .. 5 ) --> ( 0 .. 4000 )
        & ii : dom ( CurrentStocks )
        & MaxStocks : ( 1 .. 5 ) --> ( 0 .. 4000 )
        & amt : 1 .. 4000
        & res : ( 1 .. 5 ) --> BOOL

        & CurrentStocks ( ii ) + amt : ( 0 .. 4000 )
        & ! xx . ( xx : dom ( Shortages |> { TRUE } ) => CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
        & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) =>
            xx : dom ( Shortages |> { TRUE } ) )
    THEN
        res := Shortages <+ ( { ii |-> bool ( CurrentStocks ( ii ) + amt < MaxStocks ( ii ) / 2 ) } )
    END

END
