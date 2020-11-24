Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(stock))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(stock))==(Machine(stock));
  Level(Machine(stock))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(stock)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(stock))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(stock))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(stock))==(?);
  List_Includes(Machine(stock))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(stock))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(stock))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(stock))==(?);
  Context_List_Variables(Machine(stock))==(?);
  Abstract_List_Variables(Machine(stock))==(?);
  Local_List_Variables(Machine(stock))==(RequiredAmounts,Shortages,CurrentStocks);
  List_Variables(Machine(stock))==(RequiredAmounts,Shortages,CurrentStocks);
  External_List_Variables(Machine(stock))==(RequiredAmounts,Shortages,CurrentStocks)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(stock))==(?);
  Abstract_List_VisibleVariables(Machine(stock))==(?);
  External_List_VisibleVariables(Machine(stock))==(?);
  Expanded_List_VisibleVariables(Machine(stock))==(?);
  List_VisibleVariables(Machine(stock))==(?);
  Internal_List_VisibleVariables(Machine(stock))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(stock))==(btrue);
  Gluing_List_Invariant(Machine(stock))==(btrue);
  Expanded_List_Invariant(Machine(stock))==(btrue);
  Abstract_List_Invariant(Machine(stock))==(btrue);
  Context_List_Invariant(Machine(stock))==(btrue);
  List_Invariant(Machine(stock))==(CurrentStocks: 1..5 --> 0..4000 & Shortages: FIN({1,2,3,4,5}) & RequiredAmounts: 1..5 --> 0..4000 & dom(CurrentStocks) = dom(MaxStocks))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(stock))==(btrue);
  Abstract_List_Assertions(Machine(stock))==(btrue);
  Context_List_Assertions(Machine(stock))==(btrue);
  List_Assertions(Machine(stock))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(stock))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(stock))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(stock))==(@(CurrentStocks$0).(CurrentStocks$0: 1..5 --> {0} ==> CurrentStocks:=CurrentStocks$0) || Shortages:=1..5 || RequiredAmounts:=MaxStocks);
  Context_List_Initialisation(Machine(stock))==(skip);
  List_Initialisation(Machine(stock))==(CurrentStocks:: 1..5 --> {0} || Shortages:=1..5 || RequiredAmounts:=MaxStocks)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(stock))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(stock))==(btrue);
  List_Constraints(Machine(stock))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(stock))==(Put);
  List_Operations(Machine(stock))==(Put)
END
&
THEORY ListInputX IS
  List_Input(Machine(stock),Put)==(ii,amt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(stock),Put)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(stock),Put)==(Put(ii,amt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(stock),Put)==(ii: dom(CurrentStocks) & amt: 1..4000 & CurrentStocks(ii)+amt: 0..4000 & CurrentStocks(ii)+amt<=MaxStocks(ii) & MaxStocks(ii)-(CurrentStocks(ii)+amt): 0..4000)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(stock),Put)==(ii: dom(CurrentStocks) & amt: 1..4000 & CurrentStocks(ii)+amt: 0..4000 & CurrentStocks(ii)+amt<=MaxStocks(ii) & MaxStocks(ii)-(CurrentStocks(ii)+amt): 0..4000 | CurrentStocks,RequiredAmounts:=CurrentStocks<+{ii|->CurrentStocks(ii)+amt},RequiredAmounts<+{ii|->MaxStocks(ii)-(CurrentStocks(ii)+amt)});
  List_Substitution(Machine(stock),Put)==(CurrentStocks(ii):=CurrentStocks(ii)+amt || RequiredAmounts(ii):=MaxStocks(ii)-(CurrentStocks(ii)+amt))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(stock))==(MaxStocks);
  Inherited_List_Constants(Machine(stock))==(?);
  List_Constants(Machine(stock))==(MaxStocks)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(stock))==(?);
  Context_List_Defered(Machine(stock))==(?);
  Context_List_Sets(Machine(stock))==(?);
  List_Valuable_Sets(Machine(stock))==(?);
  Inherited_List_Enumerated(Machine(stock))==(?);
  Inherited_List_Defered(Machine(stock))==(?);
  Inherited_List_Sets(Machine(stock))==(?);
  List_Enumerated(Machine(stock))==(?);
  List_Defered(Machine(stock))==(?);
  List_Sets(Machine(stock))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(stock))==(?);
  Expanded_List_HiddenConstants(Machine(stock))==(?);
  List_HiddenConstants(Machine(stock))==(?);
  External_List_HiddenConstants(Machine(stock))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(stock))==(btrue);
  Context_List_Properties(Machine(stock))==(btrue);
  Inherited_List_Properties(Machine(stock))==(btrue);
  List_Properties(Machine(stock))==(MaxStocks: 1..5 --> 0..4000 & MaxStocks = {1|->1000,2|->2000,3|->500,4|->125,5|->4000})
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(stock),Put)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(stock)) == (MaxStocks | ? | RequiredAmounts,Shortages,CurrentStocks | ? | Put | ? | ? | ? | stock);
  List_Of_HiddenCst_Ids(Machine(stock)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(stock)) == (MaxStocks);
  List_Of_VisibleVar_Ids(Machine(stock)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(stock)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(stock)) == (Type(MaxStocks) == Cst(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(stock)) == (Type(RequiredAmounts) == Mvl(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000)));Type(Shortages) == Mvl(SetOf(btype(INTEGER,?,?)));Type(CurrentStocks) == Mvl(SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(stock)) == (Type(Put) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
)
