part of check_in_application;

@freezed
class CreateLocationState with _$CreateLocationState {

  const factory CreateLocationState({
    required LocationModel location,

    required bool isSubmittingAddress,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
}) = _CreateLocationState;

  factory CreateLocationState.initial() => CreateLocationState(
      location: LocationModel.empty(),
      isSubmittingAddress: false,
      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOption: none()
  );

}