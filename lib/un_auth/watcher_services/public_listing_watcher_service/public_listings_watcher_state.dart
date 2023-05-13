part of check_in_application;

@freezed
class PublicListingWatcherState with _$PublicListingWatcherState {

  const factory PublicListingWatcherState.listingsInitial() = _ListingsInitial;
  const factory PublicListingWatcherState.listingsLoadInProgress() = _ListingsLoadInProgress;

  const factory PublicListingWatcherState.loadAllPublicListingItemsSuccess(List<ListingManagerForm> items) = _LoadAllPublicListingItemsSuccess;
  const factory PublicListingWatcherState.loadAllPublicListingItemsFailure(ListingFormFailure failure) = _LoadAllPublicListingItemsFailure;

  const factory PublicListingWatcherState.loadAllSearchedPublicListingItemsSuccess(List<ListingManagerForm> items) = _LoadAllSearchedPublicListingItemsSuccess;
  const factory PublicListingWatcherState.loadAllSearchedPublicListingItemsFailure(ListingFormFailure failure) = _LoadAllSearchedPublicListingItemsFailure;
}