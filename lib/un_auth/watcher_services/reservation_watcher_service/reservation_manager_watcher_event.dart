part of check_in_application;

@freezed
class ReservationManagerWatcherEvent with _$ReservationManagerWatcherEvent {

  const factory ReservationManagerWatcherEvent.watchDiscoveryReservationsList(List<ReservationSlotState> resState, int? hoursAhead, int? hoursPast, bool? isActivity) = _WatchDiscoveryReservationsList;
  const factory ReservationManagerWatcherEvent.discoveryReservationListReceived(Either<ReservationFormFailure, List<ReservationItem>> resItems) = _DiscoveryReservationListReceived;
  const factory ReservationManagerWatcherEvent.watchReservationsList(List<String> facilityId, String? activityTypeId, bool? isPublic, List<ReservationSlotState>? resState) = _WatchReservationsList;
  const factory ReservationManagerWatcherEvent.reservationListItemsReceived(Either<ReservationFormFailure, List<ReservationItem>> failedItems) = _ReservationListItemsReceived;
  const factory ReservationManagerWatcherEvent.reservationListStreamClosed() = _ReservationListStreamClosed;
  const factory ReservationManagerWatcherEvent.watchCurrentUsersReservations(List<ReservationSlotState> resState, UserProfileModel currentUser, bool isResInvitation, int? limit, bool? isActivity) = _WatchCurrentUsersReservations;
  const factory ReservationManagerWatcherEvent.currentUsersReservationsReceived(Either<ReservationFormFailure, List<ReservationItem>> failedItems) = _CurrentUsersReservationsReceived;
  const factory ReservationManagerWatcherEvent.watchCurrentReservationPosts(String reservationId) = _WatchCurrentReservationPosts;
  const factory ReservationManagerWatcherEvent.currentReservationPostsReceived(Either<ReservationFormFailure, List<Post>> failedItems) = _CurrentReservationPostsReceived;

  const factory ReservationManagerWatcherEvent.watchReservationItem(String reservationId) = _WatchReservationItem;
  const factory ReservationManagerWatcherEvent.reservationItemReceived(Either<ReservationFormFailure, ReservationItem> failedItem) = _ReservationItemReceived;

}