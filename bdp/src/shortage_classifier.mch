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
        /* Shortages : (1..5) --> BOOL
        & */ CurrentStocks : ( 1 .. 5 ) --> ( 0 .. 4000 )
        & ii : dom ( CurrentStocks )
        & MaxStocks : ( 1 .. 5 ) --> ( 0 .. 4000 )
        & amt : 1 .. 4000
        & Shortages : ( 1 .. 5 ) --> BOOL

        //& CurrentStocks(ii) + amt : NUM_OF_STOCK_TYPE
        & ! xx . ( xx : dom ( Shortages |> { TRUE } ) =>
            CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
        & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) =>
            xx : dom ( Shortages |> { TRUE } ) )
    THEN
        res : (
            res : ( 1 .. 5 ) --> BOOL
            & dom ( res |> { TRUE } ) = { xx | xx : dom ( CurrentStocks ) & ( CurrentStocks <+ { ii |-> CurrentStocks ( ii ) + amt } ) ( xx ) + 1 <= MaxStocks ( xx ) / 2 }
            & dom ( res |> { FALSE } ) = ( 1 .. 5 ) - { xx | xx : dom ( CurrentStocks ) & ( CurrentStocks <+ { ii |-> CurrentStocks ( ii ) + amt } ) ( xx ) + 1 <= MaxStocks ( xx ) / 2 }
            & ! xx . ( ( xx : dom ( CurrentStocks <+ { ii |-> CurrentStocks ( ii ) + amt } ) & ( CurrentStocks <+ { ii |-> CurrentStocks ( ii ) + amt } ) ( xx ) + 1 <= MaxStocks ( xx ) / 2 ) =>
        xx : dom ( res |> { TRUE } ) )
        )
    END

END
