part of check_in_application;

@freezed
class NewsUpdatesWatcherState with _$NewsUpdatesWatcherState {

  const factory NewsUpdatesWatcherState.initial() = _NewsInitial;

  const factory NewsUpdatesWatcherState.loadInProgress() = _NewsLoadInProgress;
  const factory NewsUpdatesWatcherState.loadNewsUpdateSuccess(NewsUpdateModel newsUpdateModel) = _LoadNewsUpdateSuccess;
  const factory NewsUpdatesWatcherState.loadFailure(AuthFailure authFailure) = _NewsLoadFailure;

}