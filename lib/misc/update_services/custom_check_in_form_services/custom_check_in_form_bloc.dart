part of check_in_application;

@injectable
class CustomCheckInFormBloc extends Bloc<CustomCheckInFormEvent, CustomCheckInFormState> {


  CustomCheckInFormBloc() : super(CustomCheckInFormState.initial());

  @override
  Stream<CustomCheckInFormState> mapEventToState(
      CustomCheckInFormEvent event) async* {

    yield* event.map(
        initialCheckInForm: (e) async* {
            yield e.initialCheckInForm.fold(
                    () => state,
                    (checkIn) => state.copyWith(
                      customCheckInSetting: checkIn,
                      isSaving: false
            )
          );
        },

        hoursBeforeChanged: (e) async* {
          yield state.copyWith(
            customCheckInSetting: state.customCheckInSetting.copyWith(
                hoursBefore: e.hoursBeforeInt,
            )
          );

        },

        isBeforeStartChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              isBeforeResStart: e.isBeforeBool,
            )
          );
        },

        isAfterStartChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              isAfterResStart: e.isAfterBool,
            )
          );
        },

        hoursUntilChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
                hoursUntil:  e.hoursInt,
            )
          );
        },

        listOfSpaceIdsChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
                listOfSpaceIds: e.spaceList,
             )
          );
        },

        listOfConfirmationItemsChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
                listOfConfirmationItems: e.conList
            )
          );
        },

        listOfReservationsChanged: (e) async* {
          yield state.copyWith(
            customCheckInSetting: state.customCheckInSetting.copyWith(
                listOfReservations: e.resList
            )
          );
        },

        attendeeTypeChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
                attendeeType: e.attType
            )
          );
        },

        didSaveCustomRule: (e) async* {

        }
    );

  }

}