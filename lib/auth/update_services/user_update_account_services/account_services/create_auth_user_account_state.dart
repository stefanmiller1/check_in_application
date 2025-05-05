part of check_in_application;

@freezed
class CreateAuthUserAccountState with _$CreateAuthUserAccountState {

  const factory CreateAuthUserAccountState({
      required UserProfileModel user,
      required bool privacyAndTerms,
      required String loginPassword,
      required Password password,
      required String passwordCheck,
      required PasswordConfirmation passwordConfirmation,
      required AutovalidateMode showErrorMessages,
      required bool isSubmitting,
      required bool isEditing,
      required Option<Either<AuthFailure, UserProfileModel>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, UserProfileModel>> authEmailFailOrSuccessOption,
      required Option<Either<AuthFailure, Unit>> unitFailOrSuccessOption,
  }) = _CreateAuthUserAccountState;

  factory CreateAuthUserAccountState.initial() => CreateAuthUserAccountState(
      user: UserProfileModel.empty(),
      privacyAndTerms: false,
      loginPassword: "",
      password: Password(""),
      passwordCheck: "",
      passwordConfirmation: PasswordConfirmation(Password(""),""),
      showErrorMessages: AutovalidateMode.disabled,
      isSubmitting: false,
      isEditing: false,
      authFailureOrSuccessOption: none(),
      authEmailFailOrSuccessOption: none(),
      unitFailOrSuccessOption: none(),
  );

} 