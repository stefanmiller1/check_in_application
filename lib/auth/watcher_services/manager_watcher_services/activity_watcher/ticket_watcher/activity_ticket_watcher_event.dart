part of check_in_application;

@freezed
class ActivityTicketWatcherEvent with _$ActivityTicketWatcherEvent {

  const factory ActivityTicketWatcherEvent.watchAllPurchasedTicketsStarted(String reservationId) = _WatchAllPurchasedTicketsStarted;
  const factory ActivityTicketWatcherEvent.allPurchasedTicketsReceived(Either<AttendeeFormFailure, List<TicketItem>> failedItem) = _AllPurchasedTicketsReceived;

  const factory ActivityTicketWatcherEvent.watchPurchasedTicketsStarted(String reservationId, String ticketId) = _WatchPurchasedTicketsStarted;
  const factory ActivityTicketWatcherEvent.purchasedTicketsReceived(Either<AttendeeFormFailure, List<TicketItem>> failedItem) = _PurchasedTicketsReceived;

  const factory ActivityTicketWatcherEvent.watchTicketsOnHoldStarted(String reservationId, String ticketId) = _WatchTicketsOnHoldStarted;
  const factory ActivityTicketWatcherEvent.onHoldTicketsReceived(Either<AttendeeFormFailure, List<TicketItem>> failedItem) = _OnHoldTicketsReceived;

  const factory ActivityTicketWatcherEvent.watchNumberOfTicketsTakenStarted(String reservationId, String ticketId) = _WatchNumberOfTicketsRemainingStarted;
  const factory ActivityTicketWatcherEvent.numberOfTicketsTakenReceived(Either<AttendeeFormFailure, int> failedItem) = _NumberOfTicketsTakenReceived;

  const factory ActivityTicketWatcherEvent.watchCurrentUserTicketsStarted(String userId, String reservationId) = _WatchCurrentUserTickets;
  const factory ActivityTicketWatcherEvent.currentUserTicketsReceived(Either<AttendeeFormFailure, List<TicketItem>> failedItem) = _CurrentUserTicketsReceived;


}