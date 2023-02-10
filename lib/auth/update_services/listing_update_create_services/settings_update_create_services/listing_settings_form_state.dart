part of check_in_application;

@freezed
class ListingSettingFormState with _$ListingSettingFormState {

  const ListingSettingFormState._();

  const factory ListingSettingFormState({
    required ListingManagerForm listingManagerForm,

    required bool isSaving,
    required AutovalidateMode showErrorMessages,
    required Option<Either<ListingFormFailure, Unit>> authFailureOrSuccessOptionSaving,

    required bool isEditingSettings,
    required bool isSavingSettings,
    required AutovalidateMode showErrorMessageSettings,
    required Option<Either<ListingFormFailure, Unit>> authFailureOrSuccessOptionSettingsSaving,

    required AutovalidateMode showAddressErrorMessages,
    required Option<Either<FacilityFormFailure, Unit>> authFailureOrSuccessOptionLocation,
    required bool isSavingAddress,

    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOptionStripe,

  }) = _ListingSettingFormState;

  factory ListingSettingFormState.initial() => ListingSettingFormState(
    listingManagerForm: ListingManagerForm.empty(),

    isSaving: false,
    showErrorMessages: AutovalidateMode.disabled,
    authFailureOrSuccessOptionSaving: none(),

    isEditingSettings: false,
    isSavingSettings: false,
    showErrorMessageSettings: AutovalidateMode.disabled,
    authFailureOrSuccessOptionSettingsSaving: none(),

    isSavingAddress: false,
    showAddressErrorMessages: AutovalidateMode.disabled,
    authFailureOrSuccessOptionLocation: none(),

      authFailureOrSuccessOptionStripe: none(),
  );

}