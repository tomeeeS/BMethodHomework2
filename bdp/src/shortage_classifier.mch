MACHINE
    shortage_classifier




OPERATIONS

    res <-- IsOnShortage (
        CurrentStock ,
        MaxStock
    ) =
    PRE
        CurrentStock : ( 0 .. 4000 )
        & MaxStock : ( 0 .. 4000 )

    THEN
        res : (
            res : BOOL
            & ( CurrentStock < MaxStock / 2 =>
                res = TRUE )
            & ( not ( CurrentStock < MaxStock / 2 ) =>
                res = FALSE )
        )
    END


END
