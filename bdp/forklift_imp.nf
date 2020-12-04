Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(forklift_imp))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(forklift_imp))==(Machine(forklift));
  Level(Implementation(forklift_imp))==(1);
  Upper_Level(Implementation(forklift_imp))==(Machine(forklift))
END
&
THEORY LoadedStructureX IS
  Implementation(forklift_imp)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(forklift_imp))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(forklift_imp))==(?);
  Inherited_List_Includes(Implementation(forklift_imp))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(forklift_imp))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(forklift_imp))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(forklift_imp))==(?);
  Context_List_Variables(Implementation(forklift_imp))==(?);
  Abstract_List_Variables(Implementation(forklift_imp))==(?);
  Local_List_Variables(Implementation(forklift_imp))==(?);
  List_Variables(Implementation(forklift_imp))==(?);
  External_List_Variables(Implementation(forklift_imp))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(forklift_imp))==(?);
  Abstract_List_VisibleVariables(Implementation(forklift_imp))==(?);
  External_List_VisibleVariables(Implementation(forklift_imp))==(?);
  Expanded_List_VisibleVariables(Implementation(forklift_imp))==(?);
  List_VisibleVariables(Implementation(forklift_imp))==(?);
  Internal_List_VisibleVariables(Implementation(forklift_imp))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(forklift_imp))==(btrue);
  Expanded_List_Invariant(Implementation(forklift_imp))==(btrue);
  Abstract_List_Invariant(Implementation(forklift_imp))==(btrue);
  Context_List_Invariant(Implementation(forklift_imp))==(btrue);
  List_Invariant(Implementation(forklift_imp))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(forklift_imp))==(btrue);
  Abstract_List_Assertions(Implementation(forklift_imp))==(btrue);
  Context_List_Assertions(Implementation(forklift_imp))==(btrue);
  List_Assertions(Implementation(forklift_imp))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(forklift_imp))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(forklift_imp))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(forklift_imp))==(skip);
  Context_List_Initialisation(Implementation(forklift_imp))==(skip);
  List_Initialisation(Implementation(forklift_imp))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(forklift_imp))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(forklift_imp))==(btrue);
  List_Context_Constraints(Implementation(forklift_imp))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(forklift_imp))==(BringIntoWarehouse);
  List_Operations(Implementation(forklift_imp))==(BringIntoWarehouse)
END
&
THEORY ListInputX IS
  List_Input(Implementation(forklift_imp),BringIntoWarehouse)==(CurrentStockCount_in,amt,MaxStockCount_in)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(forklift_imp),BringIntoWarehouse)==(newCurrent,newRequired)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(forklift_imp),BringIntoWarehouse)==(newCurrent,newRequired <-- BringIntoWarehouse(CurrentStockCount_in,amt,MaxStockCount_in))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(forklift_imp),BringIntoWarehouse)==(btrue);
  List_Precondition(Implementation(forklift_imp),BringIntoWarehouse)==(CurrentStockCount_in: 0..4000 & MaxStockCount_in: 0..4000 & amt: 1..4000 & CurrentStockCount_in+amt: 0..4000 & CurrentStockCount_in+amt<=MaxStockCount_in & MaxStockCount_in-(CurrentStockCount_in+amt): 0..4000)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(forklift_imp),BringIntoWarehouse)==(CurrentStockCount_in: 0..4000 & MaxStockCount_in: 0..4000 & amt: 1..4000 & CurrentStockCount_in+amt: 0..4000 & CurrentStockCount_in+amt<=MaxStockCount_in & MaxStockCount_in-(CurrentStockCount_in+amt): 0..4000 | (CurrentStockCount_in+amt: INT & CurrentStockCount_in: INT & amt: INT | newCurrent:=CurrentStockCount_in+amt);(MaxStockCount_in-(CurrentStockCount_in+amt): INT & CurrentStockCount_in+amt: INT & CurrentStockCount_in: INT & amt: INT & MaxStockCount_in: INT | newRequired:=MaxStockCount_in-(CurrentStockCount_in+amt)));
  List_Substitution(Implementation(forklift_imp),BringIntoWarehouse)==(newCurrent:=CurrentStockCount_in+amt;newRequired:=MaxStockCount_in-(CurrentStockCount_in+amt))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(forklift_imp))==(?);
  Inherited_List_Constants(Implementation(forklift_imp))==(?);
  List_Constants(Implementation(forklift_imp))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(forklift_imp))==(?);
  Context_List_Defered(Implementation(forklift_imp))==(?);
  Context_List_Sets(Implementation(forklift_imp))==(?);
  List_Own_Enumerated(Implementation(forklift_imp))==(?);
  List_Valuable_Sets(Implementation(forklift_imp))==(?);
  Inherited_List_Enumerated(Implementation(forklift_imp))==(?);
  Inherited_List_Defered(Implementation(forklift_imp))==(?);
  Inherited_List_Sets(Implementation(forklift_imp))==(?);
  List_Enumerated(Implementation(forklift_imp))==(?);
  List_Defered(Implementation(forklift_imp))==(?);
  List_Sets(Implementation(forklift_imp))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(forklift_imp))==(?);
  Expanded_List_HiddenConstants(Implementation(forklift_imp))==(?);
  List_HiddenConstants(Implementation(forklift_imp))==(?);
  External_List_HiddenConstants(Implementation(forklift_imp))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(forklift_imp))==(btrue);
  Context_List_Properties(Implementation(forklift_imp))==(btrue);
  Inherited_List_Properties(Implementation(forklift_imp))==(btrue);
  List_Properties(Implementation(forklift_imp))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(forklift_imp))==(aa: aa);
  List_Values(Implementation(forklift_imp))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(forklift_imp))==(Type(BringIntoWarehouse) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(forklift_imp)) == (? | ? | ? | ? | BringIntoWarehouse | ? | ? | ? | forklift_imp);
  List_Of_HiddenCst_Ids(Implementation(forklift_imp)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(forklift_imp)) == (?);
  List_Of_VisibleVar_Ids(Implementation(forklift_imp)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(forklift_imp)) == (?: ?)
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
  List_Local_Operations(Implementation(forklift_imp))==(?)
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
  TypingPredicate(Implementation(forklift_imp))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
