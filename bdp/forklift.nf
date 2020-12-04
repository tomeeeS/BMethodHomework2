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
  Local_List_Variables(Machine(forklift))==(?);
  List_Variables(Machine(forklift))==(?);
  External_List_Variables(Machine(forklift))==(?)
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
  List_Invariant(Machine(forklift))==(btrue)
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
  Expanded_List_Initialisation(Machine(forklift))==(skip);
  Context_List_Initialisation(Machine(forklift))==(skip);
  List_Initialisation(Machine(forklift))==(skip)
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
  Internal_List_Operations(Machine(forklift))==(MoveStock);
  List_Operations(Machine(forklift))==(MoveStock)
END
&
THEORY ListInputX IS
  List_Input(Machine(forklift),MoveStock)==(NewCurrentStock,MaxStockCount_in)
END
&
THEORY ListOutputX IS
  List_Output(Machine(forklift),MoveStock)==(newCurrent,newRequired)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(forklift),MoveStock)==(newCurrent,newRequired <-- MoveStock(NewCurrentStock,MaxStockCount_in))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(forklift),MoveStock)==(NewCurrentStock: 0..4000 & MaxStockCount_in: 0..4000 & NewCurrentStock: 0..4000 & NewCurrentStock<=MaxStockCount_in & MaxStockCount_in-NewCurrentStock: 0..4000)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(forklift),MoveStock)==(NewCurrentStock: 0..4000 & MaxStockCount_in: 0..4000 & NewCurrentStock: 0..4000 & NewCurrentStock<=MaxStockCount_in & MaxStockCount_in-NewCurrentStock: 0..4000 | newCurrent,newRequired:=NewCurrentStock,MaxStockCount_in-NewCurrentStock);
  List_Substitution(Machine(forklift),MoveStock)==(newCurrent:=NewCurrentStock || newRequired:=MaxStockCount_in-NewCurrentStock)
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
  List_ANY_Var(Machine(forklift),MoveStock)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(forklift)) == (? | ? | ? | ? | MoveStock | ? | ? | ? | forklift);
  List_Of_HiddenCst_Ids(Machine(forklift)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(forklift)) == (?);
  List_Of_VisibleVar_Ids(Machine(forklift)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(forklift)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(forklift)) == (Type(MoveStock) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(forklift)) == (Type(MoveStock) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
