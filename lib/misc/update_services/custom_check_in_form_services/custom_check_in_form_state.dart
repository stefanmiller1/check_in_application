part of check_in_application;

@freezed
class CustomCheckInFormState with _$CustomCheckInFormState {

  const CustomCheckInFormState._();

  const factory CustomCheckInFormState({
    required CheckInSetting customCheckInSetting,
    required bool isSaving,

  }) = _CustomCheckInFormState;

  factory CustomCheckInFormState.initial() => CustomCheckInFormState(
    customCheckInSetting: CheckInSetting.empty(),
    isSaving: false
  );

}