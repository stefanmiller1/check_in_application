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

        },

        isPublicChanged:  (e) async* {

        },


        placeIdChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: e.placeIdStr,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        longLatChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: e.longLatStr,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),

            authFailureOrSuccessOption: none(),
          );
        },

        countryChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: e.countryStr,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),

            authFailureOrSuccessOption: none(),
          );
        },

        cityChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: FacilityLocationCity(e.cityStr),
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        provinceStateChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: FacilityLocationStateProvince(e.stateStr, state.location.countryRegion),
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        streetChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: FacilityLocationStreet(e.streetStr),
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },

        postalCodeChanged: (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: FacilityLocationPostalCode(e.postalStr, state.location.countryRegion),
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        aptNumberChanged:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: e.aptStr,
              locationType: state.location.locationType,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        isLocationConfirmed:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: e.isConfirmedBool,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: state.location.locationType,
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        locationTypeChanged:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
              ownerId: state.location.ownerId,
              placeId: state.location.placeId,
              longLat: state.location.longLat,
              countryRegion: state.location.countryRegion,
              city: state.location.city,
              provinceState: state.location.provinceState,
              street: state.location.street,
              postalCode: state.location.postalCode,
              isLocationConfirmed: state.location.isLocationConfirmed,
              isUnverified: state.location.isUnverified,
              isVerified: state.location.isVerified,
              isVerifiedAlready: state.location.isVerifiedAlready,
              isCompleted: state.location.isCompleted,
              aptUnitNumber: state.location.aptUnitNumber,
              locationType: e.type
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        locationOwnerChanged:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
                ownerId: e.ownerStr,
                placeId: state.location.placeId,
                longLat: state.location.longLat,
                countryRegion: state.location.countryRegion,
                city: state.location.city,
                provinceState: state.location.provinceState,
                street: state.location.street,
                postalCode: state.location.postalCode,
                isLocationConfirmed: state.location.isLocationConfirmed,
                isUnverified: state.location.isUnverified,
                isVerified: state.location.isVerified,
                isVerifiedAlready: state.location.isVerifiedAlready,
                isCompleted: state.location.isCompleted,
                aptUnitNumber: state.location.aptUnitNumber,
                locationType: state.location.locationType
            ),
            authFailureOrSuccessOption: none(),
          );
        },


        finishedUpdatingAddressFromGoogle:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
                ownerId: state.location.ownerId,
                placeId: state.location.placeId,
                longLat: state.location.longLat,
                countryRegion: state.location.countryRegion,
                city: FacilityLocationCity(e.cityStr),
                provinceState: FacilityLocationStateProvince(e.provinceStr, state.location.countryRegion),
                street: state.location.street,
                postalCode: state.location.postalCode,
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

        finishedUpdatingAddressFromCoordinates:  (e) async* {
          yield state.copyWith(
            location: LocationModel(
                ownerId: state.location.ownerId,
                placeId: state.location.placeId,
                longLat: state.location.longLat,
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