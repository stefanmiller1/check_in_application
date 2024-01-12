part of check_in_application;

@injectable
class ActivityTicketWatcherBloc extends Bloc<ActivityTicketWatcherEvent, ActivityTicketWatcherState> {

  final facade.TWatcherFacade _tFacade;

  ActivityTicketWatcherBloc(this._tFacade) : super(ActivityTicketWatcherState.initial());

  StreamSubscription<Either<AttendeeFormFailure, List<TicketItem>>>? _purchasedTicketsStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, List<TicketItem>>>? _onHoldTicketsStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, List<TicketItem>>>? _allPurchasedTicketsStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, int>>? _numberOfTicketsTakenStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, List<TicketItem>>>? _currentUsersTicketsStreamSubscription;

  @override
  Stream<ActivityTicketWatcherState> mapEventToState(
      ActivityTicketWatcherEvent event) async* {

    yield* event.map(

        watchAllPurchasedTicketsStarted: (e) async* {
          yield const ActivityTicketWatcherState.loadInProgress();
          await _allPurchasedTicketsStreamSubscription?.cancel();

          _allPurchasedTicketsStreamSubscription = _tFacade.watchAllPurchasedTickets(reservationId: e.reservationId).listen(
                  (event) {
                    return add(ActivityTicketWatcherEvent.allPurchasedTicketsReceived(event));
          });
        },

        allPurchasedTicketsReceived: (e) async* {
            yield e.failedItem.fold(
                (f) => ActivityTicketWatcherState.loadAllPurchasedTicketsFailure(f),
                (r) => ActivityTicketWatcherState.loadAllPurchasedTicketsSuccess(r)
            );
        },

        watchPurchasedTicketsStarted: (e) async* {
            yield const ActivityTicketWatcherState.loadInProgress();
            await _purchasedTicketsStreamSubscription?.cancel();

            _purchasedTicketsStreamSubscription = _tFacade.watchSelectedPurchasedTickets(reservationId: e.reservationId, ticketId: e.ticketId).listen(
                (event) {
                  return add(ActivityTicketWatcherEvent.purchasedTicketsReceived(event));
                }
            );
        },

        purchasedTicketsReceived: (e) async* {
          yield e.failedItem.fold(
              (f) => ActivityTicketWatcherState.loadPurchasedTicketFailure(f),
              (r) => ActivityTicketWatcherState.loadPurchasedTicketSuccess(r),
          );
        },

        watchTicketsOnHoldStarted: (e) async* {
          yield const ActivityTicketWatcherState.loadInProgress();
          await _onHoldTicketsStreamSubscription?.cancel();

          _onHoldTicketsStreamSubscription = _tFacade.watchSelectedOnHoldTickets(reservationId: e.reservationId, ticketId: e.ticketId).listen(
                  (event) {
                return add(ActivityTicketWatcherEvent.onHoldTicketsReceived(event));
              }
          );
        },


        onHoldTicketsReceived: (e) async* {
          yield e.failedItem.fold(
              (f) => ActivityTicketWatcherState.loadOnHoldTicketsFailure(f),
              (r) => ActivityTicketWatcherState.loadOnHoldTicketsSuccess(r)
          );
        },

        watchNumberOfTicketsTakenStarted: (e) async* {
          yield const ActivityTicketWatcherState.loadInProgress();

          await _numberOfTicketsTakenStreamSubscription?.cancel();

          _numberOfTicketsTakenStreamSubscription = _tFacade.watchNumberOfTicketsTaken(reservationId: e.reservationId, ticketId: e.ticketId).listen((event) {
            return add(ActivityTicketWatcherEvent.numberOfTicketsTakenReceived(event));
          });

        },

        numberOfTicketsTakenReceived: (e) async* {
              yield e.failedItem.fold(
                  (f) => ActivityTicketWatcherState.loadNumberOfTicketsTakenFailure(f),
                  (r) => ActivityTicketWatcherState.loadNumberOfTicketsTakenSuccess(r)
              );
        },


        watchCurrentUserTicketsStarted: (e) async* {
          yield const ActivityTicketWatcherState.loadInProgress();
          await _currentUsersTicketsStreamSubscription?.cancel();

          _tFacade.watchCurrentUsersPurchasedTickets(currentUser: e.userId, reservationId: e.reservationId).listen((event) {
            return add(ActivityTicketWatcherEvent.currentUserTicketsReceived(event));
          });
        },

        currentUserTicketsReceived: (e) async* {
          yield e.failedItem.fold(
                  (f) => ActivityTicketWatcherState.loadCurrentUsersTicketsFailure(f),
                  (r) => ActivityTicketWatcherState.loadCurrentUsersTicketsSuccess(r)
          );
        }
     );

  }

}