part of check_in_application;

@freezed
class ListingsSearchRequirementsState with _$ListingsSearchRequirementsState {

  const ListingsSearchRequirementsState._();

  factory ListingsSearchRequirementsState({
    UniqueId? locationItemId,
    String? locationCityFromMap,
    DateTimeRange? dateRange,
    RangeValues? participantRange,
    UniqueId? flexibleTimeRangeId,
    UniqueId? flexibleMonthId,
    UniqueId? participantId,
    bool? isSomeWhereNear,
    UniqueId? activtityTypeId,
    UniqueId? selectedListingId,
    required Set<Marker> markers,
    required bool isMarkersLoading,
}) = _SearchListingsState;

  factory ListingsSearchRequirementsState.initial() => ListingsSearchRequirementsState(
    locationItemId: null,
    locationCityFromMap: null,
    dateRange: null,
    participantRange: null,
    participantId: null,
    flexibleMonthId: null,
    flexibleTimeRangeId: null,
    isSomeWhereNear: null,
    selectedListingId: null,
    activtityTypeId: getActivityOptions(null)[0].activityId,
    markers: {},
    isMarkersLoading: false
  );

}