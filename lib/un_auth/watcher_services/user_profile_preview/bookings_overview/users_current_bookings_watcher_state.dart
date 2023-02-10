part of check_in_application;

@freezed
class UsersCurrentBookingsCountWatcherState with _$UsersCurrentBookingsCountWatcherState {

  const factory UsersCurrentBookingsCountWatcherState.initial() = _UserBookingsInitial;

  const factory UsersCurrentBookingsCountWatcherState.loadFacilitiesInProgress() = _LoadFacilitiesInProgress;
  const factory UsersCurrentBookingsCountWatcherState.loadActivitiesInProgress() = _LoadActivitiesInProgress;
  const factory UsersCurrentBookingsCountWatcherState.loadSessionsInProgress() = _LoadSessionsInProgress;

  const factory UsersCurrentBookingsCountWatcherState.loadFacilitiesSuccess(int failed) = _LoadFacilitiesSuccess;
  const factory UsersCurrentBookingsCountWatcherState.loadActivitiesSuccess(int failed) = _LoadActivitiesSuccess;
  const factory UsersCurrentBookingsCountWatcherState.loadSessionsSuccess(int failed) = _LoadSessionsSuccess;


  const factory UsersCurrentBookingsCountWatcherState.loadFailure(AuthFailure authFailure) = _UserBookingsLoadFailure;

}