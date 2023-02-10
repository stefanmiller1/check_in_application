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
                isBeforeResStart: state.customCheckInSetting.isBeforeResStart,
                isAfterResStart: state.customCheckInSetting.isAfterResStart,
                hoursUntil:  state.customCheckInSetting.hoursUntil,
                listOfSpaceIds: state.customCheckInSetting.listOfSpaceIds,
                listOfConfirmationItems: state.customCheckInSetting.listOfConfirmationItems
            )
          );

        },

        isBeforeStartChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              hoursBefore: state.customCheckInSetting.hoursBefore,
              isBeforeResStart: e.isBeforeBool,
              isAfterResStart: state.customCheckInSetting.isAfterResStart,
              hoursUntil:  state.customCheckInSetting.hoursUntil,
              listOfSpaceIds: state.customCheckInSetting.listOfSpaceIds,
              listOfConfirmationItems: state.customCheckInSetting.listOfConfirmationItems
            )
          );
        },

        isAfterStartChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              hoursBefore: state.customCheckInSetting.hoursBefore,
              isBeforeResStart: state.customCheckInSetting.isBeforeResStart,
              isAfterResStart: e.isAfterBool,
              hoursUntil:  state.customCheckInSetting.hoursUntil,
              listOfSpaceIds: state.customCheckInSetting.listOfSpaceIds,
              listOfConfirmationItems: state.customCheckInSetting.listOfConfirmationItems
            )
          );
        },

        hoursUntilChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              hoursBefore: state.customCheckInSetting.hoursBefore,
              isBeforeResStart: state.customCheckInSetting.isBeforeResStart,
              isAfterResStart: state.customCheckInSetting.isAfterResStart,
              hoursUntil:  e.hoursInt,
              listOfSpaceIds: state.customCheckInSetting.listOfSpaceIds,
              listOfConfirmationItems: state.customCheckInSetting.listOfConfirmationItems
            )
          );
        },

        listOfSpaceIdsChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              hoursBefore: state.customCheckInSetting.hoursBefore,
              isBeforeResStart: state.customCheckInSetting.isBeforeResStart,
              isAfterResStart: state.customCheckInSetting.isAfterResStart,
              hoursUntil:  state.customCheckInSetting.hoursUntil,
              listOfSpaceIds: e.spaceList,
              listOfConfirmationItems: state.customCheckInSetting.listOfConfirmationItems
             )
          );
        },

        listOfConfirmationItemsChanged: (e) async* {
          yield state.copyWith(
              customCheckInSetting: state.customCheckInSetting.copyWith(
              hoursBefore: state.customCheckInSetting.hoursBefore,
              isBeforeResStart: state.customCheckInSetting.isBeforeResStart,
              isAfterResStart: state.customCheckInSetting.isAfterResStart,
              hoursUntil:  state.customCheckInSetting.hoursUntil,
              listOfSpaceIds: state.customCheckInSetting.listOfSpaceIds,
              listOfConfirmationItems: e.conList
            )
          );
        },

        didSaveCustomRule: (e) async* {

        }
    );

  }

}