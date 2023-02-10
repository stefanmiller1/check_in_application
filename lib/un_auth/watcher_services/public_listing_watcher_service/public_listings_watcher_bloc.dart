part of check_in_application;

@injectable
class PublicListingWatcherBloc extends Bloc<PublicListingWatcherEvent, PublicListingWatcherState> {

  final facade.LMWatcherFacade _lFacade;

  PublicListingWatcherBloc(this._lFacade) : super(const PublicListingWatcherState.listingsInitial());

  StreamSubscription<Either<ListingFormFailure, List<ListingManagerForm>>>? _allListingItemsStreamSubscription;

  @override
  Stream<PublicListingWatcherState> mapEventToState(
      PublicListingWatcherEvent event
      ) async* {

        yield* event.map(

            watchAllPublicListingsStarted: (e) async* {
              yield const PublicListingWatcherState.listingsLoadInProgress();
              await _allListingItemsStreamSubscription?.cancel();

              _allListingItemsStreamSubscription = _lFacade.watchAllListingMangerItems(locationIdFilter: e.locationIdFilter).listen(
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

    );
  }

}