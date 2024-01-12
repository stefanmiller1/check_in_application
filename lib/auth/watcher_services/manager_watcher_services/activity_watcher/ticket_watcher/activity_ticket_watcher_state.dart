part of check_in_application;

@freezed
class ActivityTicketWatcherState with _$ActivityTicketWatcherState {

  const factory ActivityTicketWatcherState.initial() = _InitialATicket;
  const factory ActivityTicketWatcherState.loadInProgress() = _ATicketsLoadInProgress;

  const factory ActivityTicketWatcherState.loadAllPurchasedTicketsSuccess(List<TicketItem> tickets) = _LoadAllPurchasedTicketsSuccess;
  const factory ActivityTicketWatcherState.loadAllPurchasedTicketsFailure(AttendeeFormFailure failure) = _LoadAllPurchasedTicketsFailure;

  const factory ActivityTicketWatcherState.loadPurchasedTicketSuccess(List<TicketItem> tickets) = _LoadPurchasedTicketSuccess;
  const factory ActivityTicketWatcherState.loadPurchasedTicketFailure(AttendeeFormFailure failure) = _LoadPurchasedTicketFailure;

  const factory ActivityTicketWatcherState.loadOnHoldTicketsSuccess(List<TicketItem> tickets) = _LoadOnHoldTicketsSuccess;
  const factory ActivityTicketWatcherState.loadOnHoldTicketsFailure(AttendeeFormFailure failure) = _LoadOnHoldTicketsFailure;

  const factory ActivityTicketWatcherState.loadNumberOfTicketsTakenSuccess(int amount) = _LoadNumberOfTicketsTakenSuccess;
  const factory ActivityTicketWatcherState.loadNumberOfTicketsTakenFailure(AttendeeFormFailure failure) = _LoadNumberOfTicketsTakenFailure;

  const factory ActivityTicketWatcherState.loadCurrentUsersTicketsSuccess(List<TicketItem> tickets) = _LoadCurrentUsersTicketsSuccess;
  const factory ActivityTicketWatcherState.loadCurrentUsersTicketsFailure(AttendeeFormFailure failure) = _LoadCurrentUsersTicketsFailure;

}