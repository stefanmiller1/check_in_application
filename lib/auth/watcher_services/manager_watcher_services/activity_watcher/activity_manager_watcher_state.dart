part of check_in_application;

@freezed
class ActivityManagerWatcherState with _$ActivityManagerWatcherState {

  const factory ActivityManagerWatcherState.initial() = _ActivityMInitial;
  const factory ActivityManagerWatcherState.loadInProgress() = _ActivityMLoadInProgress;

  // const factory ActivityManagerWatcherState.loadActivityManagerItemSuccess(ActivityManagerProfile item) = _LoadActivityManagerItemSuccess;
  const factory ActivityManagerWatcherState.loadActivityManagerItemFailure(ActivityFormFailure failure) = _LoadActivityManagerItemFailure;

  const factory ActivityManagerWatcherState.loadActivityCreatorFormSuccess(ActivityCreatorForm item) = _LoadActivityCreatorFormSuccess;
  const factory ActivityManagerWatcherState.loadActivityCreatorFormFailure(ActivityFormFailure failure) = _LoadActivityCreatorFormFailure;

  const factory ActivityManagerWatcherState.loadAllActivityCreatorFormsSuccess(List<ActivityCreatorForm> items) =  _LoadAllActivityCreatorFormsSuccess;
  const factory ActivityManagerWatcherState.loadAllActivityCreatorFormsFailure(ActivityFormFailure failure) = _LoadAllActivityCreatorFormsFailure;

}