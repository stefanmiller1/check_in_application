part of check_in_application;

@freezed
class UserProfileWatcherEvent with _$UserProfileWatcherEvent {

  const factory UserProfileWatcherEvent.watchUserProfileStarted() = _WatchUserProfileStarted;
  const factory UserProfileWatcherEvent.userProfileReceived(Either<AuthFailure, UserProfileModel> failedProfile) = _UserProfileReceived;
  const factory UserProfileWatcherEvent.userProfileStreamClosed() = _UserProfileSreamClosed;


  const factory UserProfileWatcherEvent.watchUserAllProfilesStarted() = _WatchUserAllProfilesStarted;
  const factory UserProfileWatcherEvent.allUserProfileReceived(Either<AuthFailure, List<UserProfileModel>> failedProfile) = _AllUserProfileReceived;

  const factory UserProfileWatcherEvent.watchUserSocialsSettingStarted(String userId) = _WatchUserSocialsSettingStarted;
  const factory UserProfileWatcherEvent.userSocialsSettingsReceived(Either<AuthFailure, SocialsItem> failedSocials) = _UserSocialsSettingReceived;

  const factory UserProfileWatcherEvent.watchUserNotificationSettingsStarted(String userId) = _WatchNotificationSettingsStarted;
  const factory UserProfileWatcherEvent.userNotificationSettingsReceived(Either<AuthFailure, ProfileNotificationItems> failedNotifications) = _UserNotificationSettingsReceived;

  const factory UserProfileWatcherEvent.watchUserLocationsStarted(String userId) = _WatchUserLocationsStarted;
  const factory UserProfileWatcherEvent.userLocationsReceived(Either<AuthFailure, List<LocationModel>> failedLocations) = _UserLocationsReceived;

  const factory UserProfileWatcherEvent.watchSelectedUserProfileStarted(String userid) = _WatchSelectedUserStarted;
  const factory UserProfileWatcherEvent.selectedUserProfileReceived(Either<AuthFailure, UserProfileModel> failedProfile) = _SelectedUserProfileReceived;

  const factory UserProfileWatcherEvent.watchProfileActiveSessionsListStarted(String userId) = _WatchProfileActiveSessionsListsStarted;
  const factory UserProfileWatcherEvent.profileActiveSessionsListReceived(Either<AuthFailure, List<ProfileSession>> failedSessions) = _ProfileActiveSessionsListReceived;

  const factory UserProfileWatcherEvent.watchProfileEmailsStarted(String emailAddress) = _WatchProfileEmailsStarted;
  const factory UserProfileWatcherEvent.profileFromEmailReceived(Either<AuthFailure, UserProfileModel> failedProfile) = _ProfileFromEmailReceived;

  const factory UserProfileWatcherEvent.watchSearchedProfileStarted(String query) = _WatchSearchedProfileStarted;
  const factory UserProfileWatcherEvent.searchedProfileReceived(Either<AuthFailure, List<UserProfileModel>> failedQuery) = _SearchedProfileReceived;

  const factory UserProfileWatcherEvent.watchProfileAllAttendingResStarted(ContactStatus? status, AttendeeType? attendingType, int? limit) = _WatchProfileAllAttendingResStarted;
  const factory UserProfileWatcherEvent.profileAllAttendingResReceived(Either<AttendeeFormFailure, List<AttendeeItem>> failedList) = _ProfileAllAttendingResReceived;

}