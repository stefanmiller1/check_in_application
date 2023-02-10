part of check_in_application;

@freezed
class CustomRuleFormEvent with _$CustomRuleFormEvent {

  factory CustomRuleFormEvent.initialCustomRule(Option<CustomRuleOption> initialCustomRule) = _InitialCustomRule;

  factory CustomRuleFormEvent.customRuleTitleChanged(String titleStr) = _CustomRuleTitleChanged;

  factory CustomRuleFormEvent.customRuleTypeChanged(CustomRuleObjectType typ) = _CustomRuleTypeChanged;
  factory CustomRuleFormEvent.customRuleLabelTextRuleChanged(LabelTextRuleOption labelRule) = _CustomRuleLabelTextRuleChanged;
  factory CustomRuleFormEvent.customRuleSelectionRuleChanged(SelectionLabelOption labelRule) = _CustomRuleSelectionRuleChanged;
  factory CustomRuleFormEvent.customRuleNumberLimitRuleChanged(NumberLimitRuleOption labelRule) = _CustomRuleNumberLimitRuleChanged;
  factory CustomRuleFormEvent.customRuleCheckBoxRuleChanged(CheckBoxRuleOption labelRule) = _CustomRuleCheckBoxRuleChanged;

  factory CustomRuleFormEvent.customRuleDetailsChanged(CustomRuleOptionDetail labelRule) = _CustomRuleDetailsChanged;


  factory CustomRuleFormEvent.didSaveCustomRule() = _CustomDidSaveCustomRule;

}