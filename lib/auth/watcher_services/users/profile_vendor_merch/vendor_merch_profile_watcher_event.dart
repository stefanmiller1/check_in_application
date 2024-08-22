part of check_in_application;

@freezed
class VendorMerchProfileWatcherEvent with _$VendorMerchProfileWatcherEvent {

  const factory VendorMerchProfileWatcherEvent.watchEventMerchProfile(String profileId) = _WatchEventMerchProfile;
  const factory VendorMerchProfileWatcherEvent.eventMerchVenReceived(Either<ProfileValueFailure, EventMerchantVendorProfile> failedItem) = _EventMerchVenReceived;

  const factory VendorMerchProfileWatcherEvent.watchCurrentUsersMerchVendorList(String userId) = _WatchCurrentUsersMerchVendorList;
  const factory VendorMerchProfileWatcherEvent.currentUsersMerchVendorListReceived(Either<ProfileValueFailure, List<EventMerchantVendorProfile>> failedItems) = _CurrentUsersMerchVendorListReceived;

  const factory VendorMerchProfileWatcherEvent.watchCurrentPartnersMerchVendors(String profileId) = _WatchCurrentPartnersMerchVendors;
  const factory VendorMerchProfileWatcherEvent.currentPartnersMerchVendorsReceived(Either<ProfileValueFailure, List<UniqueId>> failedItems) = _CurrentPartnersMerchVendorsReceived;

  const factory VendorMerchProfileWatcherEvent.watchAllEventMerchProfileFromIds(List<String> profileIds) = _WatchAllEventMerchProfileFromIds;
  const factory VendorMerchProfileWatcherEvent.allEventMerchProfilesFromIdsReceived(Either<ProfileValueFailure, List<EventMerchantVendorProfile>> failedItem) = _AllEventMerchProfilesFromIdsReceived;
}