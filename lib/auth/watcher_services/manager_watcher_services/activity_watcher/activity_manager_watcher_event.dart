part of check_in_application;

@freezed
class ActivityManagerWatcherEvent with _$ActivityManagerWatcherEvent {

  // const factory ActivityManagerWatcherEvent.watchActivityManagerItemStarted(String activityId) = _WatchActivityManagerItemStarted;
  // const factory ActivityManagerWatcherEvent.activityManagerItemReceived(Either<ActivityFormFailure, ActivityManagerProfile> failedItems) = _ActivityManagerItemReceived;

  const factory ActivityManagerWatcherEvent.watchActivityManagerFromReservations(List<UniqueId> reservationIds) = _WatchActivityManagerFromReservations;
  const factory ActivityManagerWatcherEvent.activityManagerForsmFromReservationsReceived(Either<ActivityFormFailure, List<ActivityManagerForm>> failedItems) = _ActivityManagerForsmFromReservationsReceived;

  const factory ActivityManagerWatcherEvent.watchActivityManagerFormStarted(String activityId) = _WatchActivityCreatorFormStarted;
  const factory ActivityManagerWatcherEvent.activityManagerFormReceived(Either<ActivityFormFailure, ActivityManagerForm> failedItems) = _ActivityCreatorFormReceived;

  const factory ActivityManagerWatcherEvent.watchAllActivityManagerFormsStarted(bool isReservation, String? reservationId) = _WatchAllActivityCreatorFormsStarted;
  const factory ActivityManagerWatcherEvent.allActivityManagerFormsReceived(Either<ActivityFormFailure, List<ActivityManagerForm>> failedItems) = _AllActivityCreatorFormsReceived;


}