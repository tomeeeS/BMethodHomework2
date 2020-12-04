Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(forklift_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(forklift_i))==(Machine(forklift));
  Level(Implementation(forklift_i))==(1);
  Upper_Level(Implementation(forklift_i))==(Machine(forklift))
END
&
THEORY LoadedStructureX IS
  Implementation(forklift_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(forklift_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(forklift_i))==(?);
  Inherited_List_Includes(Implementation(forklift_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(forklift_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(forklift_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(forklift_i))==(?);
  Context_List_Variables(Implementation(forklift_i))==(?);
  Abstract_List_Variables(Implementation(forklift_i))==(?);
  Local_List_Variables(Implementation(forklift_i))==(?);
  List_Variables(Implementation(forklift_i))==(?);
  External_List_Variables(Implementation(forklift_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(forklift_i))==(?);
  Abstract_List_VisibleVariables(Implementation(forklift_i))==(?);
  External_List_VisibleVariables(Implementation(forklift_i))==(?);
  Expanded_List_VisibleVariables(Implementation(forklift_i))==(?);
  List_VisibleVariables(Implementation(forklift_i))==(?);
  Internal_List_VisibleVariables(Implementation(forklift_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(forklift_i))==(btrue);
  Expanded_List_Invariant(Implementation(forklift_i))==(btrue);
  Abstract_List_Invariant(Implementation(forklift_i))==(btrue);
  Context_List_Invariant(Implementation(forklift_i))==(btrue);
  List_Invariant(Implementation(forklift_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(forklift_i))==(btrue);
  Abstract_List_Assertions(Implementation(forklift_i))==(btrue);
  Context_List_Assertions(Implementation(forklift_i))==(btrue);
  List_Assertions(Implementation(forklift_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(forklift_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(forklift_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(forklift_i))==(skip);
  Context_List_Initialisation(Implementation(forklift_i))==(skip);
  List_Initialisation(Implementation(forklift_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(forklift_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(forklift_i))==(btrue);
  List_Context_Constraints(Implementation(forklift_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(forklift_i))==(MoveStock);
  List_Operations(Implementation(forklift_i))==(MoveStock)
END
&
THEORY ListInputX IS
  List_Input(Implementation(forklift_i),MoveStock)==(NewCurrentStock,MaxStockCount_in)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(forklift_i),MoveStock)==(newCurrent,newRequired)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(forklift_i),MoveStock)==(newCurrent,newRequired <-- MoveStock(NewCurrentStock,MaxStockCount_in))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(forklift_i),MoveStock)==(btrue);
  List_Precondition(Implementation(forklift_i),MoveStock)==(NewCurrentStock: 0..4000 & MaxStockCount_in: 0..4000 & NewCurrentStock: 0..4000 & NewCurrentStock<=MaxStockCount_in & MaxStockCount_in-NewCurrentStock: 0..4000)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(forklift_i),MoveStock)==(NewCurrentStock: 0..4000 & MaxStockCount_in: 0..4000 & NewCurrentStock: 0..4000 & NewCurrentStock<=MaxStockCount_in & MaxStockCount_in-NewCurrentStock: 0..4000 | (NewCurrentStock: INT | newCurrent:=NewCurrentStock);(MaxStockCount_in-NewCurrentStock: INT & MaxStockCount_in: INT & NewCurrentStock: INT | newRequired:=MaxStockCount_in-NewCurrentStock));
  List_Substitution(Implementation(forklift_i),MoveStock)==(newCurrent:=NewCurrentStock;newRequired:=MaxStockCount_in-NewCurrentStock)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(forklift_i))==(?);
  Inherited_List_Constants(Implementation(forklift_i))==(?);
  List_Constants(Implementation(forklift_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(forklift_i))==(?);
  Context_List_Defered(Implementation(forklift_i))==(?);
  Context_List_Sets(Implementation(forklift_i))==(?);
  List_Own_Enumerated(Implementation(forklift_i))==(?);
  List_Valuable_Sets(Implementation(forklift_i))==(?);
  Inherited_List_Enumerated(Implementation(forklift_i))==(?);
  Inherited_List_Defered(Implementation(forklift_i))==(?);
  Inherited_List_Sets(Implementation(forklift_i))==(?);
  List_Enumerated(Implementation(forklift_i))==(?);
  List_Defered(Implementation(forklift_i))==(?);
  List_Sets(Implementation(forklift_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(forklift_i))==(?);
  Expanded_List_HiddenConstants(Implementation(forklift_i))==(?);
  List_HiddenConstants(Implementation(forklift_i))==(?);
  External_List_HiddenConstants(Implementation(forklift_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(forklift_i))==(btrue);
  Context_List_Properties(Implementation(forklift_i))==(btrue);
  Inherited_List_Properties(Implementation(forklift_i))==(btrue);
  List_Properties(Implementation(forklift_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(forklift_i))==(aa: aa);
  List_Values(Implementation(forklift_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(forklift_i))==(Type(MoveStock) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(forklift_i)) == (? | ? | ? | ? | MoveStock | ? | ? | ? | forklift_i);
  List_Of_HiddenCst_Ids(Implementation(forklift_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(forklift_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(forklift_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(forklift_i)) == (?: ?)
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
  List_Local_Operations(Implementation(forklift_i))==(?)
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
  TypingPredicate(Implementation(forklift_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
