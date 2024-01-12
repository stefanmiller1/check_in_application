part of check_in_application;

@injectable
class PublicListingWatcherBloc extends Bloc<PublicListingWatcherEvent, PublicListingWatcherState> {

  final facade.LMWatcherFacade _lFacade;

  PublicListingWatcherBloc(this._lFacade) : super(const PublicListingWatcherState.listingsInitial());

  StreamSubscription<Either<ListingFormFailure, List<ListingManagerForm>>>? _allListingItemsStreamSubscription;
  StreamSubscription<Either<ListingFormFailure, List<ListingManagerForm>>>? _allSearchedListingItemsStreamSubscription;

  @override
  Stream<PublicListingWatcherState> mapEventToState(
      PublicListingWatcherEvent event
      ) async* {

        yield* event.map(

            watchAllPublicListingsStarted: (e) async* {
              yield const PublicListingWatcherState.listingsLoadInProgress();
              await _allListingItemsStreamSubscription?.cancel();

              _allListingItemsStreamSubscription = _lFacade.watchAllListingMangerItems(listingIdFilterBy: e.locationIdFilter).listen(
                      (event) {
                        return add(PublicListingWatcherEvent.allListingItemsReceived(event));
              });
            },

            allListingItemsReceived: (e) async* {
                yield e.failedItems.fold(
                        (f) => PublicListingWatcherState.loadAllPublicListingItemsFailure(f),
                        (r) => PublicListingWatcherState.loadAllPublicListingItemsSuccess(r)
                );
            },

            watchAllPublicListingsSearchStarted: (e) async* {
              yield const PublicListingWatcherState.listingsLoadInProgress();
              await _allSearchedListingItemsStreamSubscription?.cancel();

              _allSearchedListingItemsStreamSubscription = _lFacade.watchSearchedListingItems(e.status, e.stateProvince, e.city, e.isVerified).listen(
                      (event) {
                    return add(PublicListingWatcherEvent.allSearchedListingItemsReceived(event));
                  });
            },


            allSearchedListingItemsReceived: (e) async* {
              yield e.failedItems.fold(
                  (f) => PublicListingWatcherState.loadAllSearchedPublicListingItemsFailure(f),
                  (r) => PublicListingWatcherState.loadAllSearchedPublicListingItemsSuccess(r)
              );
            }

    );
  }



}