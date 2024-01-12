part of check_in_application;

@freezed
class UserProfileWatcherState with _$UserProfileWatcherState {

  const factory UserProfileWatcherState.initial() = _UserProfileInitial;
  const factory UserProfileWatcherState.loadInProgress() = _UserProfileLoadInProgress;

  const factory UserProfileWatcherState.loadUserProfileSuccess(UserProfileModel profile) = _LoadUserProfileSuccess;
  const factory UserProfileWatcherState.loadProfileFailure(AuthFailure failure) = _LoadProfileFailure;

  const factory UserProfileWatcherState.loadSelectedProfileSuccess(UserProfileModel profile) = _LoadSelectedProfileSuccess;
  const factory UserProfileWatcherState.loadSelectedProfileFailure(AuthFailure failure) = _LoadSelectedProfileFailure;

  const factory UserProfileWatcherState.loadProfileFromEmailSuccess(UserProfileModel profile) = _LoadProfileFromEmailSuccess;
  const factory UserProfileWatcherState.loadProfileFromEmailFailure(AuthFailure failure) = _LoadProfileFromEmailFailure;


  const factory UserProfileWatcherState.loadAllUserProfilesSuccess(List<UserProfileModel> profile) = _LoadAllUserProfilesSuccess;
  const factory UserProfileWatcherState.loadAllProfilesFailure(AuthFailure failure) = _LoadAllProfilesFailure;

  const factory UserProfileWatcherState.loadUserProfileNotificationSettingSuccess(ProfileNotificationItems notificationSetting) = _LoadUserProfileNotificationSettingSuccess;
  const factory UserProfileWatcherState.loadNotificationSettingsFailure(AuthFailure failure) = _LoadNotificationSettingsFailure;

  const factory UserProfileWatcherState.loadUserProfileSocialsSuccess(SocialsItem socials) = _LoadUserProfileSocialsSuccess;
  const factory UserProfileWatcherState.loadSocialsFailure(AuthFailure failure) = _LoadSocialsFailure;

  /// payment subscriptions
  /// payment invoices
  /// payment refunds

  const factory UserProfileWatcherState.loadUserProfileLocationsSuccess(List<LocationModel> locations) = _LoadUserProfileLocationsSuccess;
  const factory UserProfileWatcherState.loadLocationsFailure(AuthFailure failure) = _LoadLocationsFailure;


  const factory UserProfileWatcherState.loadUserProfileSessionsSuccess(List<ProfileSession> sessions) = _LoadUserProfileSessionsSuccess;
  const factory UserProfileWatcherState.loadSessionsFailure(AuthFailure failure) = _LoadSessionsFailure;

  const factory UserProfileWatcherState.loadSearchedProfileSuccess(List<UserProfileModel> profiles) = _LoadSearchedProfileSuccess;
  const factory UserProfileWatcherState.loadSearchProfileFailure(AuthFailure failure) = _LoadSearchProfileFailure;

  const factory UserProfileWatcherState.loadProfileAttendingResSuccess(List<AttendeeItem> attending) = _LoadProfileAttendingResSuccess;
  const factory UserProfileWatcherState.loadProfileAttendingResFailure(AttendeeFormFailure failure) = _LoadProfileAttendingResFailure;
  
}