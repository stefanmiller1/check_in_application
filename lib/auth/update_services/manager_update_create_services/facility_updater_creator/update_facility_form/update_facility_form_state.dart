part of check_in_application;

@freezed
class UpdateFacilityState with _$UpdateFacilityState {

  const factory UpdateFacilityState({
    required FacilityCreatorForm facilityCreatorForm,

    required bool isTemporaryFacilityType,
    required bool isNotOwnerFacilityType,
    required AutovalidateMode showErrorMessageFacilityType,

    required AutovalidateMode showErrorMessageLocation,
    required bool isEditingLocation,
    required bool isSubmittingLocation,
    required Option<Either<FacilityFormFailure, Unit>> authFailureOrSuccessOptionLocation,

    required bool isSaving,
    required Option<Either<FacilityFormFailure, Unit>> authFailureOrSuccessOptionSaving,

    required bool isSubmitting,
    required Option<Either<FacilityFormFailure, Unit>> authFailureOrSuccessOptionSubmitting,

  }) = _UpdateFacilityState;


  factory UpdateFacilityState.initial() => UpdateFacilityState(
    facilityCreatorForm: FacilityCreatorForm.empty(),
    isTemporaryFacilityType: false,
    isNotOwnerFacilityType: true,
    showErrorMessageFacilityType: AutovalidateMode.disabled,

    showErrorMessageLocation: AutovalidateMode.disabled,
    isEditingLocation: false,
    isSubmittingLocation: false,
    authFailureOrSuccessOptionLocation: none(),


    isSaving: false,
    isSubmitting: false,
    authFailureOrSuccessOptionSaving: none(),
    authFailureOrSuccessOptionSubmitting: none()

  );

}