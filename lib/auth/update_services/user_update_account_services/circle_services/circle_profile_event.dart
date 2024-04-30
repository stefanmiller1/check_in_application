part of check_in_application;

@freezed
class CircleProfileEvent with _$CircleProfileEvent {

  const factory CircleProfileEvent.initializeCircleProfile(Option<CircleProfileItem> initialProfile) = _InitializeCircleProfile;

  const factory CircleProfileEvent.nameChanged(FirstLastName nameChange) = _CircleProfileNameChanged;
  const factory CircleProfileEvent.profileImageChanged(ImageUpload profileImage) = _CircleProfileImageChanged;
  const factory CircleProfileEvent.instagramContactChanged(String instStr) = _CircleInstagramContactChanged;
  const factory CircleProfileEvent.websiteURLChanged(String webStr) = _CircleWebsiteURLChanged;
  const factory CircleProfileEvent.isPrivateDidChange(bool isPrivateBool) = _CircleIsPrivateDidChange;

  const factory CircleProfileEvent.savedCircleProfileFinished() = _SavedCircleProfileFinished;

}