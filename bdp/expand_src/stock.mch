﻿    /* stock

Keszitsuk el a specifikaciojat egy gyar keszletnyilvantarto rendszerenek. A gyar 5 fele alkatreszt kepes
legyartani es ezeket raktarozni.
A keszletnyilvantarto
rendszer kepes jelezni valtozo(ko)n keresztul a gyarto egysegnek, ha valamely termek
keszlete a tarolo kapacitas 50% a ala sullyed, valamint azt is, hogy hany db legyartasara van szukseg (Feladat5). A
nyilvantarto rendszernek legyen egy betesz (Feladat1), es egy kivesz (Feladat2) muvelet e, amelyeknek egyik parametere az, hogy
mely termekre vonatkozik az adott muvelet.
Az egyes alkatreszek tarolokapacitasa:
- Termek1: 1000 db
- Termek2: 2000 db
- Termek3: 500 db
- Termek4: 125 db
- Termek5: 4000 db
Egy keszletnyilvantarto
szoftverenek a specifikaciojat kell elkesziteni, amelynek az alabbi kovetelmenyeket
kell megvalositania:
- legyen egy olyan muvelet is, ami visszaadja azokat a termekeket, amelyeknel a keszlet a maximalis
tarolo kapacitas 50% a ala sullyedt, (Feladat3)
- rendelkezzen egy muvelettel ami a raktarban levo termekek osszesitett darabszamat adja meg(Feladat4)
*/


MACHINE
    stock
DEFINITIONS
    "definitions.def"

CONCRETE_CONSTANTS
    MaxStocks
PROPERTIES
    MaxStocks : STOCKS --> NUM_OF_STOCK_TYPE
    & MaxStocks = MAX_STOCKS_DEF

ABSTRACT_VARIABLES
    CurrentStocks , Shortages , RequiredAmounts
INVARIANT
    CurrentStocks : STOCKS --> NUM_OF_STOCK_TYPE
    & dom ( CurrentStocks ) = dom ( MaxStocks )
    & ! ii . ( ii : dom ( CurrentStocks ) => CurrentStocks ( ii ) : 0 .. MaxStocks ( ii ) )
    & Shortages : FIN ( { 1 , 2 , 3 , 4 , 5 } )
    & ! xx . ( xx : Shortages => CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 )
    & ! xx . ( ( xx : dom ( CurrentStocks ) & CurrentStocks ( xx ) < MaxStocks ( xx ) / 2 ) => xx : Shortages )
    & RequiredAmounts : STOCKS --> NUM_OF_STOCK_TYPE
    & ! ii . ( ii : dom ( RequiredAmounts ) => RequiredAmounts ( ii ) = MaxStocks ( ii ) - CurrentStocks ( ii ) )
INITIALISATION
    CurrentStocks :: STOCKS --> { 0 }
    || Shortages := STOCKS
    || RequiredAmounts := MaxStocks
OPERATIONS
    Put ( ii , amt ) = //Feladat1
    PRE
        ii : dom ( CurrentStocks )
        & amt : 1 .. 4000
        & CurrentStocks ( ii ) + amt : NUM_OF_STOCK_TYPE
        & CurrentStocks ( ii ) + amt <= MaxStocks ( ii )
        & MaxStocks ( ii ) - ( CurrentStocks ( ii ) + amt ) : NUM_OF_STOCK_TYPE
        //& !yy.((yy : dom(CurrentStocks) & (CurrentStocks<+{ii|->CurrentStocks(ii)+amt})(yy) < MaxStocks(yy) / 2) => yy : Shortages - {ii})
    THEN
        CurrentStocks ( ii ) := CurrentStocks ( ii ) + amt
        || RequiredAmounts ( ii ) := MaxStocks ( ii ) - ( CurrentStocks ( ii ) + amt )
        || Shortages := { xx | xx : dom ( CurrentStocks ) & ( CurrentStocks <+ { ii |-> CurrentStocks ( ii ) + amt } ) ( xx ) < MaxStocks ( xx ) / 2 }
    END
    ;
    Pop ( ii , amt ) = //Feladat2
    PRE
        ii : dom ( CurrentStocks )
        & amt : 1 .. 4000
        & CurrentStocks ( ii ) - amt : NUM_OF_STOCK_TYPE
        & CurrentStocks ( ii ) - amt >= 0
        & CurrentStocks ( ii ) - amt <= MaxStocks ( ii )
        & MaxStocks ( ii ) - ( CurrentStocks ( ii ) - amt ) : NUM_OF_STOCK_TYPE
        //& !yy.((yy : dom(CurrentStocks) & (CurrentStocks<+{ii|->CurrentStocks(ii)-amt})(yy) < MaxStocks(yy) / 2) => yy : Shortages \/ {ii}) 
    THEN
        CurrentStocks ( ii ) := CurrentStocks ( ii ) - amt
        || RequiredAmounts ( ii ) := MaxStocks ( ii ) - ( CurrentStocks ( ii ) - amt )
        || Shortages := { xx | xx : dom ( CurrentStocks ) & ( CurrentStocks <+ { ii |-> CurrentStocks ( ii ) - amt } ) ( xx ) < MaxStocks ( xx ) / 2 }
    END
    ;

    res <-- GetShortage = //Feladat3
    BEGIN
        res : (
            res : STOCKS --> BOOL
            & dom ( res |> { TRUE } ) = Shortages
            & dom ( res |> { FALSE } ) = ( STOCKS ) - Shortages
        )
    END
    ;

    sum <-- GetSum = //Feladat4
    BEGIN
        sum := SIGMA ( xx ) . ( xx : dom ( CurrentStocks ) | CurrentStocks ( xx ) )
    END
    ;

    res <-- GetRequiredAmount ( ii ) = // Feladat5
    PRE
        ii : dom ( RequiredAmounts )
    THEN
       res := RequiredAmounts ( ii )
    END
END
