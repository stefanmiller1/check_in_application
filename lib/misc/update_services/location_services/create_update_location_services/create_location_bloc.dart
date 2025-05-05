part of check_in_application;

@injectable
class CreateLocationBloc extends Bloc<CreateLocationEvent, CreateLocationState> {

  final facade.IAuthFacade _authFacade;

  CreateLocationBloc(this._authFacade) : super(CreateLocationState.initial());

  @override
  Stream<CreateLocationState> mapEventToState(
      CreateLocationEvent event) async* {

    yield* event.map(
        
        initialLocation: (e) async* {
          yield e.initialLocation.fold(
                  () => state,
                  (location) => state.copyWith(
                    location: location
                ),

          );
        },

        isTemporaryChanged:  (e) async* {
          
        },

        isLongTermChanged:  (e) async* {
          
        },

        isPrivateChanged:  (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              isPrivate: e.isPrivate,
            ),
            authFailureOrSuccessOption: none(),
            );
        },

        placeIdChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              placeId: e.placeIdStr,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        longLatChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              longLat: '${e.lat},${e.lng}',
              locationPosition: GeoFirePoint(e.lat, e.lng),
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        countryChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
                countryRegion: e.countryStr
            ),
             isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        cityChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              city: FacilityLocationCity(e.cityStr),
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        provinceStateChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              provinceState: FacilityLocationStateProvince(e.stateStr, state.location.countryRegion),
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        streetChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              street: FacilityLocationStreet(e.streetStr),
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        postalCodeChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              postalCode: FacilityLocationPostalCode(e.postalStr, state.location.countryRegion),
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        aptNumberChanged:  (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              aptUnitNumber: e.aptStr,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        isLocationConfirmed:  (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              isLocationConfirmed: e.isConfirmedBool,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        locationTypeChanged:  (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              locationType: e.type
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        locationOwnerChanged:  (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              ownerId: e.ownerStr,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        locationMediaChanged: (e) async* {
            yield state.copyWith(
            location: state.location.copyWith(
              imageUploads: e.media,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        estimatedSquareFootageChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              estimatedSquareFootage: e.estimation,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        locationNameChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              locationName: e.locationNameStr,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        parkingAvailabilityChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              isParkingAvailable: e.isParkingAvailable,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        nearTransitChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              isNearTransit: e.isNearTransit,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        overnightStorageProvisionChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              overnightStorageProvision: e.isOvernightStorageProvided,
            ),
            authFailureOrSuccessOption: none(),
          );
        },
        
        barrierFreeAccessibleChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              isBarrierFreeAccessible: e.isBarrierFreeAccessible,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        barrierFreeProvisionChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              barrierFreeProvisions: e.barrierProvisions,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        amenityProvisionChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              amenityProvisions: e.amentiyProvisions,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        equipmentProvisionChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              equipmentProvisions: e.equipmentProvisions,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        rentalOptionChanged: (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
              rentalOptions: e.rentalOption,
            ),
            authFailureOrSuccessOption: none(),
          );
        },


        finishedUpdatingAddressFromGoogle:  (e) async* {
          yield state.copyWith(
            location: state.location.copyWith(
                city: FacilityLocationCity(e.cityStr),
                provinceState: FacilityLocationStateProvince(e.provinceStr, state.location.countryRegion),
            ),
            isSubmittingAddress: true,
          );
        },

        finishedUpdatingAddressFromCoordinates:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
                ownerId: state.location.ownerId,
                placeId: state.location.placeId,
                longLat: state.location.longLat,
                locationPosition: state.location.locationPosition,
                countryRegion: state.location.countryRegion,
                city: FacilityLocationCity(e.cityStr),
                provinceState: FacilityLocationStateProvince(e.stateStr, e.countryStr),
                street: FacilityLocationStreet(e.streetStr),
                postalCode: FacilityLocationPostalCode(e.postalStr, e.countryStr),
                isLocationConfirmed: state.location.isLocationConfirmed,
                isUnverified: state.location.isUnverified,
                isVerified: state.location.isVerified,
                isVerifiedAlready: state.location.isVerifiedAlready,
                isCompleted: state.location.isCompleted,
                aptUnitNumber: state.location.aptUnitNumber,
                locationType: state.location.locationType
            ),
            isSubmittingAddress: true,
          );
        },

        finishedUpdatingUserLocation:  (e) async* {

        }

    );


  }

}