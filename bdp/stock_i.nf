﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(stock_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(stock_i))==(Machine(stock));
  Level(Implementation(stock_i))==(1);
  Upper_Level(Implementation(stock_i))==(Machine(stock))
END
&
THEORY LoadedStructureX IS
  Implementation(stock_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(stock_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(stock_i))==(?);
  Inherited_List_Includes(Implementation(stock_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(stock_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(stock_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(stock_i))==(?);
  Context_List_Variables(Implementation(stock_i))==(?);
  Abstract_List_Variables(Implementation(stock_i))==(RequiredAmounts,Shortages,CurrentStocks);
  Local_List_Variables(Implementation(stock_i))==(?);
  List_Variables(Implementation(stock_i))==(?);
  External_List_Variables(Implementation(stock_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(stock_i))==(?);
  Abstract_List_VisibleVariables(Implementation(stock_i))==(?);
  External_List_VisibleVariables(Implementation(stock_i))==(?);
  Expanded_List_VisibleVariables(Implementation(stock_i))==(?);
  List_VisibleVariables(Implementation(stock_i))==(cRequiredAmounts,cShortages,cCurrentStocks);
  Internal_List_VisibleVariables(Implementation(stock_i))==(cRequiredAmounts,cShortages,cCurrentStocks)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(stock_i))==(btrue);
  Expanded_List_Invariant(Implementation(stock_i))==(btrue);
  Abstract_List_Invariant(Implementation(stock_i))==(CurrentStocks: 1..5 --> 0..4000 & Shortages: FIN(1..5) & RequiredAmounts: 1..5 --> 0..4000 & dom(CurrentStocks) = dom(MaxStocks));
  Context_List_Invariant(Implementation(stock_i))==(btrue);
  List_Invariant(Implementation(stock_i))==(cCurrentStocks: 1..5 --> 0..4000 & cRequiredAmounts: 1..5 --> 0..4000 & cShortages: 1..5 --> BOOL & cCurrentStocks = CurrentStocks & dom(cShortages|>{TRUE}) = Shortages & cRequiredAmounts = RequiredAmounts)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(stock_i))==(btrue);
  Abstract_List_Assertions(Implementation(stock_i))==(btrue);
  Context_List_Assertions(Implementation(stock_i))==(btrue);
  List_Assertions(Implementation(stock_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(stock_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(stock_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(stock_i))==(cCurrentStocks:=(1..5)*{0};cShortages:=(1..5)*{TRUE};cRequiredAmounts:=MaxStocks);
  Context_List_Initialisation(Implementation(stock_i))==(skip);
  List_Initialisation(Implementation(stock_i))==(cCurrentStocks:=(1..5)*{0};cShortages:=(1..5)*{TRUE};cRequiredAmounts:=MaxStocks)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(stock_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(stock_i))==(btrue);
  List_Context_Constraints(Implementation(stock_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(stock_i))==(GetShortage);
  List_Operations(Implementation(stock_i))==(GetShortage)
END
&
THEORY ListInputX IS
  List_Input(Implementation(stock_i),GetShortage)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(stock_i),GetShortage)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(stock_i),GetShortage)==(res <-- GetShortage)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(stock_i),GetShortage)==(btrue);
  List_Precondition(Implementation(stock_i),GetShortage)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(stock_i),GetShortage)==(btrue | res:=cShortages);
  List_Substitution(Implementation(stock_i),GetShortage)==(res:=cShortages)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(stock_i))==(MaxStocks);
  Inherited_List_Constants(Implementation(stock_i))==(MaxStocks);
  List_Constants(Implementation(stock_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(stock_i))==(?);
  Context_List_Defered(Implementation(stock_i))==(?);
  Context_List_Sets(Implementation(stock_i))==(?);
  List_Own_Enumerated(Implementation(stock_i))==(?);
  List_Valuable_Sets(Implementation(stock_i))==(?);
  Inherited_List_Enumerated(Implementation(stock_i))==(?);
  Inherited_List_Defered(Implementation(stock_i))==(?);
  Inherited_List_Sets(Implementation(stock_i))==(?);
  List_Enumerated(Implementation(stock_i))==(?);
  List_Defered(Implementation(stock_i))==(?);
  List_Sets(Implementation(stock_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(stock_i))==(?);
  Expanded_List_HiddenConstants(Implementation(stock_i))==(?);
  List_HiddenConstants(Implementation(stock_i))==(?);
  External_List_HiddenConstants(Implementation(stock_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(stock_i))==(MaxStocks: 1..5 --> 0..4000 & MaxStocks = {1|->1000,2|->2000,3|->500,4|->125,5|->4000});
  Context_List_Properties(Implementation(stock_i))==(btrue);
  Inherited_List_Properties(Implementation(stock_i))==(btrue);
  List_Properties(Implementation(stock_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(stock_i))==(btrue);
  Values_Subs(Implementation(stock_i))==(MaxStocks: {1|->1000,2|->2000,3|->500,4|->125,5|->4000});
  List_Values(Implementation(stock_i))==(MaxStocks = {1|->1000,2|->2000,3|->500,4|->125,5|->4000})
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(stock_i))==(Type(cCurrentStocks) == Mvv(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000)));Type(cShortages) == Mvv(SetOf(btype(INTEGER,1,5)*btype(BOOL,0,1)));Type(cRequiredAmounts) == Mvv(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))));
  Operations(Implementation(stock_i))==(Type(GetShortage) == Cst(SetOf(btype(INTEGER,1,5)*btype(BOOL,0,1)),No_type));
  Constants(Implementation(stock_i))==(Type(MaxStocks) == Cst(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(stock_i)) == (? | ? | ? | ? | GetShortage | ? | ? | ? | stock_i);
  List_Of_HiddenCst_Ids(Implementation(stock_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(stock_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(stock_i)) == (cRequiredAmounts,cShortages,cCurrentStocks | ?);
  List_Of_Ids_SeenBNU(Implementation(stock_i)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(stock_i)) == (Type(MaxStocks) == Cst(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(stock_i)) == (Type(cRequiredAmounts) == Mvv(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000)));Type(cShortages) == Mvv(SetOf(btype(INTEGER,1,5)*btype(BOOL,0,1)));Type(cCurrentStocks) == Mvv(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(stock_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(stock_i))==(cCurrentStocks: POW(INTEGER*INTEGER) & cShortages: POW(INTEGER*BOOL) & cRequiredAmounts: POW(INTEGER*INTEGER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
