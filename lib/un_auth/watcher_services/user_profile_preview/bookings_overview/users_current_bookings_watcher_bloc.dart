part of check_in_application;

@injectable
class UsersCurrentBookingsCountWatcherBloc extends Bloc<UsersCurrentBookingsCountWatcherEvent, UsersCurrentBookingsCountWatcherState> {

  final facade.UnAuthFacade _uAuthFacade;

  UsersCurrentBookingsCountWatcherBloc(this._uAuthFacade) : super(const UsersCurrentBookingsCountWatcherState.initial());

  StreamSubscription<Either<AuthFailure, int>>? _ownerFacilityBookingsSubscription;
  StreamSubscription<Either<AuthFailure, int>>? _ownerActivityBookingsSubscription;
  StreamSubscription<Either<AuthFailure, int>>? _ownerSessionBookingsSubscription;


  @override
  Stream<UsersCurrentBookingsCountWatcherState> mapEventToState(UsersCurrentBookingsCountWatcherEvent event) async* {
yield* event.map(

    watchFacilityBookingsStarted: (e) async* {
      yield UsersCurrentBookingsCountWatcherState.loadFacilitiesInProgress();
      await _ownerFacilityBookingsSubscription?.cancel();
      _ownerFacilityBookingsSubscription = _uAuthFacade.watchOwnersCurrentFacilityBookingsCount(currentOwner: e.ownerId, bookingId: e.bookingId, facilityType: e.facilityType).listen(
      (failure) {
          return add(UsersCurrentBookingsCountWatcherEvent.facilityBookingsCountReceived(failure));
      });
    },

    watchActivityBookingsStarted: (e) async* {
     yield UsersCurrentBookingsCountWatcherState.loadActivitiesInProgress();
     await _ownerActivityBookingsSubscription?.cancel();

     _ownerActivityBookingsSubscription = _uAuthFacade.watchOwnersCurrentActivitiesBookingsCount(currentOwner: e.ownerId, bookingId: e.bookingId, activityType: e.activityType).listen(
             (failure) {
               return add(UsersCurrentBookingsCountWatcherEvent.activityBookingsCountReceived(failure));
             });

    },

    watchSessionBookingsStarted: (e) async* {
      yield UsersCurrentBookingsCountWatcherState.loadSessionsInProgress();
      await _ownerSessionBookingsSubscription?.cancel();
      _ownerSessionBookingsSubscription = _uAuthFacade.watchOwnersCurrentSessionsBookingsCount(currentOwner: e.ownerId, bookingId: e.bookingId, sessionType: e.sessionType).listen(
              (failure) {
                return add(UsersCurrentBookingsCountWatcherEvent.sessionBookingsCountReceived(failure));
              });
    },


    facilityBookingsCountReceived: (e) async* {
      yield e.failedInt.fold(
              (f) => UsersCurrentBookingsCountWatcherState.loadFailure(f),
              (bookingsCount) => UsersCurrentBookingsCountWatcherState.loadFacilitiesSuccess(bookingsCount)
      );
    },

    activityBookingsCountReceived: (e) async* {
      yield e.failedInt.fold(
              (f) => UsersCurrentBookingsCountWatcherState.loadFailure(f),
              (bookingsCount) => UsersCurrentBookingsCountWatcherState.loadActivitiesSuccess(bookingsCount)
      );
    },

    sessionBookingsCountReceived: (e) async* {
      yield e.failedInt.fold(
              (f) => UsersCurrentBookingsCountWatcherState.loadFailure(f),
              (bookingsCount) => UsersCurrentBookingsCountWatcherState.loadSessionsSuccess(bookingsCount)
      );
    });

  }

}