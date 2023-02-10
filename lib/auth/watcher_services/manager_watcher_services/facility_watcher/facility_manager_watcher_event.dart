part of check_in_application;

@freezed
class FacilityManagerWatcherEvent with _$FacilityManagerWatcherEvent {

  const factory FacilityManagerWatcherEvent.watchFacilityCreatorFormStarted(String facilityId) = _WatchFacilityCreatorFormStarted;
  const factory FacilityManagerWatcherEvent.facilityCreatorFormReceived(Either<FacilityFormFailure, FacilityCreatorForm> failedItems) = _FacilityCreatorFormReceived;

  const factory FacilityManagerWatcherEvent.watchAllFacilityCreatorFormsStarted() = _WatchAllFacilityCreatorFormsStarted;
  const factory FacilityManagerWatcherEvent.allFacilityCreatorFormsReceived(Either<FacilityFormFailure, List<FacilityCreatorForm>> failedItems) = _AllFacilityCreatorFormsReceived;


}