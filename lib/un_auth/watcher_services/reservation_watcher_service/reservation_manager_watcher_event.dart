part of check_in_application;

@freezed
class ReservationManagerWatcherEvent with _$ReservationManagerWatcherEvent {

  const factory ReservationManagerWatcherEvent.watchReservationsList(List<String> listingId) = _WatchReservationsList;
  const factory ReservationManagerWatcherEvent.reservationListItemsReceived(Either<ReservationFormFailure, List<ReservationItem>> failedItems) = _ReservationListItemsReceived;
  const factory ReservationManagerWatcherEvent.reservationListStreamClosed() = _ReservationListStreamClosed;
  const factory ReservationManagerWatcherEvent.watchCurrentUsersReservations(String? currentUser) = _WatchCurrentUsersReservations;
  const factory ReservationManagerWatcherEvent.currentUsersReservationsReceived(Either<ReservationFormFailure, List<ReservationItem>> failedItems) = _CurrentUsersReservationsReceived;

}