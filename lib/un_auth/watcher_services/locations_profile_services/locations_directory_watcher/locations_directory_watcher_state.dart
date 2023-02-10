part of check_in_application;


@freezed
class LocationsDirectoryWatcherState with _$LocationsDirectoryWatcherState {

  const factory LocationsDirectoryWatcherState.initial() = _Initital;
  const factory LocationsDirectoryWatcherState.loadInProgress() = _LoadInProgress;

  const factory LocationsDirectoryWatcherState.loadLocationDirectorySuccess(List<LocationModel> items) = _LoadLocationDirectorySuccess;
  const factory LocationsDirectoryWatcherState.loadLocationDirectoryFailure(FacilityFormFailure failure) = _LoadLocationDirectoryFailure;

  const factory LocationsDirectoryWatcherState.loadLocationItemSuccess(LocationModel item) = _LoadLocationItemSuccess;
  const factory LocationsDirectoryWatcherState.loadLocationItemFailure(FacilityFormFailure failure) = _LoadLocationItemFailure;

}