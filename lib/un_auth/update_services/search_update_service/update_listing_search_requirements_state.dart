part of check_in_application;

@freezed
class ListingsSearchRequirementsState with _$ListingsSearchRequirementsState {

  const ListingsSearchRequirementsState._();

  factory ListingsSearchRequirementsState({
    UniqueId? locationItemId,
    String? locationCityFromMap,
    Iterable<LocationSearchLatLngModel>? historyLocationSearch,
    DateTimeRange? dateRange,
    RangeValues? participantRange,
    UniqueId? flexibleTimeRangeId,
    UniqueId? flexibleMonthId,
    UniqueId? participantId,
    bool? isSomeWhereNear,
    UniqueId? activtityTypeId,
    UniqueId? selectedListingId,
    Iterable<ReservationTimeFeeSlotItem>? selectedReservationsSlots,
    int? durationType,
    required Iterable<ListingManagerForm> listings,
    required Iterable<ReservationItem> reservation,
    required Set<Marker> markers,
    required bool isMarkersLoading,
    required DashboardMarker currentDashboardMarker,
}) = _SearchListingsState;

  factory ListingsSearchRequirementsState.initial() => ListingsSearchRequirementsState(
    currentDashboardMarker: DashboardMarker.search,
    locationItemId: null,
    locationCityFromMap: null,
    historyLocationSearch: [],
    dateRange: null,
    participantRange: null,
    participantId: null,
    flexibleMonthId: null,
    flexibleTimeRangeId: null,
    isSomeWhereNear: null,
    selectedListingId: null,
    durationType: null,
    selectedReservationsSlots: [],
    activtityTypeId: getActivityOptions()[0].activityId,
    markers: {},
    listings: [],
    reservation: [],
    isMarkersLoading: false
  );

}