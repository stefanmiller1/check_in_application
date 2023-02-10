part of check_in_application;

@freezed
class ActivityManagerWatcherEvent with _$ActivityManagerWatcherEvent {

  // const factory ActivityManagerWatcherEvent.watchActivityManagerItemStarted(String activityId) = _WatchActivityManagerItemStarted;
  // const factory ActivityManagerWatcherEvent.activityManagerItemReceived(Either<ActivityFormFailure, ActivityManagerProfile> failedItems) = _ActivityManagerItemReceived;

  const factory ActivityManagerWatcherEvent.watchActivityCreatorFormStarted(String activityId) = _WatchActivityCreatorFormStarted;
  const factory ActivityManagerWatcherEvent.activityCreatorFormReceived(Either<ActivityFormFailure, ActivityCreatorForm> failedItems) = _ActivityCreatorFormReceived;

  const factory ActivityManagerWatcherEvent.watchAllActivityCreatorFormsStarted(List<String> activitySessionIds) = _WatchAllActivityCreatorFormsStarted;
  const factory ActivityManagerWatcherEvent.allActivityCreatorFormsReceived(Either<ActivityFormFailure, List<ActivityCreatorForm>> failedItems) = _AllActivityCreatorFormsReceived;


}