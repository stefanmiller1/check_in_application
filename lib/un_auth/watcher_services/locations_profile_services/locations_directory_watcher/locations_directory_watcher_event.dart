part of check_in_application;

@freezed
class LocationsDirectoryWatcherEvent with _$LocationsDirectoryWatcherEvent {

  const factory LocationsDirectoryWatcherEvent.watchLocationsDirectoryStarted() = _WatchLocationsDirectoryStarted;
  const factory LocationsDirectoryWatcherEvent.locationsDirectoryReceived(Either<FacilityFormFailure, List<LocationModel>> failedItems) = _LocationsDirectoryReceived;

  const factory LocationsDirectoryWatcherEvent.watchLocationInDirectoryStarted(String locationId) = _WatchLocationInDirectoryStarted;
  const factory LocationsDirectoryWatcherEvent.locationInDirectoryReceived(Either<FacilityFormFailure, LocationModel> failedItem) = _LocationInDirectoryReceived;

}