part of check_in_application;

@injectable
class ReservationManagerWatcherBloc extends Bloc<ReservationManagerWatcherEvent, ReservationManagerWatcherState> {

  final facade.RAuthWatcherFacade _resAuthFacade;

  ReservationManagerWatcherBloc(this._resAuthFacade) : super(const ReservationManagerWatcherState.resInitial());

  StreamSubscription<Either<ReservationFormFailure, List<ReservationItem>>>? _reservationsListStreamSubscription;
  StreamSubscription<Either<ReservationFormFailure, List<ReservationItem>>>? _currentUserReservationsListStreamSubscription;
  StreamSubscription<Either<ReservationFormFailure, List<Post>>>? _reservationPostListStreamSubscription;
  StreamSubscription<Either<ReservationFormFailure, ReservationItem>>? _reservationItemSubscription;
  StreamSubscription<Either<ReservationFormFailure, List<ReservationItem>>>? _reservationDiscoveryListStreamSubscription;

  @override
  Stream<ReservationManagerWatcherState> mapEventToState(
      ReservationManagerWatcherEvent event
      ) async* {

      yield* event.map(

          watchReservationItem: (e) async* {
            yield const ReservationManagerWatcherState.resLoadInProgress();
            await _reservationItemSubscription?.cancel();

            _reservationItemSubscription = _resAuthFacade.watchCurrentReservationItem(reservationId: e.reservationId).listen((event) {
                return add(ReservationManagerWatcherEvent.reservationItemReceived(event));
            });

          },

          reservationItemReceived: (e) async* {
              yield e.failedItem.fold(
                  (f) => ReservationManagerWatcherState.loadReservationItemFailure(f),
                  (r) => ReservationManagerWatcherState.loadReservationItemSuccess(r)
              );
          },


          watchReservationsList: (e) async* {
              yield const ReservationManagerWatcherState.resLoadInProgress();
              await _reservationsListStreamSubscription?.cancel();

              /// returns a list of reservations based on specified parameters.
              _reservationsListStreamSubscription = _resAuthFacade.watchReservationFacilityItem(facilityId: e.facilityId, activityTypeId: e.activityTypeId, isPublic: e.isPublic, resState: e.resState).listen((event) {
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

            _currentUserReservationsListStreamSubscription = _resAuthFacade.watchCurrentUserReservationItem(resState: e.resState, currentUser: e.currentUser, isResInvitation: e.isResInvitation).listen((event) {
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
          },


          watchCurrentReservationPosts: (e) async* {
              yield const ReservationManagerWatcherState.resLoadInProgress();
              await _reservationPostListStreamSubscription?.cancel();

              _reservationPostListStreamSubscription =  _resAuthFacade.watchReservationPostItems(reservationId: e.reservationId).listen((event) {
                return add(ReservationManagerWatcherEvent.currentReservationPostsReceived(event));
              });

          },

          currentReservationPostsReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ReservationManagerWatcherState.loadReservationPostListFailure(f),
                    (r) => ReservationManagerWatcherState.loadReservationPostListSuccess(r)
            );
          },

          watchDiscoveryReservationsList: (e) async* {
                yield const ReservationManagerWatcherState.resLoadInProgress();
                await _reservationDiscoveryListStreamSubscription?.cancel();

                _reservationDiscoveryListStreamSubscription = _resAuthFacade.watchDiscoveryReservationItems(resState: e.resState, hoursTimeAhead: e.hoursAhead, hoursTimeBefore: e.hoursPast).listen((event) {
                  return add(ReservationManagerWatcherEvent.discoveryReservationListReceived(event));
                });
          },

          discoveryReservationListReceived: (e) async* {
              yield e.resItems.fold(
                  (f) => ReservationManagerWatcherState.loadDiscoveryReservationItemFailure(f),
                  (r) => ReservationManagerWatcherState.loadDiscoveryReservationItemSuccess(r)
              );
          }

    );
  }
}