part of check_in_application;

@freezed
class ReservationManagerWatcherState with _$ReservationManagerWatcherState {

  const factory ReservationManagerWatcherState.resInitial() = _ResInitial;
  const factory ReservationManagerWatcherState.resLoadInProgress() = _ResLoadInProgress;

  const factory ReservationManagerWatcherState.loadReservationListSuccess(List<ReservationItem> item) = _LoadReservationListSuccess;
  const factory ReservationManagerWatcherState.loadReservationListFailure(ReservationFormFailure failure) = _LoadReservationListFailure;

  const factory ReservationManagerWatcherState.loadCurrentUserReservationsSuccess(List<ReservationItem> item) = _LoadCurrentUserReservationsSuccess;
  const factory ReservationManagerWatcherState.loadCurrentUserReservationsFailure(ReservationFormFailure failure) = _LoadCurrentUserReservationsFailure;

  const factory ReservationManagerWatcherState.loadReservationPostListSuccess(List<Post> posts) = _LoadReservationPostListSuccess;
  const factory ReservationManagerWatcherState.loadReservationPostListFailure(ReservationFormFailure failure) = _LoadReservationPostListFailure;

  const factory ReservationManagerWatcherState.loadReservationItemSuccess(ReservationItem item) = _LoadReservationItemSuccess;
  const factory ReservationManagerWatcherState.loadReservationItemFailure(ReservationFormFailure failure) = _LoadReservationItemFailure;
}