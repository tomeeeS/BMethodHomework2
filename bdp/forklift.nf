Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(forklift))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(forklift))==(Machine(forklift));
  Level(Machine(forklift))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(forklift)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(forklift))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(forklift))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(forklift))==(?);
  List_Includes(Machine(forklift))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(forklift))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(forklift))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(forklift))==(?);
  Context_List_Variables(Machine(forklift))==(?);
  Abstract_List_Variables(Machine(forklift))==(?);
  Local_List_Variables(Machine(forklift))==(MaxStockCount,RequiredStockCount,CurrentStockCount);
  List_Variables(Machine(forklift))==(MaxStockCount,RequiredStockCount,CurrentStockCount);
  External_List_Variables(Machine(forklift))==(MaxStockCount,RequiredStockCount,CurrentStockCount)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(forklift))==(?);
  Abstract_List_VisibleVariables(Machine(forklift))==(?);
  External_List_VisibleVariables(Machine(forklift))==(?);
  Expanded_List_VisibleVariables(Machine(forklift))==(?);
  List_VisibleVariables(Machine(forklift))==(?);
  Internal_List_VisibleVariables(Machine(forklift))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(forklift))==(btrue);
  Gluing_List_Invariant(Machine(forklift))==(btrue);
  Expanded_List_Invariant(Machine(forklift))==(btrue);
  Abstract_List_Invariant(Machine(forklift))==(btrue);
  Context_List_Invariant(Machine(forklift))==(btrue);
  List_Invariant(Machine(forklift))==(CurrentStockCount: 0..4000 & RequiredStockCount: 0..4000 & MaxStockCount: 0..4000 & CurrentStockCount<=MaxStockCount & RequiredStockCount = MaxStockCount-CurrentStockCount)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(forklift))==(btrue);
  Abstract_List_Assertions(Machine(forklift))==(btrue);
  Context_List_Assertions(Machine(forklift))==(btrue);
  List_Assertions(Machine(forklift))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(forklift))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(forklift))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(forklift))==(CurrentStockCount,RequiredStockCount,MaxStockCount:=0,0,0);
  Context_List_Initialisation(Machine(forklift))==(skip);
  List_Initialisation(Machine(forklift))==(CurrentStockCount:=0 || RequiredStockCount:=0 || MaxStockCount:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(forklift))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(forklift))==(btrue);
  List_Constraints(Machine(forklift))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(forklift))==(bring_into_warehouse);
  List_Operations(Machine(forklift))==(bring_into_warehouse)
END
&
THEORY ListInputX IS
  List_Input(Machine(forklift),bring_into_warehouse)==(CurrentStockCount_in,amt,MaxStockCount_in)
END
&
THEORY ListOutputX IS
  List_Output(Machine(forklift),bring_into_warehouse)==(newCurrent,newRequired)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(forklift),bring_into_warehouse)==(newCurrent,newRequired <-- bring_into_warehouse(CurrentStockCount_in,amt,MaxStockCount_in))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(forklift),bring_into_warehouse)==(CurrentStockCount_in: 0..4000 & MaxStockCount_in: 0..4000 & amt: 1..4000 & CurrentStockCount_in+amt: 0..4000 & CurrentStockCount_in+amt<=MaxStockCount_in & MaxStockCount_in-(CurrentStockCount_in+amt): 0..4000)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(forklift),bring_into_warehouse)==(CurrentStockCount_in: 0..4000 & MaxStockCount_in: 0..4000 & amt: 1..4000 & CurrentStockCount_in+amt: 0..4000 & CurrentStockCount_in+amt<=MaxStockCount_in & MaxStockCount_in-(CurrentStockCount_in+amt): 0..4000 | CurrentStockCount,RequiredStockCount,MaxStockCount,newCurrent,newRequired:=CurrentStockCount_in+amt,MaxStockCount_in-(CurrentStockCount_in+amt),MaxStockCount_in,CurrentStockCount_in+amt,MaxStockCount_in-(CurrentStockCount_in+amt));
  List_Substitution(Machine(forklift),bring_into_warehouse)==(CurrentStockCount:=CurrentStockCount_in+amt || RequiredStockCount:=MaxStockCount_in-(CurrentStockCount_in+amt) || MaxStockCount:=MaxStockCount_in || newCurrent:=CurrentStockCount_in+amt || newRequired:=MaxStockCount_in-(CurrentStockCount_in+amt))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(forklift))==(?);
  Inherited_List_Constants(Machine(forklift))==(?);
  List_Constants(Machine(forklift))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(forklift))==(?);
  Context_List_Defered(Machine(forklift))==(?);
  Context_List_Sets(Machine(forklift))==(?);
  List_Valuable_Sets(Machine(forklift))==(?);
  Inherited_List_Enumerated(Machine(forklift))==(?);
  Inherited_List_Defered(Machine(forklift))==(?);
  Inherited_List_Sets(Machine(forklift))==(?);
  List_Enumerated(Machine(forklift))==(?);
  List_Defered(Machine(forklift))==(?);
  List_Sets(Machine(forklift))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(forklift))==(?);
  Expanded_List_HiddenConstants(Machine(forklift))==(?);
  List_HiddenConstants(Machine(forklift))==(?);
  External_List_HiddenConstants(Machine(forklift))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(forklift))==(btrue);
  Context_List_Properties(Machine(forklift))==(btrue);
  Inherited_List_Properties(Machine(forklift))==(btrue);
  List_Properties(Machine(forklift))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(forklift),bring_into_warehouse)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(forklift)) == (? | ? | MaxStockCount,RequiredStockCount,CurrentStockCount | ? | bring_into_warehouse | ? | ? | ? | forklift);
  List_Of_HiddenCst_Ids(Machine(forklift)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(forklift)) == (?);
  List_Of_VisibleVar_Ids(Machine(forklift)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(forklift)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(forklift)) == (Type(MaxStockCount) == Mvl(btype(INTEGER,?,?));Type(RequiredStockCount) == Mvl(btype(INTEGER,?,?));Type(CurrentStockCount) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(forklift)) == (Type(bring_into_warehouse) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
