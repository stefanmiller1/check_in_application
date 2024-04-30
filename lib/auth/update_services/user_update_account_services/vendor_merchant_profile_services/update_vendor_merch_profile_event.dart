part of check_in_application;

@freezed
class UpdateVendorMerchProfileEvent with _$UpdateVendorMerchProfileEvent {

  const factory UpdateVendorMerchProfileEvent.initializedVendorMerchantProfile(Option<EventMerchantVendorProfile> initialProfile) = _InitializedVendorMerchantProfile;

  const factory UpdateVendorMerchProfileEvent.isSubmitting(bool submit) = _isSubmittingVendorMerchProfile;

  const factory UpdateVendorMerchProfileEvent.brandNameDidChange(FirstLastName brandName) = _VendorMerchBrandNameDidChange;
  const factory UpdateVendorMerchProfileEvent.descriptionDidChange(BackgroundInfoDescription description) = _VendorMerchDescriptionDidChange;
  const factory UpdateVendorMerchProfileEvent.profileImageChanged(ImageUpload profileImage) = _VendorMerchProfileImageChanged;

  const factory UpdateVendorMerchProfileEvent.websiteURLChanged(String instStr) = _VendorMerchWebsiteURLChanged;
  const factory UpdateVendorMerchProfileEvent.instagramContactChanged(String instStr) = _VendorMerchInstagramContactChanged;
  const factory UpdateVendorMerchProfileEvent.typesDidChange(List<MerchantVendorTypes> types) = _VendorMerchTypesDidChange;
  const factory UpdateVendorMerchProfileEvent.isLookingDidChange(bool lookingBool) = _VendorMerchIsLookingDidChange;
  const factory UpdateVendorMerchProfileEvent.isPrivateProfileDidChange(bool isPrivateBool) = _VendorMerchIsPrivateProfileDidChange;

  const factory UpdateVendorMerchProfileEvent.saveVendorProfileFinished() = _SaveVendorProfileFinished;
  const factory UpdateVendorMerchProfileEvent.deleteVendorProfileFinished() = _DeleteVendorProfileFinished;
}