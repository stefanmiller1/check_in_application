part of check_in_application;

@injectable
class GeoLocatorWatcherBloc extends Bloc<GeoLocatorWatcherEvent, GeoLocatorWatcherState> {
  final facade.MMiscFacade _miscFacade;

  GeoLocatorWatcherBloc(this._miscFacade) : super(const GeoLocatorWatcherState.initial());

  StreamSubscription<Either<PermissionStatus, LocationData>>? _geoLocationStreamSubscription;

  @override
  Stream<GeoLocatorWatcherState> mapEventToState(GeoLocatorWatcherEvent event) async* {
    yield* event.map(

        watchGeolocationStarted: (e) async* {
          yield GeoLocatorWatcherState.loadLocationInProgress();
          await _geoLocationStreamSubscription?.cancel();
          _geoLocationStreamSubscription = _miscFacade.getCurrentPosition().listen((failure) {
            return add(GeoLocatorWatcherEvent.geoLocationReceived(failure));
          });
          // _geoLocationStreamSubscription?.pause();
        },

        geoLocationReceived: (e) async* {
          yield e.failedGeoLocation.fold(
                  (f) => GeoLocatorWatcherState.loadFailure(f),
                  (location) { return GeoLocatorWatcherState.loadGeoLocationSuccess(location);}
          );
        }
    );
  }

}