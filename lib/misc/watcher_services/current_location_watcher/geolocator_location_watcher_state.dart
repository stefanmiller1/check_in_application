part of check_in_application;

@freezed
class GeoLocatorWatcherState with _$GeoLocatorWatcherState {

  const factory GeoLocatorWatcherState.initial() = _Initial;
  const factory GeoLocatorWatcherState.loadLocationInProgress() = _LoadLocationInProgress;
  const factory GeoLocatorWatcherState.loadGeoLocationSuccess(LocationData geoLocation) = _LoadGeoLocationSuccess;

  const factory GeoLocatorWatcherState.loadFailure(PermissionStatus locationFailure) = _LoadFailure;

}