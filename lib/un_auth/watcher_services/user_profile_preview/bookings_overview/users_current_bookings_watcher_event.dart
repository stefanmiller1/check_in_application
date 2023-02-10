part of check_in_application;

@freezed
class UsersCurrentBookingsCountWatcherEvent with _$UsersCurrentBookingsCountWatcherEvent {

  factory UsersCurrentBookingsCountWatcherEvent.watchFacilityBookingsStarted(UniqueId ownerId, UniqueId bookingId, String facilityType) = _WatchFacilityBookingsStarted;
  factory UsersCurrentBookingsCountWatcherEvent.watchActivityBookingsStarted(UniqueId ownerId, UniqueId bookingId, String activityType) = _WatchActivityBookingsStarted;
  factory UsersCurrentBookingsCountWatcherEvent.watchSessionBookingsStarted(UniqueId ownerId, UniqueId bookingId, String sessionType) = _WatchSessionBookingsStarted;

  factory UsersCurrentBookingsCountWatcherEvent.facilityBookingsCountReceived(Either<AuthFailure, int> failedInt) = _FacilityBookingsCountReceived;
  factory UsersCurrentBookingsCountWatcherEvent.activityBookingsCountReceived(Either<AuthFailure, int> failedInt) = _ActivityookingsCountReceived;
  factory UsersCurrentBookingsCountWatcherEvent.sessionBookingsCountReceived(Either<AuthFailure, int> failedInt) = _SessionBookingsCountReceived;

}