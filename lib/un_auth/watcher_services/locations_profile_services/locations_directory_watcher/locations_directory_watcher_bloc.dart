part of check_in_application;

@injectable
class LocationDirectoryWatcherBloc extends Bloc<LocationsDirectoryWatcherEvent, LocationsDirectoryWatcherState> {

  final facade.LocationUnAuthWatcherFacade _loUnAuthFacade;

  LocationDirectoryWatcherBloc(this._loUnAuthFacade) : super(LocationsDirectoryWatcherState.initial());

  StreamSubscription<Either<FacilityFormFailure, List<LocationModel>>>? _locationDirectoryStreamSubscription;
  StreamSubscription<Either<FacilityFormFailure, LocationModel>>? _locationItemStreamSubscription;

  @override
  Stream<LocationsDirectoryWatcherState> mapEventToState(
      LocationsDirectoryWatcherEvent event
      ) async* {
    
    yield* event.map(
        
        watchLocationsDirectoryStarted: (e) async* {
          yield const LocationsDirectoryWatcherState.loadInProgress();
          await _locationDirectoryStreamSubscription?.cancel();

          _locationDirectoryStreamSubscription = _loUnAuthFacade.watchLocationDirectory().listen((event) { 
            return add(LocationsDirectoryWatcherEvent.locationsDirectoryReceived(event));
          });
          
        }, 
        
      
        locationsDirectoryReceived: (e) async* {
          yield e.failedItems.fold(
                  (f) => LocationsDirectoryWatcherState.loadLocationDirectoryFailure(f), 
                  (r) => LocationsDirectoryWatcherState.loadLocationDirectorySuccess(r)
          );
        },
        
      
        watchLocationInDirectoryStarted: (e) async* {
          yield const LocationsDirectoryWatcherState.loadInProgress();
          await _locationItemStreamSubscription?.cancel();

          _locationItemStreamSubscription = _loUnAuthFacade.watchLocationItem(locationId: e.locationId).listen((event) {
            return add(LocationsDirectoryWatcherEvent.locationInDirectoryReceived(event));
          });
        }, 


        locationInDirectoryReceived: (e) async* {
            yield e.failedItem.fold(
                    (f) => LocationsDirectoryWatcherState.loadLocationItemFailure(f),
                    (r) => LocationsDirectoryWatcherState.loadLocationItemSuccess(r)
            );
        },
    );
  }
}