part of check_in_application;

@injectable
class CustomRuleFormBloc extends Bloc<CustomRuleFormEvent, CustomRuleFormState> {


  CustomRuleFormBloc() : super(CustomRuleFormState.initial());

  @override
  Stream<CustomRuleFormState> mapEventToState(
      CustomRuleFormEvent event) async* {

    yield* event.map(

        initialCustomRule: (e) async* {
          yield e.initialCustomRule.fold(
                  () => state,
                  (ruleOption) => state.copyWith(
                    customRuleOption: ruleOption,
                    isSaving: false
                  )
          );
        },

        customRuleTitleChanged: (e) async* {
          yield state.copyWith(
              customRuleOption:  state.customRuleOption.copyWith(
              customRuleTitleLabel: e.titleStr,
              customRuleType: state.customRuleOption.customRuleType,
              labelTextRuleOption: state.customRuleOption.labelTextRuleOption,
              selectionLabelOption: state.customRuleOption.selectionLabelOption,
              numberLimitRuleOption: state.customRuleOption.numberLimitRuleOption,
              checkBoxRuleOption: state.customRuleOption.checkBoxRuleOption,
              customRuleOptionDetail: state.customRuleOption.customRuleOptionDetail
            )
          );
        },

        customRuleTypeChanged: (e) async* {
          yield state.copyWith(
            customRuleOption: state.customRuleOption.copyWith(
              customRuleTitleLabel: state.customRuleOption.customRuleTitleLabel,
              customRuleType: e.typ,
              labelTextRuleOption: state.customRuleOption.labelTextRuleOption,
              selectionLabelOption: state.customRuleOption.selectionLabelOption,
              numberLimitRuleOption: state.customRuleOption.numberLimitRuleOption,
              checkBoxRuleOption: state.customRuleOption.checkBoxRuleOption,
              customRuleOptionDetail: state.customRuleOption.customRuleOptionDetail
            )
          );

        },

        customRuleLabelTextRuleChanged: (e) async* {

          yield state.copyWith(
              customRuleOption: state.customRuleOption.copyWith(
              customRuleTitleLabel: state.customRuleOption.customRuleTitleLabel,
              customRuleType: state.customRuleOption.customRuleType,
              labelTextRuleOption: e.labelRule,
              selectionLabelOption: state.customRuleOption.selectionLabelOption,
              numberLimitRuleOption: state.customRuleOption.numberLimitRuleOption,
              checkBoxRuleOption: state.customRuleOption.checkBoxRuleOption,
              customRuleOptionDetail: state.customRuleOption.customRuleOptionDetail
            )
          );
        },

        customRuleSelectionRuleChanged: (e) async* {
          yield state.copyWith(
              customRuleOption: state.customRuleOption.copyWith(
              customRuleTitleLabel: state.customRuleOption.customRuleTitleLabel,
              customRuleType: state.customRuleOption.customRuleType,
              labelTextRuleOption: state.customRuleOption.labelTextRuleOption,
              selectionLabelOption: e.labelRule,
              numberLimitRuleOption: state.customRuleOption.numberLimitRuleOption,
              checkBoxRuleOption: state.customRuleOption.checkBoxRuleOption,
              customRuleOptionDetail: state.customRuleOption.customRuleOptionDetail
            )
          );
        },

        customRuleNumberLimitRuleChanged: (e) async* {
          yield state.copyWith(
              customRuleOption: state.customRuleOption.copyWith(
              customRuleTitleLabel: state.customRuleOption.customRuleTitleLabel,
              customRuleType: state.customRuleOption.customRuleType,
              labelTextRuleOption: state.customRuleOption.labelTextRuleOption,
              selectionLabelOption: state.customRuleOption.selectionLabelOption,
              numberLimitRuleOption: e.labelRule,
              checkBoxRuleOption: state.customRuleOption.checkBoxRuleOption,
              customRuleOptionDetail: state.customRuleOption.customRuleOptionDetail
            )
          );
        },

        customRuleCheckBoxRuleChanged: (e) async* {
          yield state.copyWith(
              customRuleOption: state.customRuleOption.copyWith(
              customRuleTitleLabel: state.customRuleOption.customRuleTitleLabel,
              customRuleType: state.customRuleOption.customRuleType,
              labelTextRuleOption: state.customRuleOption.labelTextRuleOption,
              selectionLabelOption: state.customRuleOption.selectionLabelOption,
              numberLimitRuleOption: state.customRuleOption.numberLimitRuleOption,
              checkBoxRuleOption: e.labelRule,
              customRuleOptionDetail: state.customRuleOption.customRuleOptionDetail
            )
          );
        },

        customRuleDetailsChanged: (e) async* {
          yield state.copyWith(
              customRuleOption: state.customRuleOption.copyWith(
              customRuleTitleLabel: state.customRuleOption.customRuleTitleLabel,
              customRuleType: state.customRuleOption.customRuleType,
              labelTextRuleOption: state.customRuleOption.labelTextRuleOption,
              selectionLabelOption: state.customRuleOption.selectionLabelOption,
              numberLimitRuleOption: state.customRuleOption.numberLimitRuleOption,
              checkBoxRuleOption: state.customRuleOption.checkBoxRuleOption,
              customRuleOptionDetail: e.labelRule
            )
          );
        },

        didSaveCustomRule: (e) async* {

        }
    );

  }

}