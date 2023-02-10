part of check_in_application;

@freezed
class UpdateActivityFormState with _$UpdateActivityFormState {

  const UpdateActivityFormState._();

  const factory UpdateActivityFormState({
    required ActivityCreatorForm activityCreatorForm,

    required bool isSaving,
    required bool isEditingForm,
    required bool isSubmitting,

    required AutovalidateMode showAddressErrorMessages,
    required Option<Either<FacilityFormFailure, Unit>> authFailureOrSuccessOptionLocation,
    required bool isSubmittingAddress,

    required AutovalidateMode showErrorMessages,
    required Option<Either<ActivityFormFailure, Unit>> authFailureOrSuccessOptionSaving,
    required Option<Either<ActivityFormFailure, Unit>> authFailureOrSuccessOptionSubmitting,

  }) = _UpdateActivityFormState;

  factory UpdateActivityFormState.initial() => UpdateActivityFormState(
      activityCreatorForm: ActivityCreatorForm.empty(),
      isSaving: false,
      isEditingForm: false,
      isSubmitting: false,

      showAddressErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOptionLocation: none(),
      isSubmittingAddress: false,

      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOptionSaving: none(),
      authFailureOrSuccessOptionSubmitting: none()
  );

}