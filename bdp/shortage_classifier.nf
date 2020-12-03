﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(shortage_classifier))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(shortage_classifier))==(Machine(shortage_classifier));
  Level(Machine(shortage_classifier))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(shortage_classifier)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(shortage_classifier))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(shortage_classifier))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(shortage_classifier))==(?);
  List_Includes(Machine(shortage_classifier))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(shortage_classifier))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(shortage_classifier))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(shortage_classifier))==(?);
  Context_List_Variables(Machine(shortage_classifier))==(?);
  Abstract_List_Variables(Machine(shortage_classifier))==(?);
  Local_List_Variables(Machine(shortage_classifier))==(?);
  List_Variables(Machine(shortage_classifier))==(?);
  External_List_Variables(Machine(shortage_classifier))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(shortage_classifier))==(?);
  Abstract_List_VisibleVariables(Machine(shortage_classifier))==(?);
  External_List_VisibleVariables(Machine(shortage_classifier))==(?);
  Expanded_List_VisibleVariables(Machine(shortage_classifier))==(?);
  List_VisibleVariables(Machine(shortage_classifier))==(?);
  Internal_List_VisibleVariables(Machine(shortage_classifier))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(shortage_classifier))==(btrue);
  Gluing_List_Invariant(Machine(shortage_classifier))==(btrue);
  Expanded_List_Invariant(Machine(shortage_classifier))==(btrue);
  Abstract_List_Invariant(Machine(shortage_classifier))==(btrue);
  Context_List_Invariant(Machine(shortage_classifier))==(btrue);
  List_Invariant(Machine(shortage_classifier))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(shortage_classifier))==(btrue);
  Abstract_List_Assertions(Machine(shortage_classifier))==(btrue);
  Context_List_Assertions(Machine(shortage_classifier))==(btrue);
  List_Assertions(Machine(shortage_classifier))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(shortage_classifier))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(shortage_classifier))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(shortage_classifier))==(skip);
  Context_List_Initialisation(Machine(shortage_classifier))==(skip);
  List_Initialisation(Machine(shortage_classifier))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(shortage_classifier))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(shortage_classifier))==(btrue);
  List_Constraints(Machine(shortage_classifier))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(shortage_classifier))==(IsOnShortage);
  List_Operations(Machine(shortage_classifier))==(IsOnShortage)
END
&
THEORY ListInputX IS
  List_Input(Machine(shortage_classifier),IsOnShortage)==(CurrentStock,MaxStock)
END
&
THEORY ListOutputX IS
  List_Output(Machine(shortage_classifier),IsOnShortage)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(shortage_classifier),IsOnShortage)==(res <-- IsOnShortage(CurrentStock,MaxStock))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(shortage_classifier),IsOnShortage)==(CurrentStock: 0..4000 & MaxStock: 0..4000)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(shortage_classifier),IsOnShortage)==(CurrentStock: 0..4000 & MaxStock: 0..4000 | @(res$1).(res$1: BOOL & (CurrentStock<MaxStock/2 => res$1 = TRUE) & (not(CurrentStock<MaxStock/2) => res$1 = FALSE) ==> res:=res$1));
  List_Substitution(Machine(shortage_classifier),IsOnShortage)==(res: (res: BOOL & (CurrentStock<MaxStock/2 => res = TRUE) & (not(CurrentStock<MaxStock/2) => res = FALSE)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(shortage_classifier))==(?);
  Inherited_List_Constants(Machine(shortage_classifier))==(?);
  List_Constants(Machine(shortage_classifier))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(shortage_classifier))==(?);
  Context_List_Defered(Machine(shortage_classifier))==(?);
  Context_List_Sets(Machine(shortage_classifier))==(?);
  List_Valuable_Sets(Machine(shortage_classifier))==(?);
  Inherited_List_Enumerated(Machine(shortage_classifier))==(?);
  Inherited_List_Defered(Machine(shortage_classifier))==(?);
  Inherited_List_Sets(Machine(shortage_classifier))==(?);
  List_Enumerated(Machine(shortage_classifier))==(?);
  List_Defered(Machine(shortage_classifier))==(?);
  List_Sets(Machine(shortage_classifier))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(shortage_classifier))==(?);
  Expanded_List_HiddenConstants(Machine(shortage_classifier))==(?);
  List_HiddenConstants(Machine(shortage_classifier))==(?);
  External_List_HiddenConstants(Machine(shortage_classifier))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(shortage_classifier))==(btrue);
  Context_List_Properties(Machine(shortage_classifier))==(btrue);
  Inherited_List_Properties(Machine(shortage_classifier))==(btrue);
  List_Properties(Machine(shortage_classifier))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(shortage_classifier),IsOnShortage)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(shortage_classifier)) == (? | ? | ? | ? | IsOnShortage | ? | ? | ? | shortage_classifier);
  List_Of_HiddenCst_Ids(Machine(shortage_classifier)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(shortage_classifier)) == (?);
  List_Of_VisibleVar_Ids(Machine(shortage_classifier)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(shortage_classifier)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(shortage_classifier)) == (Type(IsOnShortage) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(shortage_classifier)) == (Type(IsOnShortage) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
