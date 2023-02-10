part of check_in_application;

@injectable
class ListingsSearchRequirementsBloc extends Bloc<ListingsSearchRequirementsEvent, ListingsSearchRequirementsState> {

  ListingsSearchRequirementsBloc() : super(ListingsSearchRequirementsState.initial());

  @override
  Stream<ListingsSearchRequirementsState> mapEventToState(
      ListingsSearchRequirementsEvent event) async* {

    yield* event.map(


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

        flexibleMonthIdChanged: (e) async* {
          yield state.copyWith(
            flexibleMonthId: e.flexId
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