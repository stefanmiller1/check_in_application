part of check_in_application;

@freezed
class UpdateVendorMerchProfileState with _$UpdateVendorMerchProfileState {

  const factory UpdateVendorMerchProfileState({
    required EventMerchantVendorProfile profile,

    required bool isEditingProfile,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<ProfileValueFailure, Unit>> authFailureOrSuccessOption,
  }) = _UpdateVendorMerchProfileState;

  factory UpdateVendorMerchProfileState.initial() => UpdateVendorMerchProfileState(
    profile: EventMerchantVendorProfile.empty(),
    isEditingProfile: false,
    isSubmitting: false,
    showErrorMessages: AutovalidateMode.disabled,
    authFailureOrSuccessOption: none(),
  );

}