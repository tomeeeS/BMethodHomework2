MACHINE
    shortage_classifier




OPERATIONS

    res <-- IsOnShortage (
        ShortageSet ,
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
        & ShortageSet : FIN ( 1 .. 5 )
        & res : ( 1 .. 5 ) --> BOOL

        & CurrentStocks ( ii ) + amt : ( 0 .. 4000 )
        & ! xx . ( xx : ShortageSet => CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
        & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) => xx : ShortageSet )
    THEN
        res : (
            dom ( res |> { TRUE } ) = ShortageSet
            & dom ( res |> { FALSE } ) = ( ( 1 .. 5 ) ) - ShortageSet
            & ! xx . ( xx : dom ( res |> { TRUE } ) =>
                CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
    & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) =>
        xx : dom ( res |> { TRUE } ) )
        )
    END

END
