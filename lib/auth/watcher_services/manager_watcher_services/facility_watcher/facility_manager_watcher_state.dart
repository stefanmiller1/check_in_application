part of check_in_application;

@freezed
class FacilityManagerWatcherState with _$FacilityManagerWatcherState {

  const factory FacilityManagerWatcherState.initial() = _FacilityMInitial;
  const factory FacilityManagerWatcherState.loadInProgress() = _FacilityMLoadInProgress;

  const factory FacilityManagerWatcherState.loadFacilityCreatorFormSuccess(FacilityCreatorForm item) = _LoadFacilityCreatorFormSuccess;
  const factory FacilityManagerWatcherState.loadFacilityCreatorFormFailure(FacilityFormFailure failure) = _LoadFacilityCreatorFormFailure;

  const factory FacilityManagerWatcherState.loadAllFacilityCreatorFormsSuccess(List<FacilityCreatorForm> items) = _LoadAllFacilityCreatorFormsSuccess;
  const factory FacilityManagerWatcherState.loadAllFacilityCreatorFormsFailure(FacilityFormFailure failure) = _LoadAllFacilityCreatorFormsFailure;



}