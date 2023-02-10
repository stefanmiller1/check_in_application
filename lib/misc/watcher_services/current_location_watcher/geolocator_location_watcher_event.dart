part of check_in_application;

@freezed
class GeoLocatorWatcherEvent with _$GeoLocatorWatcherEvent {
  
  const factory GeoLocatorWatcherEvent.watchGeolocationStarted() = _WatchGeoLocationStarted;
  const factory GeoLocatorWatcherEvent.geoLocationReceived(Either<PermissionStatus, LocationData> failedGeoLocation) = _GeoLocationReceived;
}