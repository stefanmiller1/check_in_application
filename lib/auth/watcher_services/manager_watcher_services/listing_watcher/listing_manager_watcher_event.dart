part of check_in_application;

@freezed
class ListingManagerWatcherEvent with _$ListingManagerWatcherEvent {

  const factory ListingManagerWatcherEvent.watchListingManagerItemStarted(String listingId) = _WatchListingManagerItemStarted;
  const factory ListingManagerWatcherEvent.listingManagerItemReceived(Either<ListingFormFailure, ListingManagerForm> failedItems) = _ListingManagerItemReceived;

}