MACHINE
    shortage_classifier




OPERATIONS

    res <-- IsOnShortage (
        Shortages ,
        CurrentStocks ,
        ii ,
        NewCurrentStock ,
        MaxStocks
    ) =
    PRE
        CurrentStocks : ( 1 .. 5 ) --> ( 0 .. 4000 )
        & ii : dom ( CurrentStocks )
        & MaxStocks : ( 1 .. 5 ) --> ( 0 .. 4000 )
        & Shortages : ( 1 .. 5 ) --> BOOL
        & NewCurrentStock : ( 0 .. 4000 )

        & ! xx . ( xx : dom ( Shortages |> { TRUE } ) =>
            CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
        & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) =>
            xx : dom ( Shortages |> { TRUE } ) )
    THEN
        res : (
            res : ( 1 .. 5 ) --> BOOL

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
