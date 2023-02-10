part of check_in_application;

@injectable
class UpdateFacilityFormBloc extends Bloc<UpdateFacilityFormEvent, UpdateFacilityState> {

  final facade.FAuthFacade _facilityFormFacade;

  UpdateFacilityFormBloc(this._facilityFormFacade) : super(UpdateFacilityState.initial());

  @override
  Stream<UpdateFacilityState> mapEventToState(
      UpdateFacilityFormEvent event) async* {
          yield* event.map(
              initializedFacility: (e) async* {
                yield e.initializedFacility.fold(
                        () => state,
                        (initial) => state.copyWith(
                            facilityCreatorForm: initial,
                  )
                );
              },


            creatorNavChanged: (e) async* {
              yield state.copyWith(
                  facilityCreatorForm: state.facilityCreatorForm.copyWith(
                      facilityNav: e.navItem
                  )
              );
            },



            ///
            /// BLOC EVENTS FOR FACILITY OPTION CHANGES
            ///

            facilityOptionChanged: (e) async* {
                yield state.copyWith(
                    facilityCreatorForm: state.facilityCreatorForm.copyWith(
                      facility:  e.facilityOption
                )
              );
            },


            ///
            /// BLOC EVENTS FOR FACILITY TYPE CHANGES ///
            ///

              spaceOptionsChanged: (e) async* {
                yield state.copyWith(
                    facilityCreatorForm: state.facilityCreatorForm.copyWith(
                      spaceTypes: e.spaceTypeList,
                  )
                );
              },


            ///
            /// BLOC EVENTS FOR LOCATION CHANGES ///
            ///


            isLocationConfirmed: (e) async* {
              yield state.copyWith(
                  facilityCreatorForm: state.facilityCreatorForm.copyWith(
                      facilityLocation: LocationModel(
                        ownerId: state.facilityCreatorForm.facilityLocation.ownerId,
                        locationType: state.facilityCreatorForm.facilityLocation.locationType,
                        placeId: state.facilityCreatorForm.facilityLocation.placeId,
                        longLat: state.facilityCreatorForm.facilityLocation.longLat,
                        countryRegion: state.facilityCreatorForm.facilityLocation.countryRegion,
                        city: state.facilityCreatorForm.facilityLocation.city,
                        provinceState: state.facilityCreatorForm.facilityLocation.provinceState,
                        street: state.facilityCreatorForm.facilityLocation.street,
                        postalCode: state.facilityCreatorForm.facilityLocation.postalCode,
                        isLocationConfirmed: e.isConfirmedBool,
                        isUnverified: state.facilityCreatorForm.facilityLocation.isUnverified,
                        isVerified: state.facilityCreatorForm.facilityLocation.isVerified,
                        isVerifiedAlready: state.facilityCreatorForm.facilityLocation.isVerifiedAlready,
                        isCompleted: state.facilityCreatorForm.facilityLocation.isCompleted,
                        aptUnitNumber: state.facilityCreatorForm.facilityLocation.aptUnitNumber,
                  )
                ),
                authFailureOrSuccessOptionLocation: none(),
              );
            },


            updateWithSavedLocation: (e) async* {

              yield state.copyWith(
                  facilityCreatorForm: state.facilityCreatorForm.copyWith(
                  facilityLocation: e.location
                )
              );
            },



            ///
            /// BLOC EVENTS FOR BACKGROUND INFO CHANGES ///
            ///

            rentalTitleChanged: (e) async* {
                yield state.copyWith(
                    facilityCreatorForm: state.facilityCreatorForm.copyWith(
                      rentalTitle: FirstLastName(e.titleStr),
                )
              );
            },

            rentalDescription1Changed: (e) async* {
              yield state.copyWith(
                  facilityCreatorForm: state.facilityCreatorForm.copyWith(
                    rentalDescription1: BackgroundInfoDescription(e.descriptionStr),
                )
              );
            },


            ///
            /// BLOC EVENTS FOR AVAILABLE DATES CHANGES ///
            ///


            startingDateChanged: (e) async* {
              yield state.copyWith(
                  facilityCreatorForm: state.facilityCreatorForm.copyWith(
                    fromStarting: e.startingDate,
                )
              );
            },

            endingDateChanged: (e) async* {
              yield state.copyWith(
                  facilityCreatorForm: state.facilityCreatorForm.copyWith(
                    fromEnding: e.endingDate,
                )
              );
            },

            ///
            /// BLOC EVENTS FOR COSTS CHANGES ///
            ///

            basePriceFullSlotOneChanged: (e) async* {
                yield state.copyWith(
                    facilityCreatorForm: state.facilityCreatorForm.copyWith(
                      basePriceFullSlotOne: e.priceStr,
                 )
              );
            },


            ///
            /// BLOC CREATE FACILITY - SAVE TO FIREBASE USER & FACILITIES COLLECTION
            ///


            saveAndCloseFacilityFinished: (e) async* {
                Either<FacilityFormFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                  isSaving: true,
                  authFailureOrSuccessOptionSaving: none()
                );

                failureOrSuccess = state.isSaving ? left(const FacilityFormFailure.unexpected()) : await _facilityFormFacade.createFacilityForm(facilityForm: state.facilityCreatorForm);

                yield state.copyWith(
                  isSaving: false,
                  authFailureOrSuccessOptionSaving: optionOf(failureOrSuccess)
                );

             },


            createFacilityFinished: (e) async* {
              Either<FacilityFormFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                    isSubmitting: true,
                    authFailureOrSuccessOptionSubmitting: none()
                );

                failureOrSuccess = state.isSubmitting ? left(const FacilityFormFailure.unexpected()) : await _facilityFormFacade.createCompletedFacilityForm(
                    facilityForm: state.facilityCreatorForm
                );

                yield state.copyWith(
                    isSubmitting: false,
                    authFailureOrSuccessOptionSubmitting: optionOf(failureOrSuccess)
                );

            },


    );
  }
}

