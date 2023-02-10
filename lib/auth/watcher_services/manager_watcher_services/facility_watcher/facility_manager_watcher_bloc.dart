part of check_in_application;

@injectable
class FacilityManagerWatcherBloc extends Bloc<FacilityManagerWatcherEvent, FacilityManagerWatcherState> {

  final facade.FAuthWatcherFacade _fAuthFacade;

  FacilityManagerWatcherBloc(this._fAuthFacade) : super(FacilityManagerWatcherState.initial());

  StreamSubscription<Either<FacilityFormFailure, FacilityCreatorForm>>? _facilityCreatorFormStreamSubscription;
  StreamSubscription<Either<FacilityFormFailure, List<FacilityCreatorForm>>>? _allFacilityCreatorFormsStreamSubscription;

  StreamSubscription<Either<ActivityFormFailure, List<FacilityActivityCreatorForm>>>? _facilityActivityOptionStreamSubscription;
  StreamSubscription<Either<ReservationFormFailure, List<ReservationItem>>>? _facilityActivityBookingItemsStreamSubscription;



  @override
  Stream<FacilityManagerWatcherState> mapEventToState(
      FacilityManagerWatcherEvent event
      ) async* {

    yield* event.map(


      watchFacilityCreatorFormStarted: (e) async* {
        yield const FacilityManagerWatcherState.loadInProgress();
        await _facilityCreatorFormStreamSubscription?.cancel();

        _facilityCreatorFormStreamSubscription = _fAuthFacade.watchFacilityCreatorForm(facilityId: e.facilityId).listen((event) {
          return add(FacilityManagerWatcherEvent.facilityCreatorFormReceived(event));
        });
      },


      facilityCreatorFormReceived: (e) async* {
        yield e.failedItems.fold(
                (f) => FacilityManagerWatcherState.loadFacilityCreatorFormFailure(f),
                (r) => FacilityManagerWatcherState.loadFacilityCreatorFormSuccess(r)
        );
      },


      watchAllFacilityCreatorFormsStarted: (e) async* {
        yield const FacilityManagerWatcherState.loadInProgress();
        await _allFacilityCreatorFormsStreamSubscription?.cancel();

        _allFacilityCreatorFormsStreamSubscription = _fAuthFacade.watchAllFacilityCreatorForms().listen((event) {
          return add(FacilityManagerWatcherEvent.allFacilityCreatorFormsReceived(event));
        });

      },

      allFacilityCreatorFormsReceived: (e) async* {
        yield e.failedItems.fold(
                (f) => FacilityManagerWatcherState.loadAllFacilityCreatorFormsFailure(f),
                (r) => FacilityManagerWatcherState.loadAllFacilityCreatorFormsSuccess(r)
        );


      },


    );
  }

}