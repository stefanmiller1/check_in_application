part of check_in_application;

@freezed
class ListingManagerWatcherState with _$ListingManagerWatcherState {

  const factory ListingManagerWatcherState.initial() = _ListingMInitial;
  const factory ListingManagerWatcherState.loadInProgress() = _ListingMLoadInProgress;

  const factory ListingManagerWatcherState.loadListingManagerItemSuccess(ListingManagerForm failure) = _LoadListingManagerItemSuccess;
  const factory ListingManagerWatcherState.loadListingManagerItemFailure(ListingFormFailure item) = _LoadListingManagerItemFailure;

}