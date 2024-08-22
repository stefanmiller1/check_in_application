part of check_in_application;

@injectable
class ListingManagerWatcherBloc extends Bloc<ListingManagerWatcherEvent, ListingManagerWatcherState> {

  final facade.LMWatcherFacade _lmFacade;

  ListingManagerWatcherBloc(this._lmFacade) : super(const ListingManagerWatcherState.initial());

  StreamSubscription<Either<ListingFormFailure, ListingManagerForm>>? _listingManagerItemStreamSubscription;

  @override
  Stream<ListingManagerWatcherState> mapEventToState(
      ListingManagerWatcherEvent event
      ) async* {

        yield* event.map(

        watchListingManagerItemStarted: (e) async* {
              yield const ListingManagerWatcherState.loadInProgress();
              await _listingManagerItemStreamSubscription?.cancel();

              _listingManagerItemStreamSubscription = _lmFacade.watchListingManagerItem(listingId: e.listingId).listen(
                      (event) {

                        return add(ListingManagerWatcherEvent.listingManagerItemReceived(event));
                  });
        },

        listingManagerItemReceived: (e) async* {
              yield e.failedItems.fold(
                      (f) => ListingManagerWatcherState.loadListingManagerItemFailure(f),
                      (r) => ListingManagerWatcherState.loadListingManagerItemSuccess(r));
       },
    );
  }
}