part of check_in_application;

@freezed
class CustomRuleFormState with _$CustomRuleFormState {

  const CustomRuleFormState._();

  const factory CustomRuleFormState({
    required CustomRuleOption customRuleOption,
    required List<NumberLimitRule> numberOptions,

    required bool isSaving,
}) = _CustomRuleFormState;

  factory CustomRuleFormState.initial() => CustomRuleFormState(
    customRuleOption: CustomRuleOption(ruleId: UniqueId(), customRuleTitleLabel: ''),
    numberOptions: [],
    isSaving: false
  );

}