part of check_in_application;

@freezed
class NewsUpdatesWatcherEvent with _$NewsUpdatesWatcherEvent {

  const factory NewsUpdatesWatcherEvent.watchNewsUpdatesStarted() =_WatchNewsUpdatesStarted;
  const factory NewsUpdatesWatcherEvent.newsReceived(Either<AuthFailure, NewsUpdateModel> failedNews) = _NewsReceived;

}
