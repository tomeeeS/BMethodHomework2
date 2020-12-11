Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(shortage_classifier_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(shortage_classifier_i))==(Machine(shortage_classifier));
  Level(Implementation(shortage_classifier_i))==(1);
  Upper_Level(Implementation(shortage_classifier_i))==(Machine(shortage_classifier))
END
&
THEORY LoadedStructureX IS
  Implementation(shortage_classifier_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(shortage_classifier_i))==(?);
  Inherited_List_Includes(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(shortage_classifier_i))==(?);
  Context_List_Variables(Implementation(shortage_classifier_i))==(?);
  Abstract_List_Variables(Implementation(shortage_classifier_i))==(?);
  Local_List_Variables(Implementation(shortage_classifier_i))==(?);
  List_Variables(Implementation(shortage_classifier_i))==(?);
  External_List_Variables(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(shortage_classifier_i))==(?);
  Abstract_List_VisibleVariables(Implementation(shortage_classifier_i))==(?);
  External_List_VisibleVariables(Implementation(shortage_classifier_i))==(?);
  Expanded_List_VisibleVariables(Implementation(shortage_classifier_i))==(?);
  List_VisibleVariables(Implementation(shortage_classifier_i))==(?);
  Internal_List_VisibleVariables(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(shortage_classifier_i))==(btrue);
  Expanded_List_Invariant(Implementation(shortage_classifier_i))==(btrue);
  Abstract_List_Invariant(Implementation(shortage_classifier_i))==(btrue);
  Context_List_Invariant(Implementation(shortage_classifier_i))==(btrue);
  List_Invariant(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(shortage_classifier_i))==(btrue);
  Abstract_List_Assertions(Implementation(shortage_classifier_i))==(btrue);
  Context_List_Assertions(Implementation(shortage_classifier_i))==(btrue);
  List_Assertions(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(shortage_classifier_i))==(skip);
  Context_List_Initialisation(Implementation(shortage_classifier_i))==(skip);
  List_Initialisation(Implementation(shortage_classifier_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(shortage_classifier_i))==(btrue);
  List_Context_Constraints(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(shortage_classifier_i))==(IsOnShortage);
  List_Operations(Implementation(shortage_classifier_i))==(IsOnShortage)
END
&
THEORY ListInputX IS
  List_Input(Implementation(shortage_classifier_i),IsOnShortage)==(Shortages,CurrentStocks,ii,NewCurrentStock,MaxStocks)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(shortage_classifier_i),IsOnShortage)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(shortage_classifier_i),IsOnShortage)==(res <-- IsOnShortage(Shortages,CurrentStocks,ii,NewCurrentStock,MaxStocks))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(shortage_classifier_i),IsOnShortage)==(btrue);
  List_Precondition(Implementation(shortage_classifier_i),IsOnShortage)==(CurrentStocks: 1..5 --> 0..4000 & ii: dom(CurrentStocks) & MaxStocks: 1..5 --> 0..4000 & Shortages: 1..5 --> BOOL & NewCurrentStock: 0..4000 & !xx.(xx: dom(Shortages|>{TRUE}) => CurrentStocks(xx)<MaxStocks(xx)/2) & !xx.(xx: dom(CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2 => xx: dom(Shortages|>{TRUE})))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(shortage_classifier_i),IsOnShortage)==(CurrentStocks: 1..5 --> 0..4000 & ii: dom(CurrentStocks) & MaxStocks: 1..5 --> 0..4000 & Shortages: 1..5 --> BOOL & NewCurrentStock: 0..4000 & !xx.(xx: dom(Shortages|>{TRUE}) => CurrentStocks(xx)<MaxStocks(xx)/2) & !xx.(xx: dom(CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2 => xx: dom(Shortages|>{TRUE})) | NewCurrentStock<MaxStocks(ii)/2 ==> (res:=Shortages;(ii: dom(res) | res:=res<+{ii|->TRUE})) [] not(NewCurrentStock<MaxStocks(ii)/2) ==> (res:=Shortages;(ii: dom(res) | res:=res<+{ii|->FALSE}));(assert(!xx.(xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2} => xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2) & (!xx.(xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2}) => {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2} = {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: dom({ii}<<|Shortages) => res(xx) = Shortages(xx)) & dom({ii}<<|Shortages|>{TRUE}) = {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2} & (NewCurrentStock<MaxStocks(ii)/2 => res(ii) = TRUE) & (not(NewCurrentStock<MaxStocks(ii)/2) => res(ii) = FALSE) & dom(Shortages<+{ii|->TRUE}|>{TRUE}) = dom({ii}<<|Shortages|>{TRUE})\/{ii} & Shortages<+{ii|->FALSE} = {ii}<<|Shortages\/{ii|->FALSE} & (Shortages<+{ii|->FALSE} = {ii}<<|Shortages\/{ii|->FALSE} => dom(Shortages<+{ii|->FALSE}|>{TRUE}) = dom({ii}<<|Shortages|>{TRUE})) & {xx | xx: dom({ii}<<|CurrentStocks)\/{ii} & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2} = {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2}\/{xx | xx: {ii} & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2}) | !xx.(xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2} => xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2) & (!xx.(xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2}) => {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2} = {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: dom({ii}<<|Shortages) => res(xx) = Shortages(xx)) & dom({ii}<<|Shortages|>{TRUE}) = {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2} & (NewCurrentStock<MaxStocks(ii)/2 => res(ii) = TRUE) & (not(NewCurrentStock<MaxStocks(ii)/2) => res(ii) = FALSE) & dom(Shortages<+{ii|->TRUE}|>{TRUE}) = dom({ii}<<|Shortages|>{TRUE})\/{ii} & Shortages<+{ii|->FALSE} = {ii}<<|Shortages\/{ii|->FALSE} & (Shortages<+{ii|->FALSE} = {ii}<<|Shortages\/{ii|->FALSE} => dom(Shortages<+{ii|->FALSE}|>{TRUE}) = dom({ii}<<|Shortages|>{TRUE})) & {xx | xx: dom({ii}<<|CurrentStocks)\/{ii} & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2} = {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2}\/{xx | xx: {ii} & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2} ==> skip));
  List_Substitution(Implementation(shortage_classifier_i),IsOnShortage)==(IF NewCurrentStock<MaxStocks(ii)/2 THEN res:=Shortages;res(ii):=TRUE ELSE res:=Shortages;res(ii):=FALSE END;ASSERT !xx.(xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2} => xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2) & (!xx.(xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2 => xx: {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2}) => {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)<MaxStocks(xx)/2} = {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2}) & !xx.(xx: dom({ii}<<|Shortages) => res(xx) = Shortages(xx)) & dom({ii}<<|Shortages|>{TRUE}) = {xx | xx: dom({ii}<<|CurrentStocks) & CurrentStocks(xx)<MaxStocks(xx)/2} & (NewCurrentStock<MaxStocks(ii)/2 => res(ii) = TRUE) & (not(NewCurrentStock<MaxStocks(ii)/2) => res(ii) = FALSE) & dom(Shortages<+{ii|->TRUE}|>{TRUE}) = dom({ii}<<|Shortages|>{TRUE})\/{ii} & Shortages<+{ii|->FALSE} = {ii}<<|Shortages\/{ii|->FALSE} & (Shortages<+{ii|->FALSE} = {ii}<<|Shortages\/{ii|->FALSE} => dom(Shortages<+{ii|->FALSE}|>{TRUE}) = dom({ii}<<|Shortages|>{TRUE})) & {xx | xx: dom({ii}<<|CurrentStocks)\/{ii} & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2} = {xx | xx: dom({ii}<<|CurrentStocks) & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2}\/{xx | xx: {ii} & (CurrentStocks<+{ii|->NewCurrentStock})(xx)+1<=MaxStocks(xx)/2} THEN skip END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(shortage_classifier_i))==(?);
  Inherited_List_Constants(Implementation(shortage_classifier_i))==(?);
  List_Constants(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(shortage_classifier_i))==(?);
  Context_List_Defered(Implementation(shortage_classifier_i))==(?);
  Context_List_Sets(Implementation(shortage_classifier_i))==(?);
  List_Own_Enumerated(Implementation(shortage_classifier_i))==(?);
  List_Valuable_Sets(Implementation(shortage_classifier_i))==(?);
  Inherited_List_Enumerated(Implementation(shortage_classifier_i))==(?);
  Inherited_List_Defered(Implementation(shortage_classifier_i))==(?);
  Inherited_List_Sets(Implementation(shortage_classifier_i))==(?);
  List_Enumerated(Implementation(shortage_classifier_i))==(?);
  List_Defered(Implementation(shortage_classifier_i))==(?);
  List_Sets(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(shortage_classifier_i))==(?);
  Expanded_List_HiddenConstants(Implementation(shortage_classifier_i))==(?);
  List_HiddenConstants(Implementation(shortage_classifier_i))==(?);
  External_List_HiddenConstants(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(shortage_classifier_i))==(btrue);
  Context_List_Properties(Implementation(shortage_classifier_i))==(btrue);
  Inherited_List_Properties(Implementation(shortage_classifier_i))==(btrue);
  List_Properties(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(shortage_classifier_i))==(aa: aa);
  List_Values(Implementation(shortage_classifier_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(shortage_classifier_i))==(Type(IsOnShortage) == Cst(SetOf(btype(INTEGER,1,5)*btype(BOOL,0,1)),SetOf(btype(INTEGER,1,5)*btype(BOOL,0,1))*SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))*btype(INTEGER,?,?)*btype(INTEGER,?,?)*SetOf(btype(INTEGER,1,5)*btype(INTEGER,0,4000))))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(shortage_classifier_i)) == (? | ? | ? | ? | IsOnShortage | ? | ? | ? | shortage_classifier_i);
  List_Of_HiddenCst_Ids(Implementation(shortage_classifier_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(shortage_classifier_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(shortage_classifier_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(shortage_classifier_i)) == (?: ?)
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
  List_Local_Operations(Implementation(shortage_classifier_i))==(?)
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
  TypingPredicate(Implementation(shortage_classifier_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
