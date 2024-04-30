part of check_in_application;

@freezed
class CirceProfileState with _$CirceProfileState {

  const factory CirceProfileState({
    required CircleProfileItem profile,

    required bool isEditingProfile,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<ProfileValueFailure, Unit>> authFailureOrSuccessOption,
}) = _CirceProfileState;

  factory CirceProfileState.initial() => CirceProfileState(
    profile: CircleProfileItem.empty(),
    isEditingProfile: false,
    isSubmitting: false,
    showErrorMessages: AutovalidateMode.disabled,
    authFailureOrSuccessOption: none(),
  );

}