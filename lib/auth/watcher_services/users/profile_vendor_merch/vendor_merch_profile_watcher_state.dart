part of check_in_application;

@freezed
class VendorMerchProfileWatcherState with _$VendorMerchProfileWatcherState {

  const factory VendorMerchProfileWatcherState.vmInitial() = _VMInitial;
  const factory VendorMerchProfileWatcherState.vmLoadInProgress() = _VMLoadInProgress;

  const factory VendorMerchProfileWatcherState.loadMerchVendorProfileSuccess(EventMerchantVendorProfile item) = _LoadMerchVendorProfileSuccess;
  const factory VendorMerchProfileWatcherState.loadMerchVendorProfileFailure(ProfileValueFailure failure) = _LoadMerchVendorProfileFailure;

  const factory VendorMerchProfileWatcherState.loadCurrentUserVendorMerchListSuccess(List<EventMerchantVendorProfile> items) = _LoadCurrentUserVendorMerchListSuccess;
  const factory VendorMerchProfileWatcherState.loadCurrentUserVendorMerchListFailure(ProfileValueFailure failure) = _LoadCurrentUserVendorMerchListFailure;

  const factory VendorMerchProfileWatcherState.loadCurrentPartnersVMSuccess(List<UniqueId> items) = _LoadCurrentPartnersVMSuccess;
  const factory VendorMerchProfileWatcherState.loadCurrentPartnersVMFailure(ProfileValueFailure failure) = _LoadCurrentPartnersVMFailure;

  const factory VendorMerchProfileWatcherState.loadAllMerchVendorFromIdsSuccess(List<EventMerchantVendorProfile> items) = _LoadAllMerchVendorFromIdsSuccess;
  const factory VendorMerchProfileWatcherState.loadAllMerchVendorFromIdsFailure(ProfileValueFailure failure) = _LoadAllMerchVendorFromIdsFailure;
}