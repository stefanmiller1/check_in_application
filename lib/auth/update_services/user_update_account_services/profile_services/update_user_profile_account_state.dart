part of check_in_application;

@freezed
class UpdateUserProfileAccountState with _$UpdateUserProfileAccountState {

  const factory UpdateUserProfileAccountState({
    required ProfileItem profile,
    required bool showProfilePreview,

    required bool isEditingProfile,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>> deleteAuthFailureOrSuccessOption,



    required bool isChangingPassword,
    required Password password,
    required String passwordCheck,
    required PasswordConfirmation passwordConfirmation,

    required bool isEmailVerified,

    ImageUpload? profileImagePath,
    String? profileImageUrl,
    String? photoIdImagePath,
    String? photoIdImageUrl,
    String? photoSelfieImagePath,
    String? photoSelfieImageUrl,
    required bool isShortTerm,
    required bool isLongTerm,
    required bool isPrivate,
    required bool isPublic,
    required bool isSubmittingAddress,

}) = _UpdateUserProfileAccountState;

  factory UpdateUserProfileAccountState.initial() => UpdateUserProfileAccountState(
      profile: ProfileItem.empty(),
      isEmailVerified: false,
      isChangingPassword: false,
      password: Password(""),
      passwordCheck: "",
      passwordConfirmation: PasswordConfirmation(Password(""),""),
      isSubmittingAddress: false,
      isShortTerm: false,
      isLongTerm: false,
      isPrivate: false,
      isPublic: false,
      isEditingProfile: false,
      isSubmitting: false,
      showProfilePreview: false,
      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOption: none(),
      deleteAuthFailureOrSuccessOption: none(),
  );

}