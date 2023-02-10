part of check_in_application;

@freezed
class UpdateUserProfileAccountEvent with _$UpdateUserProfileAccountEvent {

  const factory UpdateUserProfileAccountEvent.initializedUserProfile(Option<UserProfileModel> initialProfile) = _InitializedUserProfile;
  const factory UpdateUserProfileAccountEvent.initializedSocialsProfile(Option<SocialsItem> initialSocials) = _InitializedSocialsProfile;
  const factory UpdateUserProfileAccountEvent.initializedUserFacilityLocationsProfile(Option<LocationModel> initialLocations) = _InitializedUserFacilityLocationsProfile;
  const factory UpdateUserProfileAccountEvent.initializedNotificationSettingProfile(Option<ProfileNotificationItems> initialNotificationSettings) = _InitializedNotificationSettingProfile;

  const factory UpdateUserProfileAccountEvent.firstLastLegalNameChanged(String legalNameStr) = UserFirstLastLegalNameChanged;
  const factory UpdateUserProfileAccountEvent.lastNameLegalChanged(String lastNameStr) = _LastNameLegalChanged;
  const factory UpdateUserProfileAccountEvent.genderChanged(String genderStr) = GenderChanged;
  const factory UpdateUserProfileAccountEvent.birthDateChanged(String dateStr) = BirthDateChanged;
  const factory UpdateUserProfileAccountEvent.addressChanged(String addressStr) = AddressChanged;
  const factory UpdateUserProfileAccountEvent.imageFilePathChanged(String filePath) = _ImageFilePathChanged;
  const factory UpdateUserProfileAccountEvent.imageUrlChanged(String imageUrl) = _ImageUrlChanged;
  const factory UpdateUserProfileAccountEvent.imageIdFilePathChanged(String imageUrl) = ImageIdFilePathChanged;
  const factory UpdateUserProfileAccountEvent.imageIdUrlChanged(String imageUrl) = _ImageIdUrlChanged;
  const factory UpdateUserProfileAccountEvent.imageSelfieFilePatheChanged(String imageUrl) = _ImageSelfiFilePatheChanged;
  const factory UpdateUserProfileAccountEvent.imageSelfieUrlChanged(String imageUrl) = _ImageSelfieUrlChanged;
      

  const factory UpdateUserProfileAccountEvent.phoneNumberChanged(PhoneNumber? phoneNumbers) = PhoneNumberChanged;
  const factory UpdateUserProfileAccountEvent.emergencyPhoneChanged(PhoneNumber? phoneNumber) = EmergencyPhoneChanged;

  const factory UpdateUserProfileAccountEvent.isChangingPassword(bool passBool) = _UpdateUserProfileAccountEvent;
  const factory UpdateUserProfileAccountEvent.newPasswordChanged(String passStr) = _NewPasswordChanged;
  const factory UpdateUserProfileAccountEvent.passwordConfirmChanged(String confirmStr) = UserPasswordConfirmChanged;

  const factory UpdateUserProfileAccountEvent.instagramContactChanged(String instStr) = InstagramContactChanged;
  const factory UpdateUserProfileAccountEvent.twitterContactChanged(String twitterStr) = TwitterContactChanged;
  const factory UpdateUserProfileAccountEvent.fbookContactChanged(String bookStr) = FBookContactChanged;

  const factory UpdateUserProfileAccountEvent.isAllowedNotifications(bool allowBool) = IsAllowedNotifications;
  const factory UpdateUserProfileAccountEvent.isAllowedEmailNotifications(bool emailBool) = IsAllowedEmailNotifications;
  const factory UpdateUserProfileAccountEvent.isAllowedNewsUpdatesNotifications(bool newsBool) = IsAllowedNewsUpdatesNotifications;

  const factory UpdateUserProfileAccountEvent.isEmailVerified() = IsEmailVerified;
  const factory UpdateUserProfileAccountEvent.finishedEmailVerification() = FinishedEmailVerification;

  const factory UpdateUserProfileAccountEvent.placeIdChanged(String placeIdStr) = PlaceIdChanged;
  const factory UpdateUserProfileAccountEvent.longLatChanged(String longLatStr) = LongLatChanged;
  const factory UpdateUserProfileAccountEvent.countryChanged(String countryStr) = CountryChanged;
  const factory UpdateUserProfileAccountEvent.cityChanged(String cityStr) = CityChanged;
  const factory UpdateUserProfileAccountEvent.provinceStateChanged(String stateStr) = ProvinceStateChanged;
  const factory UpdateUserProfileAccountEvent.streetChanged(String streetStr) = StreetChanged;
  const factory UpdateUserProfileAccountEvent.postalCodeChanged(String postalStr) = PostalCodeChanged;
  const factory UpdateUserProfileAccountEvent.aptNumberChanged(String aptStr) = AptNumberChanged;
  const factory UpdateUserProfileAccountEvent.isLocationConfirmed(bool isConfirmedBool) = IsLocationConfirmed;
  const factory UpdateUserProfileAccountEvent.locationTypeChanged(LocationType type) = LocationTypeChanged;
  const factory UpdateUserProfileAccountEvent.isTemporaryChanged(bool isTemp) = IsTemporaryChanged;
  const factory UpdateUserProfileAccountEvent.isLongTermChanged(bool isLong) = IsLongTermChanged;
  const factory UpdateUserProfileAccountEvent.isPrivateChanged(bool isPrivate) = IsPrivateChanged;
  const factory UpdateUserProfileAccountEvent.isPublicChanged(bool isPublic) = IsPublicChanged;
  const factory UpdateUserProfileAccountEvent.locationOwnerChanged(String ownerStr) = LocationOwnerChanged;

  const factory UpdateUserProfileAccountEvent.didSelectIsSubmitting(bool selectBool) = _DidSelectIsSubmitting;

  const factory UpdateUserProfileAccountEvent.finishedUpdatingAddressFromGoogle(String cityStr, String provinceStr) = FinishedUpdatingAddressFromGoogle;
  const factory UpdateUserProfileAccountEvent.finishedUpdatingAddressFromCoordinates(String countryStr, String streetStr, String cityStr, String stateStr, String postalStr) = FinishedUpdatingAddressFromCoordinates;

  const factory UpdateUserProfileAccountEvent.finishedIdentificationRemoval() = FinishedIdentificationRemoval;
  const factory UpdateUserProfileAccountEvent.finishedUpdatingUserProfile() = FinishedUpdatingUserProfile;
  const factory UpdateUserProfileAccountEvent.finishedUpdatingNewPassword() = FinishedUpdatingNewPassword;
  const factory UpdateUserProfileAccountEvent.finishedUpdatingNotificationSettings() = FinishedUpdatingNotificationSettings;
  const factory UpdateUserProfileAccountEvent.finishedUpdatingUserProfileSocials() = FinishedUpdatingUserProfileSocials;
  const factory UpdateUserProfileAccountEvent.finishedUpdatingUserLocation() = FinishedUpdatingUserLocation;

}