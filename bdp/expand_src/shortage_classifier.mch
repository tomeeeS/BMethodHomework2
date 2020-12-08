MACHINE
    shortage_classifier

DEFINITIONS
    "definitions.def"

OPERATIONS

    res <-- IsOnShortage (
        Shortages ,
        CurrentStocks ,
        ii ,
        NewCurrentStock ,
        MaxStocks
    ) =
    PRE
        CurrentStocks : STOCKS --> NUM_OF_STOCK_TYPE
        & ii : dom ( CurrentStocks )
        & MaxStocks : STOCKS --> NUM_OF_STOCK_TYPE
        & Shortages : STOCKS --> BOOL
        & NewCurrentStock : NUM_OF_STOCK_TYPE

        & ! xx . ( xx : dom ( Shortages |> { TRUE } ) =>
            CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
        & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) =>
            xx : dom ( Shortages |> { TRUE } ) )
    THEN
        res : (
            res : STOCKS --> BOOL

            & dom ( res |> { TRUE } ) = { xx | xx : dom ( CurrentStocks )
                & ( CurrentStocks <+ { ii |-> NewCurrentStock } ) ( xx ) < MaxStocks ( xx ) / 2 }
            & dom ( res |> { FALSE } ) = ( 1 .. 5 ) - { xx | xx : dom ( CurrentStocks )
                & ( CurrentStocks <+ { ii |-> NewCurrentStock } ) ( xx ) < MaxStocks ( xx ) / 2 }

            & ! xx . (
                ( xx : dom ( CurrentStocks <+ { ii |-> NewCurrentStock } )
                & ( CurrentStocks <+ { ii |-> NewCurrentStock } ) ( xx ) < MaxStocks ( xx ) / 2 ) =>
                    xx : dom ( res |> { TRUE } )
            )
            & ! xx . (
                xx : dom ( res |> { TRUE } ) =>
                    ( CurrentStocks <+ { ii |-> NewCurrentStock } ) ( xx ) < MaxStocks ( xx ) / 2
            )
        )
    END

END
