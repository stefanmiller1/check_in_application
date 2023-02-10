part of check_in_application;

@freezed
class UpdateFacilityActivityState with _$UpdateFacilityActivityState {

  const UpdateFacilityActivityState._();

  factory UpdateFacilityActivityState({

    required FacilityActivityCreatorForm newActivityOptions,

    required String activityId,
    required String facilityId,

    required bool isEditingProfile,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<ActivityFormFailure, Unit>> authFailureOrSuccessOption,

}) = _UpdateFacilityActivityState;

  factory UpdateFacilityActivityState.initial() => UpdateFacilityActivityState(
      newActivityOptions: FacilityActivityCreatorForm.empty(),
      activityId: '',
      facilityId: '',
      isEditingProfile: false,
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOption: none()
  );

}