part of check_in_application;

@freezed
class PublicListingWatcherEvent with _$PublicListingWatcherEvent {

  const factory PublicListingWatcherEvent.watchAllPublicListingsStarted(String locationIdFilter) = _WatchAllPublicListingsStarted;
  const factory PublicListingWatcherEvent.allListingItemsReceived(Either<ListingFormFailure, List<ListingManagerForm>> failedItems) = _AllListingItemsReceived;

}