part of check_in_application;

@freezed
class ActivityManagerWatcherState with _$ActivityManagerWatcherState {

  const factory ActivityManagerWatcherState.activityMInitial() = _ActivityMInitial;
  const factory ActivityManagerWatcherState.loadInProgress() = _ActivityMLoadInProgress;

  // const factory ActivityManagerWatcherState.loadActivityManagerItemSuccess(ActivityManagerProfile item) = _LoadActivityManagerItemSuccess;
  const factory ActivityManagerWatcherState.loadActivityManagerItemFailure(ActivityFormFailure failure) = _LoadActivityManagerItemFailure;

  const factory ActivityManagerWatcherState.loadActivityManagerFromResSuccess(List<ActivityManagerForm> items) = _LoadActivityManagerFromResSuccess;
  const factory ActivityManagerWatcherState.loadActivityManagerFromResFailure(ActivityFormFailure failure) = _LoadActivityManagerFromResFailure;

  const factory ActivityManagerWatcherState.loadActivityManagerFormSuccess(ActivityManagerForm item) = _LoadActivityManagerFormSuccess;
  const factory ActivityManagerWatcherState.loadActivityManagerFormFailure(ActivityFormFailure failure) = _LoadActivityManagerFormFailure;

  const factory ActivityManagerWatcherState.loadAllActivityManagerFormsSuccess(List<ActivityManagerForm> items) =  _LoadAllActivityManagerFormsSuccess;
  const factory ActivityManagerWatcherState.loadAllActivityManagerFormsFailure(ActivityFormFailure failure) = _LoadAllActivityManagerFormsFailure;

}