part of check_in_application;

@injectable
class ListingsSearchRequirementsBloc extends Bloc<ListingsSearchRequirementsEvent, ListingsSearchRequirementsState> {

  ListingsSearchRequirementsBloc() : super(ListingsSearchRequirementsState.initial());

  @override
  Stream<ListingsSearchRequirementsState> mapEventToState(
      ListingsSearchRequirementsEvent event) async* {

    yield* event.map(

        currentDashboardMarker: (e) async* {
          yield state.copyWith(
              currentDashboardMarker: e.marker
          );
        },

        locationItemIdRequiredChanged: (e) async* {
          yield state.copyWith(
            locationItemId: e.locationId
          );
        },

        locationCotyFromMapChanged: (e) async* {
          yield state.copyWith(
            locationCityFromMap: e.locationStr
          );
        },

        locationSearchHistoryChanged: (e) async* {
          yield state.copyWith(
              historyLocationSearch: e.locations
          );
        },

        locationIsSomewhereNearChanged: (e) async* {
            yield state.copyWith(
              isSomeWhereNear: e.locationBool
            );
          },

        datesRequiredChanged: (e) async* {
            yield state.copyWith(
                dateRange: e.datesRange
            );
        },

        flexibleTimeRangeIdChanged: (e) async* {
            yield state.copyWith(
              flexibleTimeRangeId: e.flexId
            );
        },

        searchDurationTypeChanged: (e) async* {
          yield state.copyWith(
              durationType: e.durationInt
          );
        },

        flexibleMonthIdChanged: (e) async* {
          yield state.copyWith(
            flexibleMonthId: e.flexId
          );
        },

        selectedTimeSlotChanged: (e) async* {
          yield state.copyWith(
              selectedReservationsSlots: e.slotList
          );
        },

        participantsRequiredChanged: (e) async* {
            yield state.copyWith(
                participantRange: e.countRange
            );
        },

        participantsIdChanged: (e) async* {
          yield state.copyWith(
            participantId: e.countRange
          );
        },

        activityTypeChanged: (e) async* {
          yield state.copyWith(
              activtityTypeId: e.activeId
          );
        },

        markersDidChange: (e) async* {
          yield state.copyWith(
            markers: e.newSet
          );
        },

        listingsChange: (e) async* {
          yield state.copyWith(
            listings: e.listingList
          );
        },

        reservationsChange: (e) async* {
          yield state.copyWith(
            reservation: e.resList
          );
        },


        isMarkersLoading: (e) async* {
          yield state.copyWith(
            isMarkersLoading: e.markerBool
          );
        },

        selectedListingIdChanged: (e) async* {
          yield state.copyWith(
            selectedListingId: e.selectedId
          );
        },

    );
  }

}