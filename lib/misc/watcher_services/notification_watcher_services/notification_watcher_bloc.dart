part of check_in_application;


@injectable
class NotificationWatcherBloc extends Bloc<NotificationWatcherEvent, NotificationWatcherState> {

  final facade.NWatcherFacade _nWatcherFacade;

  NotificationWatcherBloc(this._nWatcherFacade) : super(const NotificationWatcherState.notificationInitial());

  StreamSubscription<Either<NotificationValueFailure, List<AccountNotificationItem>>>? _accountNotificationSubscription;

  @override
  Stream<NotificationWatcherState> mapEventToState(
      NotificationWatcherEvent event
      ) async* {

    yield* event.map(

        watchAllAccountNotificationAmountByType: (e) async* {
            // yield const

            await _accountNotificationSubscription?.cancel();

            _accountNotificationSubscription = _nWatcherFacade.watchAccountNotificationsByType(type: e.type, reservationId: e.reservationId, isRead: false).listen((event) {
                return add(NotificationWatcherEvent.allAccountNotificationAmountReceived(event));
            });
        },

        allAccountNotificationAmountReceived: (e) async* {
              yield e.failedItems.fold(
                  (f) => NotificationWatcherState.loadAllAccountNotificationByTypeFailure(f),
                  (r) => NotificationWatcherState.loadAllAccountNotificationByTypeSuccess(r)
            );
        }

    );

  }

  @override
  Future<void> close() {
    _accountNotificationSubscription?.cancel();
    return super.close();
  }


}