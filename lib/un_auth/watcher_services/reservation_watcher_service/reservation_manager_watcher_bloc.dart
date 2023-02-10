part of check_in_application;

@injectable
class ReservationManagerWatcherBloc extends Bloc<ReservationManagerWatcherEvent, ReservationManagerWatcherState> {

  final facade.RAuthWatcherFacade _resAuthFacade;

  ReservationManagerWatcherBloc(this._resAuthFacade) : super(const ReservationManagerWatcherState.resInitial());

  StreamSubscription<Either<ReservationFormFailure, List<ReservationItem>>>? _reservationsListStreamSubscription;
  StreamSubscription<Either<ReservationFormFailure, List<ReservationItem>>>? _currentUserReservationsListStreamSubscription;
  
  @override
  Stream<ReservationManagerWatcherState> mapEventToState(
      ReservationManagerWatcherEvent event
      ) async* {

      yield* event.map(

          watchReservationsList: (e) async* {
              yield const ReservationManagerWatcherState.resLoadInProgress();
              await _reservationsListStreamSubscription?.cancel();

              _reservationsListStreamSubscription = _resAuthFacade.watchReservationListingItem(listingId: e.listingId).listen((event) {
                  return add(ReservationManagerWatcherEvent.reservationListItemsReceived(event));
              });
          },


          reservationListItemsReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ReservationManagerWatcherState.loadReservationListFailure(f),
                    (r) => ReservationManagerWatcherState.loadReservationListSuccess(r)
              );
          },

          watchCurrentUsersReservations: (e) async* {
            yield const ReservationManagerWatcherState.resLoadInProgress();
            await _currentUserReservationsListStreamSubscription?.cancel();

            _currentUserReservationsListStreamSubscription = _resAuthFacade.watchCurrentUserReservationItem(currentUser: e.currentUser).listen((event) {
                return add(ReservationManagerWatcherEvent.currentUsersReservationsReceived(event));
            });
          },

          currentUsersReservationsReceived: (e) async* {
            yield e.failedItems.fold(
              (f) => ReservationManagerWatcherState.loadCurrentUserReservationsFailure(f),
              (r) => ReservationManagerWatcherState.loadCurrentUserReservationsSuccess(r)
            );
          },
          

          reservationListStreamClosed: (e) async* {
            await _reservationsListStreamSubscription?.cancel();
          }

    );
  }
}