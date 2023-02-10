part of check_in_application;

@injectable
class ActivityManagerWatcherBloc extends Bloc<ActivityManagerWatcherEvent, ActivityManagerWatcherState> {

  final facade.AAuthWatcherFacade _aAuthFacade;

  ActivityManagerWatcherBloc(this._aAuthFacade) : super(ActivityManagerWatcherState.initial());

  // StreamSubscription<Either<ActivityFormFailure, ActivityManagerProfile>>? _activityManagerItemStreamSubscription;
  StreamSubscription<Either<ActivityFormFailure, ActivityCreatorForm>>? _activityCreatorFormStreamSubscription;
  StreamSubscription<Either<ActivityFormFailure, List<ActivityCreatorForm>>>? _allActivityCreatorFormsStreamSubscription;


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


          watchActivityCreatorFormStarted: (e) async* {
            yield const ActivityManagerWatcherState.loadInProgress();

            await _activityCreatorFormStreamSubscription?.cancel();
            _activityCreatorFormStreamSubscription = _aAuthFacade.watchActivityCreatorForm(activitySessionId: e.activityId).listen((event) {
              return add(ActivityManagerWatcherEvent.activityCreatorFormReceived(event));
            });

          },

          activityCreatorFormReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ActivityManagerWatcherState.loadActivityCreatorFormFailure(f),
                    (r) => ActivityManagerWatcherState.loadActivityCreatorFormSuccess(r)
            );
          },

          watchAllActivityCreatorFormsStarted: (e) async* {
            yield const ActivityManagerWatcherState.loadInProgress();

            _allActivityCreatorFormsStreamSubscription?.cancel();
            _allActivityCreatorFormsStreamSubscription = _aAuthFacade.watchAllActivityCreatorForms(activitySessionId: e.activitySessionIds).listen((event) {
              return add(ActivityManagerWatcherEvent.allActivityCreatorFormsReceived(event));
            });

          },

          allActivityCreatorFormsReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => ActivityManagerWatcherState.loadAllActivityCreatorFormsFailure(f),
                    (r) => ActivityManagerWatcherState.loadAllActivityCreatorFormsSuccess(r)
            );
          },
      );

  }

}