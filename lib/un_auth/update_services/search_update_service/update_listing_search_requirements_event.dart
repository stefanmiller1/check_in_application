part of check_in_application;

@freezed
class ListingsSearchRequirementsEvent with _$ListingsSearchRequirementsEvent {

  const factory ListingsSearchRequirementsEvent.currentDashboardMarker(DashboardMarker marker) = _CurrentDashboardMarker;

  const factory ListingsSearchRequirementsEvent.locationItemIdRequiredChanged(UniqueId? locationId) = _LocationItemIdRequiredChanged;
  const factory ListingsSearchRequirementsEvent.locationCotyFromMapChanged(String? locationStr) = _LocationCotyFromMapChanged;
  const factory ListingsSearchRequirementsEvent.locationIsSomewhereNearChanged(bool? locationBool) = _LocationIsSomewhereNearChanged;
  const factory ListingsSearchRequirementsEvent.locationSearchHistoryChanged(List<LocationSearchLatLngModel> locations) = _LocationSearchHistoryChanged;

  const factory ListingsSearchRequirementsEvent.datesRequiredChanged(DateTimeRange? datesRange) = _DatesRequiredChanged;
  const factory ListingsSearchRequirementsEvent.flexibleTimeRangeIdChanged(UniqueId? flexId) = _FlexibleTimeRangeIdChanged;
  const factory ListingsSearchRequirementsEvent.flexibleMonthIdChanged(UniqueId? flexId) = _FlexibleMonthIdChanged;
  const factory ListingsSearchRequirementsEvent.selectedTimeSlotChanged(List<ReservationTimeFeeSlotItem> slotList) = _SelectedTimeSlotChanged;
  const factory ListingsSearchRequirementsEvent.searchDurationTypeChanged(int? durationInt) = _SearchDurationTypeChanged;

  const factory ListingsSearchRequirementsEvent.participantsRequiredChanged(RangeValues? countRange) = _ParticipantsRequiredChanged;
  const factory ListingsSearchRequirementsEvent.participantsIdChanged(UniqueId? countRange) = _ParticipantsIdChanged;

  const factory ListingsSearchRequirementsEvent.activityTypeChanged(UniqueId? activeId) = _ActivityTypeChanged;

  const factory ListingsSearchRequirementsEvent.markersDidChange(Set<Marker> newSet) = _MarkersDidChange;
  const factory ListingsSearchRequirementsEvent.listingsChange(List<ListingManagerForm> listingList) = _ListingsChange;
  const factory ListingsSearchRequirementsEvent.reservationsChange(List<ReservationItem> resList) = _ReservationsChange;
  const factory ListingsSearchRequirementsEvent.isMarkersLoading(bool markerBool) = _IsMarkersLoading;

  const factory ListingsSearchRequirementsEvent.selectedListingIdChanged(UniqueId? selectedId) = _SelectedListingIdChanged;

}