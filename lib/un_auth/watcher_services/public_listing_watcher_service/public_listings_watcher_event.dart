part of check_in_application;

@freezed
class PublicListingWatcherEvent with _$PublicListingWatcherEvent {

  const factory PublicListingWatcherEvent.watchAllPublicListingsStarted(List<String>? locationIdFilter) = _WatchAllPublicListingsStarted;
  const factory PublicListingWatcherEvent.allListingItemsReceived(Either<ListingFormFailure, List<ListingManagerForm>> failedItems) = _AllListingItemsReceived;

  const factory PublicListingWatcherEvent.watchAllPublicListingsSearchStarted(List<ManagerListingStatusType> status, String? city, String? stateProvince, bool? isVerified) = _WatchAllPublicListingsSearchStarted;
  const factory PublicListingWatcherEvent.allSearchedListingItemsReceived(Either<ListingFormFailure, List<ListingManagerForm>> failedItems) = _AllSearchedListingItemsReceived;

  const factory PublicListingWatcherEvent.watchSelectedUsersPublicListingsStarted(List<ManagerListingStatusType> status, String? userId, bool? isVerified) = _WatchSelectedUsersPublicListingsStarted;
  const factory PublicListingWatcherEvent.allSelectedUsersListingsReceived(Either<ListingFormFailure, List<ListingManagerForm>> failedItems) = _AllSelectedUsersListingsReceived;

}