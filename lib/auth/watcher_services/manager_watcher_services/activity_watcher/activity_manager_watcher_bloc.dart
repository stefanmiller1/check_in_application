part of check_in_application;

@injectable
class ActivityManagerWatcherBloc extends Bloc<ActivityManagerWatcherEvent, ActivityManagerWatcherState> {

  final facade.AAuthWatcherFacade _aAuthFacade;

  ActivityManagerWatcherBloc(this._aAuthFacade) : super(const ActivityManagerWatcherState.activityMInitial());

  // StreamSubscription<Either<ActivityFormFailure, ActivityManagerProfile>>? _activityManagerItemStreamSubscription;
  StreamSubscription<Either<ActivityFormFailure, ActivityManagerForm>>? _activityCreatorFormStreamSubscription;
  StreamSubscription<Either<ActivityFormFailure, List<ActivityManagerForm>>>? _allActivityCreatorFormsStreamSubscription;
  StreamSubscription<Either<ActivityFormFailure, List<ActivityManagerForm>>>? _allActivityCreatorFormFromResStreamSubscription;

  @override
  Stream<ActivityManagerWatcherState> mapEventToState(
      ActivityManagerWatcherEvent event
      ) async* {

      yield* event.map(

          // watchActivityManagerItemStarted: (e) async* {
          //   yield const ActivityManagerWatcherState.loadInProgress();
          //   await _activityManagerItemStreamSubscription?.cancel();
          //
          //   _activityManagerItemStreamSubscription = _aAuthFacade.watchActivityManagerProfile(activityId: e.activityId).listen((event) {
          //     return add(ActivityManagerWatcherEvent.activityManagerItemReceived(event));
          //   });
          //
          //
          // },
          //
          // activityManagerItemReceived: (e) async* {
          //   yield e.failedItems.fold(
          //           (f) => ActivityManagerWatcherState.loadActivityManagerItemFailure(f),
          //           (r) => ActivityManagerWatcherState.loadActivityManagerItemSuccess(r));
          // },


          watchActivityManagerFormStarted: (e) async* {
            yield const ActivityManagerWatcherState.loadInProgress();

            await _activityCreatorFormStreamSubscription?.cancel();
            _activityCreatorFormStreamSubscription = _aAuthFacade.watchActivityCreatorForm(activityId: e.activityId).listen((event) {
              return add(ActivityManagerWatcherEvent.activityManagerFormReceived(event));
            });
          },

          activityManagerFormReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ActivityManagerWatcherState.loadActivityManagerFormFailure(f),
                    (r) => ActivityManagerWatcherState.loadActivityManagerFormSuccess(r)
            );
          },

          watchAllActivityManagerFormsStarted: (e) async* {
            yield const ActivityManagerWatcherState.loadInProgress();

            _allActivityCreatorFormsStreamSubscription?.cancel();
            _allActivityCreatorFormsStreamSubscription = _aAuthFacade.watchAllActivityCreatorForms(isReservation: e.isReservation, reservationId: e.reservationId).listen((event) {
              return add(ActivityManagerWatcherEvent.allActivityManagerFormsReceived(event));
            });

          },

          allActivityManagerFormsReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ActivityManagerWatcherState.loadAllActivityManagerFormsFailure(f),
                    (r) => ActivityManagerWatcherState.loadAllActivityManagerFormsSuccess(r)
            );
          },

          watchActivityManagerFromReservations: (e) async* {
            yield const ActivityManagerWatcherState.loadInProgress();
            _allActivityCreatorFormFromResStreamSubscription?.cancel();

            _allActivityCreatorFormFromResStreamSubscription = _aAuthFacade.watchAllActivityFormsFromRes(reservationIds: e.reservationIds.map((e) => e.getOrCrash()).toList()).listen((event) {
                return add(ActivityManagerWatcherEvent.activityManagerForsmFromReservationsReceived(event));
            });
          },

          activityManagerForsmFromReservationsReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ActivityManagerWatcherState.loadActivityManagerFromResFailure(f),
                    (r) => ActivityManagerWatcherState.loadActivityManagerFromResSuccess(r),
            );

          }
      );

  }

  @override
  Future<void> close() {
    _activityCreatorFormStreamSubscription?.cancel();
    _allActivityCreatorFormsStreamSubscription?.cancel();
    _allActivityCreatorFormFromResStreamSubscription?.cancel();
    return super.close();
  }

}