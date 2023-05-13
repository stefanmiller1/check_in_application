part of check_in_application;

@freezed
class PublicListingWatcherEvent with _$PublicListingWatcherEvent {

  const factory PublicListingWatcherEvent.watchAllPublicListingsStarted(List<String>? locationIdFilter) = _WatchAllPublicListingsStarted;
  const factory PublicListingWatcherEvent.allListingItemsReceived(Either<ListingFormFailure, List<ListingManagerForm>> failedItems) = _AllListingItemsReceived;

  const factory PublicListingWatcherEvent.watchAllPublicListingsSearchStarted(List<String>? countriesFilter, String? city, String? stateProvince, bool? isVerified) = _WatchAllPublicListingsSearchStarted;
  const factory PublicListingWatcherEvent.allSearchedListingItemsReceived(Either<ListingFormFailure, List<ListingManagerForm>> failedItems) = _AllSearchedListingItemsReceived;
}