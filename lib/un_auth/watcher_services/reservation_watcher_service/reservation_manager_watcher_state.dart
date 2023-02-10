part of check_in_application;

@freezed
class ReservationManagerWatcherState with _$ReservationManagerWatcherState {

  const factory ReservationManagerWatcherState.resInitial() = _ResInitial;
  const factory ReservationManagerWatcherState.resLoadInProgress() = _ResLoadInProgress;

  const factory ReservationManagerWatcherState.loadReservationListSuccess(List<ReservationItem> item) = _LoadReservationListSuccess;
  const factory ReservationManagerWatcherState.loadReservationListFailure(ReservationFormFailure failure) = _LoadReservationListFailure;

  const factory ReservationManagerWatcherState.loadCurrentUserReservationsSuccess(List<ReservationItem> item) = _LoadCurrentUserReservationsSuccess;
  const factory ReservationManagerWatcherState.loadCurrentUserReservationsFailure(ReservationFormFailure failure) = _LoadCurrentUserReservationsFailure;

}