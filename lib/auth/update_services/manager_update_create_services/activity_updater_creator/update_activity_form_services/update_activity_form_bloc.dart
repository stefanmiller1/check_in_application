part of check_in_application;

@injectable
class UpdateActivityFormBloc extends Bloc<UpdateActivityFormEvent, UpdateActivityFormState> {

  final facade.AAuthFacade _activityAuthFacade;

  UpdateActivityFormBloc(this._activityAuthFacade) : super(UpdateActivityFormState.initial());

  @override
  Stream<UpdateActivityFormState> mapEventToState(
      UpdateActivityFormEvent event) async* {

    yield* event.map(
        initializeActivityForm: (e) async* {
          yield e.initializeActivityForm.fold(
              () => state,
              (activityForm) => state.copyWith(
              activityCreatorForm: activityForm,
              isEditingForm: false,
              authFailureOrSuccessOptionSaving: none()
            )
          );
        },

        activityNavSectionChanged: (e) async* {
          yield state.copyWith(
            activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: e.navSection,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        activityOptionChanged: (e) async* {
          yield state.copyWith(
            activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: e.activityOption,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },


        facilityOptionChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: ActivitySpaceType(
                    facilityTypeId: e.facilityOption,
                    spaceTypes: state.activityCreatorForm.activitySpaceSport.spaceTypes,
                    sportTypes: state.activityCreatorForm.activitySpaceSport.sportTypes
                  ),
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },


        spaceOptionsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: ActivitySpaceType(
                      facilityTypeId: state.activityCreatorForm.activitySpaceSport.facilityTypeId,
                      spaceTypes: e.spaceTypeList,
                      sportTypes: state.activityCreatorForm.activitySpaceSport.sportTypes
                  ),
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        sportSpaceOptionsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: ActivitySpaceType(
                    facilityTypeId: state.activityCreatorForm.activitySpaceSport.facilityTypeId,
                    spaceTypes: state.activityCreatorForm.activitySpaceSport.spaceTypes,
                    sportTypes: e.sportSpaceTypeList
                ),
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },
        placeIdChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: e.placeIdStr,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              ),
            isSubmittingAddress: false,
            authFailureOrSuccessOptionLocation: none(),
          );
        },
        longLatChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: e.longLatStr,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              ),
            isSubmittingAddress: false,
            authFailureOrSuccessOptionLocation: none(),
          );
        },
        countryChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: e.countryStr,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        cityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: FacilityLocationCity(e.cityStr),
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        provinceStateChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: FacilityLocationStateProvince(e.stateStr, state.activityCreatorForm.activityLocations.countryRegion),
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        streetChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: FacilityLocationStreet(e.streetStr),
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

             )
          );
        },
        postalCodeChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: FacilityLocationPostalCode(e.postalStr, state.activityCreatorForm.activityLocations.countryRegion),
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        aptNumberChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: e.aptStr,
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        isLocationConfirmed: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: e.isConfirmedBool,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        locationOwnerChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: e.ownerStr,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: state.activityCreatorForm.activityLocations.longLat,
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: state.activityCreatorForm.activityLocations.city,
                    provinceState: state.activityCreatorForm.activityLocations.provinceState,
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },


        updateWithSavedLocation: (e) async* {
          yield state.copyWith(
            activityCreatorForm: state.activityCreatorForm.copyWith(
                activityLocations: e.location
            )
          );
        },

        startingDateChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: e.dateChanged,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        endingDateChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: e.dateChanged,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isInviteOnlyChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: e.inviteBool,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        durationTypeChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: e.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },


        activitySessionTypeChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: e.durationType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        isDynamicHoursChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: AvailabilityHoursSettingOption(
                        dynamicHours: e.hoursBool,
                        fixedHours: state.activityCreatorForm.activityAvailability.hoursOpen.fixedHours,
                        openHours: state.activityCreatorForm.activityAvailability.hoursOpen.openHours
                    ),
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        isFixedHoursChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: AvailabilityHoursSettingOption(
                        dynamicHours: state.activityCreatorForm.activityAvailability.hoursOpen.dynamicHours,
                        fixedHours: e.hoursBool,
                        openHours: state.activityCreatorForm.activityAvailability.hoursOpen.openHours
                    ),
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        openHoursChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: AvailabilityHoursSettingOption(
                        dynamicHours: state.activityCreatorForm.activityAvailability.hoursOpen.dynamicHours,
                        fixedHours: state.activityCreatorForm.activityAvailability.hoursOpen.fixedHours,
                        openHours: e.openHours,
                    ),
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isAllowedBookingWhenOpenOnlyChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: e.bookingBool,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        isManuallyReviewedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: e.reviewBool,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isBookableBeforeInDaysChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: e.bookingBool,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        dateBeforeBookableChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: e.rangeBefore,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        numberOfDaysBeforeChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: e.daysInt,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        sessionsDetailsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: e.sessions,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isDayBasedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: e.dayBool,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isThirtyMinutesPerChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: e.thirtyBool,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isSixtyMinutesPerChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: e.sixtyBool,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isTwoHoursPerChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: e.twoBool,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },


        classIsCoachingNewTeamChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: e.teamBool,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                     ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        classIsCoachingExistingTeamChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: e.teamBool,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        classIsOpenToMorePlayers: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: e.playerBool,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        classPlayerLimitChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: e.limitInt,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        classPlayerRosterChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: e.contactDetails,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        classIsWorkingAlone: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: e.workBool,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        classIsWorkingWithAffiliatesChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: e.affiliateBool,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        classAffiliateOptionsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: e.affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        classIsAllowedUnlimitedAttendeeChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: e.limitBool,
                        attendeeLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.attendeeLimit ?? ClassesActivityAvailability.empty().attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        classAttendeeLimitChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: ClassesActivityAvailability(
                        coachNewTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachNewTeam,
                        coachExistingTeam: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.coachExistingTeam,
                        isOpenToMorePlayers: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToMorePlayers,
                        additionalPlayerLimit: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.additionalPlayerLimit,
                        playerRoster: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.playerRoster,
                        isWorkingAlone: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingAlone ?? ClassesActivityAvailability.empty().isWorkingAlone,
                        isWorkingWithAffiliates: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isWorkingWithAffiliates ?? ClassesActivityAvailability.empty().isWorkingWithAffiliates,
                        affiliateOptions: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.affiliateOptions ?? ClassesActivityAvailability.empty().affiliateOptions,
                        isOpenToUnlimitedAttendees: state.activityCreatorForm.activityAvailability.classesActivityAvailability?.isOpenToUnlimitedAttendees ?? ClassesActivityAvailability.empty().isOpenToUnlimitedAttendees,
                        attendeeLimit: e.attendeeLimit
                    ),
                    gameActivityAvailability: state.activityCreatorForm.activityAvailability.gameActivityAvailability
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        gameNumberOfTeamsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: state.activityCreatorForm.activityLocations,
                activityAvailability: ActivityAvailabilityPeriod(
                    fromStarting: state.activityCreatorForm.activityAvailability.fromStarting,
                    fromEnding: state.activityCreatorForm.activityAvailability.fromEnding,
                    isInviteOnly: state.activityCreatorForm.activityAvailability.isInviteOnly,
                    isActive: state.activityCreatorForm.activityAvailability.isActive,
                    durationType: state.activityCreatorForm.activityAvailability.durationType,
                    sessionType: state.activityCreatorForm.activityAvailability.sessionType,
                    hoursOpen: state.activityCreatorForm.activityAvailability.hoursOpen,
                    isBookableOnlyWhenOpen: state.activityCreatorForm.activityAvailability.isBookableOnlyWhenOpen,
                    isManuallyReviewed: state.activityCreatorForm.activityAvailability.isManuallyReviewed,
                    bookableBeforeInDays: state.activityCreatorForm.activityAvailability.bookableBeforeInDays,
                    datesBeforeBookable: state.activityCreatorForm.activityAvailability.datesBeforeBookable,
                    numberOfDaysBeforeBookable: state.activityCreatorForm.activityAvailability.numberOfDaysBeforeBookable,
                    sessionDetails: state.activityCreatorForm.activityAvailability.sessionDetails,
                    isDayBased: state.activityCreatorForm.activityAvailability.isDayBased,
                    isThirtyMinutesPer: state.activityCreatorForm.activityAvailability.isThirtyMinutesPer,
                    isSixtyMinutesPer: state.activityCreatorForm.activityAvailability.isSixtyMinutesPer,
                    isTwoHoursPer: state.activityCreatorForm.activityAvailability.isTwoHoursPer,
                    classesActivityAvailability: state.activityCreatorForm.activityAvailability.classesActivityAvailability,
                    gameActivityAvailability: GameActivityAvailability(
                    tournamentNumberOfTeams: e.teamInt
                  )
                ),
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );

        },

        isAnOrganizationChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: e.orgBool,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        organizationNameChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: e.name,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        activityTitleChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: e.titleChanged,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        activityDescriptionChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: e.descriptionChanged,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        activityDescriptionChangedTwo: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: e.descriptionChanged,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },


        activityGoalsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: e.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        activityInterestsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: e.activityInterests,
                      classActivityBackground: state.activityCreatorForm.activityBackground.classActivityBackground
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        classExperienceChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: ClassesActivityBackground(
                          experience: e.experiences,
                          certificates: state.activityCreatorForm.activityBackground.classActivityBackground?.certificates ?? ClassesActivityBackground.empty().certificates,
                          numberOfYearsInExperience: state.activityCreatorForm.activityBackground.classActivityBackground?.numberOfYearsInExperience ?? ClassesActivityBackground.empty().numberOfYearsInExperience
                    )
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        classCertificatesChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: ClassesActivityBackground(
                          experience: state.activityCreatorForm.activityBackground.classActivityBackground?.experience ?? ClassesActivityBackground.empty().experience,
                          certificates: e.certificates,
                          numberOfYearsInExperience: state.activityCreatorForm.activityBackground.classActivityBackground?.numberOfYearsInExperience ?? ClassesActivityBackground.empty().numberOfYearsInExperience
                      )
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        classNumberOfYearsExperienceChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: ActivityBackground(
                      isAnOrganization: state.activityCreatorForm.activityBackground.isAnOrganization,
                      organizationName: state.activityCreatorForm.activityBackground.organizationName,
                      activityTitle: state.activityCreatorForm.activityBackground.activityTitle,
                      activityDescription1: state.activityCreatorForm.activityBackground.activityDescription1,
                      activityDescription2: state.activityCreatorForm.activityBackground.activityDescription2,
                      activityGoals: state.activityCreatorForm.activityBackground.activityGoals,
                      activityInterests: state.activityCreatorForm.activityBackground.activityInterests,
                      classActivityBackground: ClassesActivityBackground(
                          experience: state.activityCreatorForm.activityBackground.classActivityBackground?.experience ?? ClassesActivityBackground.empty().experience,
                          certificates: state.activityCreatorForm.activityBackground.classActivityBackground?.certificates ?? ClassesActivityBackground.empty().certificates,
                          numberOfYearsInExperience: e.yearInt
                      )
                  ),
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        isSeventeenAndUnderChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                      isSeventeenAndUnder: e.ageBool,
                      minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                      isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                      isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                      isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                      skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                      customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                      suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                      isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                      isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                      isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                      isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                      isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                      isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                      eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },
        minimumAgeChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: e.ageInt,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isMenOnlyChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: e.menBool,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        isWomenOnlyChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: e.womenBool,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },
        isCoEdOnlyChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: e.coedBool,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        skillLevelExpectationChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: e.skillLevel,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        customRequirementChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: e.customReq,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        suggestedYearsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: e.yearsInt,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },

        isEquipmentProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: e.equipBool,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        isFacilityEquipmentChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: e.equipBool,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isGearProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: e.gearBool,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isFacilityGearChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: e.gearBool,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isAnalyticsProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: e.anaBool,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isOfficiatorProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: e.offBool,
                    eventActivityRulesRequirement: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement,
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isMerchantSupportedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: e.merchBool,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        merchantListChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: e.merchList,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        isAlcoholForSaleChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: e.alcBool,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

            )
          );
        },
        isFoodForSaleChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: e.foodBool,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isAlcoholProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: e.alcBool,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isFacilityAlcoholChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: e.alcBool,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isFoodProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: e.foodBool,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isFacilityFoodChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: e.foodBool,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isSecurityProvidedChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: e.secBool,
                        isFacilityProvidedSecurity: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedSecurity ?? EventActivityRulesRequirement.empty().isFacilityProvidedSecurity
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,

              )
          );
        },

        isFacilitySecurityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: ActivityRequirement(
                    isSeventeenAndUnder: state.activityCreatorForm.activityRequirement.isSeventeenAndUnder,
                    minimumAgeRequirement: state.activityCreatorForm.activityRequirement.minimumAgeRequirement,
                    isMensOnly: state.activityCreatorForm.activityRequirement.isMensOnly,
                    isWomenOnly: state.activityCreatorForm.activityRequirement.isWomenOnly,
                    isCoEdOnly: state.activityCreatorForm.activityRequirement.isCoEdOnly,
                    skillLevelExpectation: state.activityCreatorForm.activityRequirement.skillLevelExpectation,
                    customRequirementOption: state.activityCreatorForm.activityRequirement.customRequirementOption,
                    suggestedYearsOfExperience: state.activityCreatorForm.activityRequirement.suggestedYearsOfExperience,
                    isEquipmentProvided: state.activityCreatorForm.activityRequirement.isEquipmentProvided,
                    isFacilityEquipment: state.activityCreatorForm.activityRequirement.isFacilityEquipment,
                    isGearProvided: state.activityCreatorForm.activityRequirement.isGearProvided,
                    isFacilityGear: state.activityCreatorForm.activityRequirement.isFacilityGear,
                    isAnalyticsProvided: state.activityCreatorForm.activityRequirement.isAnalyticsProvided,
                    isOfficiatorProvided: state.activityCreatorForm.activityRequirement.isOfficiatorProvided,
                    eventActivityRulesRequirement: EventActivityRulesRequirement(
                        isMerchantSupported: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isMerchantSupported ?? EventActivityRulesRequirement.empty().isMerchantSupported,
                        listOfMerchants: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.listOfMerchants ?? EventActivityRulesRequirement.empty().listOfMerchants,
                        isAlcoholForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholForSale ?? EventActivityRulesRequirement.empty().isAlcoholForSale,
                        isFoodForSale: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodForSale ?? EventActivityRulesRequirement.empty().isFoodForSale,
                        isAlcoholProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isAlcoholProvided ?? EventActivityRulesRequirement.empty().isAlcoholProvided,
                        isFacilityProvidedAlcohol: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedAlcohol ?? EventActivityRulesRequirement.empty().isFacilityProvidedAlcohol,
                        isFoodProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFoodProvided ?? EventActivityRulesRequirement.empty().isFoodProvided,
                        isFacilityProvidedFood: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isFacilityProvidedFood ?? EventActivityRulesRequirement.empty().isFacilityProvidedFood,
                        isSecurityProvided: state.activityCreatorForm.activityRequirement.eventActivityRulesRequirement?.isSecurityProvided ?? EventActivityRulesRequirement.empty().isSecurityProvided,
                        isFacilityProvidedSecurity: e.secBool
                    ),
                  ),
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        ruleOptionChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: ActivityRules(
                      ruleOption: e.rules,
                      customRuleOption: state.activityCreatorForm.activityRules.customRuleOption,
                      gameActivityRules: state.activityCreatorForm.activityRules.gameActivityRules,
                      skillLevelReached: state.activityCreatorForm.activityRules.skillLevelReached
                  ),
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },
        customRuleOptionChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: ActivityRules(
                    ruleOption: state.activityCreatorForm.activityRules.ruleOption,
                    customRuleOption: e.customRules,
                    gameActivityRules: state.activityCreatorForm.activityRules.gameActivityRules,
                    skillLevelReached: state.activityCreatorForm.activityRules.skillLevelReached
                  ),
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        skillLevelToReachChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: ActivityRules(
                    ruleOption: state.activityCreatorForm.activityRules.ruleOption,
                    customRuleOption: state.activityCreatorForm.activityRules.customRuleOption,
                    gameActivityRules: state.activityCreatorForm.activityRules.gameActivityRules,
                    skillLevelReached: e.skills
                  ),
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        allowedDonationTypesChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: ActivityRules(
                    ruleOption: state.activityCreatorForm.activityRules.ruleOption,
                    customRuleOption: state.activityCreatorForm.activityRules.customRuleOption,
                    gameActivityRules: GameActivityRules(
                        allowedDonationTypes: e.donationTypes,
                        isAllowedExternalContributions: state.activityCreatorForm.activityRules.gameActivityRules?.isAllowedExternalContributions,
                    ),
                    skillLevelReached: state.activityCreatorForm.activityRules.skillLevelReached
                  ),
              activityAttendance: state.activityCreatorForm.activityAttendance,
              activityCost: state.activityCreatorForm.activityCost,
              activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        isAllowedExternalContributions: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: ActivityRules(
                    ruleOption: state.activityCreatorForm.activityRules.ruleOption,
                    customRuleOption: state.activityCreatorForm.activityRules.customRuleOption,
                    gameActivityRules: GameActivityRules(
                      allowedDonationTypes: state.activityCreatorForm.activityRules.gameActivityRules?.allowedDonationTypes,
                      isAllowedExternalContributions: e.exBool,
                    ),
                    skillLevelReached: state.activityCreatorForm.activityRules.skillLevelReached
                  ),
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        isLimitedAttendanceChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isLimitedAttendance: e.limitBool,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        attendanceLimitChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: e.limitInt,
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },


        isTicketBasedAttendanceChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    isTicketBased: e.ticketBool,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        isPassBasedAttendanceChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: e.passBool,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },


        ticketAttendanceIsAllowedGroups: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: ActivityTicketOption(
                        isAllowedGroupAttendance: e.groupBool,
                        minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.minimumGroupQuantity ?? 6,
                        maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.maximumGroupQuantity ?? 12,
                        ticketQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.ticketQuantity ?? 20,
                    ),
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        ticketMinimumGroupQuantityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: ActivityTicketOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityTickets?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: e.minInt,
                      maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.maximumGroupQuantity ?? 12,
                      ticketQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.ticketQuantity ?? 20,
                    ),
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        ticketMaximumGroupQuantityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: ActivityTicketOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityTickets?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.minimumGroupQuantity ?? 6,
                      maximumGroupQuantity: e.maxInt,
                      ticketQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.ticketQuantity ?? 20,
                    ),
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        ticketQuantityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: ActivityTicketOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityTickets?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.minimumGroupQuantity ?? 6,
                      maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityTickets?.maximumGroupQuantity ?? 12,
                      ticketQuantity: e.ticketsInt,
                    ),
                    activityPasses: state.activityCreatorForm.activityAttendance.activityPasses,
                  ),
              activityCost: state.activityCreatorForm.activityCost,
              activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        passesAttendanceIsAllowedGroups: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: ActivityPassesOption(
                        isAllowedGroupAttendance: e.groupBool,
                        minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.minimumGroupQuantity ?? 6,
                        maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.maximumGroupQuantity ?? 12,
                        passQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.passQuantity ?? 20,
                        recurringPassAllSession: state.activityCreatorForm.activityAttendance.activityPasses?.recurringPassAllSession,
                        recurringNumberOfSessions: state.activityCreatorForm.activityAttendance.activityPasses?.recurringNumberOfSessions,
                    ),
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },
        passesMinimumGroupQuantityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: ActivityPassesOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityPasses?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: e.minInt,
                      maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.maximumGroupQuantity ?? 12,
                      passQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.passQuantity ?? 20,
                      recurringPassAllSession: state.activityCreatorForm.activityAttendance.activityPasses?.recurringPassAllSession,
                      recurringNumberOfSessions: state.activityCreatorForm.activityAttendance.activityPasses?.recurringNumberOfSessions,
                    ),
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        passesMaximumGroupQuantityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: ActivityPassesOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityPasses?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.minimumGroupQuantity ?? 6,
                      maximumGroupQuantity: e.maxInt,
                      passQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.passQuantity ?? 20,
                      recurringPassAllSession: state.activityCreatorForm.activityAttendance.activityPasses?.recurringPassAllSession,
                      recurringNumberOfSessions: state.activityCreatorForm.activityAttendance.activityPasses?.recurringNumberOfSessions,
                    ),
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        passesQuantityChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: ActivityPassesOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityPasses?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.minimumGroupQuantity ?? 6,
                      maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.maximumGroupQuantity ?? 12,
                      passQuantity: e.passesInt,
                      recurringPassAllSession: state.activityCreatorForm.activityAttendance.activityPasses?.recurringPassAllSession,
                      recurringNumberOfSessions: state.activityCreatorForm.activityAttendance.activityPasses?.recurringNumberOfSessions,
                    ),
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        passesCoverAllSessions: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: ActivityPassesOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityPasses?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.minimumGroupQuantity ?? 6,
                      maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.maximumGroupQuantity ?? 12,
                      passQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.passQuantity ?? 20,
                      recurringPassAllSession: e.sessionBool,
                      recurringNumberOfSessions: state.activityCreatorForm.activityAttendance.activityPasses?.recurringNumberOfSessions,
                    ),
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },
        passesCoverLimitedSession: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: ActivityAttendance(
                    isTicketBased: state.activityCreatorForm.activityAttendance.isTicketBased,
                    isPassBased: state.activityCreatorForm.activityAttendance.isPassBased,
                    isLimitedAttendance: state.activityCreatorForm.activityAttendance.isLimitedAttendance,
                    attendanceLimit: state.activityCreatorForm.activityAttendance.attendanceLimit,
                    activityTickets: state.activityCreatorForm.activityAttendance.activityTickets,
                    activityPasses: ActivityPassesOption(
                      isAllowedGroupAttendance: state.activityCreatorForm.activityAttendance.activityPasses?.isAllowedGroupAttendance ?? false,
                      minimumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.minimumGroupQuantity ?? 6,
                      maximumGroupQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.maximumGroupQuantity ?? 12,
                      passQuantity: state.activityCreatorForm.activityAttendance.activityPasses?.passQuantity ?? 20,
                      recurringPassAllSession: state.activityCreatorForm.activityAttendance.activityPasses?.recurringPassAllSession,
                      recurringNumberOfSessions: e.limitInt,
                    ),
                  ),
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        feeIsDynamicChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                      isDynamicHours: e.dynamicBool,
                      isFixedHours: state.activityCreatorForm.activityCost.isFixedHours,
                      defaultFeeTickets: state.activityCreatorForm.activityCost.defaultFeeTickets,
                      defaultFeePasses: state.activityCreatorForm.activityCost.defaultFeePasses,
                      defaultFeeGroupPasses: state.activityCreatorForm.activityCost.defaultFeeGroupPasses,
                      costSettingsRecurring: state.activityCreatorForm.activityCost.costSettingsRecurring,
                      costSettingsMulti: state.activityCreatorForm.activityCost.costSettingsMulti,
                  ),
                activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        feeIsStaticChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                    isDynamicHours: state.activityCreatorForm.activityCost.isDynamicHours,
                    isFixedHours: e.staticBool,
                    defaultFeeTickets: state.activityCreatorForm.activityCost.defaultFeeTickets,
                    defaultFeePasses: state.activityCreatorForm.activityCost.defaultFeePasses,
                    defaultFeeGroupPasses: state.activityCreatorForm.activityCost.defaultFeeGroupPasses,
                    costSettingsRecurring: state.activityCreatorForm.activityCost.costSettingsRecurring,
                    costSettingsMulti: state.activityCreatorForm.activityCost.costSettingsMulti,
                  ),
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        feeDefaultTicketChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                    isDynamicHours: state.activityCreatorForm.activityCost.isDynamicHours,
                    isFixedHours: state.activityCreatorForm.activityCost.isFixedHours,
                    defaultFeeTickets: e.ticketStr,
                    defaultFeePasses: state.activityCreatorForm.activityCost.defaultFeePasses,
                    defaultFeeGroupPasses: state.activityCreatorForm.activityCost.defaultFeeGroupPasses,
                    costSettingsRecurring: state.activityCreatorForm.activityCost.costSettingsRecurring,
                    costSettingsMulti: state.activityCreatorForm.activityCost.costSettingsMulti,
                  ),
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        feeDefaultPassesChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                    isDynamicHours: state.activityCreatorForm.activityCost.isDynamicHours,
                    isFixedHours: state.activityCreatorForm.activityCost.isFixedHours,
                    defaultFeeTickets: state.activityCreatorForm.activityCost.defaultFeeTickets,
                    defaultFeePasses: e.passStr,
                    defaultFeeGroupPasses: state.activityCreatorForm.activityCost.defaultFeeGroupPasses,
                    costSettingsRecurring: state.activityCreatorForm.activityCost.costSettingsRecurring,
                    costSettingsMulti: state.activityCreatorForm.activityCost.costSettingsMulti,
                  ),
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        feeDefaultGroupPassesChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                    isDynamicHours: state.activityCreatorForm.activityCost.isDynamicHours,
                    isFixedHours: state.activityCreatorForm.activityCost.isFixedHours,
                    defaultFeeTickets: state.activityCreatorForm.activityCost.defaultFeeTickets,
                    defaultFeePasses: state.activityCreatorForm.activityCost.defaultFeePasses,
                    defaultFeeGroupPasses: e.passGroupStr,
                    costSettingsRecurring: state.activityCreatorForm.activityCost.costSettingsRecurring,
                    costSettingsMulti: state.activityCreatorForm.activityCost.costSettingsMulti,
                  ),
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        feeRecurringSettingsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                    isDynamicHours: state.activityCreatorForm.activityCost.isDynamicHours,
                    isFixedHours: state.activityCreatorForm.activityCost.isFixedHours,
                    defaultFeeTickets: state.activityCreatorForm.activityCost.defaultFeeTickets,
                    defaultFeePasses: state.activityCreatorForm.activityCost.defaultFeePasses,
                    defaultFeeGroupPasses: state.activityCreatorForm.activityCost.defaultFeeGroupPasses,
                    costSettingsRecurring: e.feeRSettings,
                    costSettingsMulti: state.activityCreatorForm.activityCost.costSettingsMulti,
                  ),
                  activityCancellation: state.activityCreatorForm.activityCancellation,
              )
          );
        },

        feeMultiDaySettingsChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: ActivityCost(
                    isDynamicHours: state.activityCreatorForm.activityCost.isDynamicHours,
                    isFixedHours: state.activityCreatorForm.activityCost.isFixedHours,
                    defaultFeeTickets: state.activityCreatorForm.activityCost.defaultFeeTickets,
                    defaultFeePasses: state.activityCreatorForm.activityCost.defaultFeePasses,
                    defaultFeeGroupPasses: state.activityCreatorForm.activityCost.defaultFeeGroupPasses,
                    costSettingsRecurring: state.activityCreatorForm.activityCost.costSettingsRecurring,
                    costSettingsMulti: e.feeMSettings,
                  ),
                  activityCancellation: state.activityCreatorForm.activityCancellation,
            )
          );
        },

        cancellationChanged: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                  activityFormId: state.activityCreatorForm.activityFormId,
                  formNav: state.activityCreatorForm.formNav,
                  activityType: state.activityCreatorForm.activityType,
                  activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                  activityLocations: state.activityCreatorForm.activityLocations,
                  activityAvailability: state.activityCreatorForm.activityAvailability,
                  activityBackground: state.activityCreatorForm.activityBackground,
                  activityRequirement: state.activityCreatorForm.activityRequirement,
                  activityRules: state.activityCreatorForm.activityRules,
                  activityAttendance: state.activityCreatorForm.activityAttendance,
                  activityCost: state.activityCreatorForm.activityCost,
                  activityCancellation: ActivityCancellation(
                    ruleOption: e.rules
                  ),
              )
          );
        },

        finishedUpdatingAddressFromGoogle: (e) async* {
          yield state.copyWith(
              activityCreatorForm: ActivityCreatorForm(
                activityFormId: state.activityCreatorForm.activityFormId,
                formNav: state.activityCreatorForm.formNav,
                activityType: state.activityCreatorForm.activityType,
                activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
                activityLocations: LocationModel(
                    ownerId: state.activityCreatorForm.activityLocations.ownerId,
                    locationType: state.activityCreatorForm.activityLocations.locationType,
                    placeId: state.activityCreatorForm.activityLocations.placeId,
                    longLat: '',
                    countryRegion: state.activityCreatorForm.activityLocations.countryRegion,
                    city: FacilityLocationCity(e.cityStr),
                    provinceState: FacilityLocationStateProvince(e.provinceStr, state.activityCreatorForm.activityLocations.countryRegion),
                    street: state.activityCreatorForm.activityLocations.street,
                    postalCode: state.activityCreatorForm.activityLocations.postalCode,
                    isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                    isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                    isVerified: state.activityCreatorForm.activityLocations.isVerified,
                    isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                    isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                    aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
                ),
                activityAvailability: state.activityCreatorForm.activityAvailability,
                activityBackground: state.activityCreatorForm.activityBackground,
                activityRequirement: state.activityCreatorForm.activityRequirement,
                activityRules: state.activityCreatorForm.activityRules,
                activityAttendance: state.activityCreatorForm.activityAttendance,
                activityCost: state.activityCreatorForm.activityCost,
                activityCancellation: state.activityCreatorForm.activityCancellation,

              ),
            isSubmittingAddress: true,
          );
        },

        finishedUpdatingAddressFromCoordinates: (e) async* {
          yield state.copyWith(
            activityCreatorForm: ActivityCreatorForm(
              activityFormId: state.activityCreatorForm.activityFormId,
              formNav: state.activityCreatorForm.formNav,
              activityType: state.activityCreatorForm.activityType,
              activitySpaceSport: state.activityCreatorForm.activitySpaceSport,
              activityLocations: LocationModel(
                  ownerId: state.activityCreatorForm.activityLocations.ownerId,
                  locationType: state.activityCreatorForm.activityLocations.locationType,
                  placeId: state.activityCreatorForm.activityLocations.placeId,
                  longLat: state.activityCreatorForm.activityLocations.longLat,
                  countryRegion: e.countryStr,
                  city: FacilityLocationCity(e.cityStr),
                  provinceState: FacilityLocationStateProvince(e.stateStr, e.countryStr),
                  street: FacilityLocationStreet(e.streetStr),
                  postalCode: FacilityLocationPostalCode(e.postalStr, e.countryStr),
                  isLocationConfirmed: state.activityCreatorForm.activityLocations.isLocationConfirmed,
                  isUnverified: state.activityCreatorForm.activityLocations.isUnverified,
                  isVerified: state.activityCreatorForm.activityLocations.isVerified,
                  isVerifiedAlready: state.activityCreatorForm.activityLocations.isVerifiedAlready,
                  isCompleted: state.activityCreatorForm.activityLocations.isCompleted,
                  aptUnitNumber: state.activityCreatorForm.activityLocations.aptUnitNumber
              ),
              activityAvailability: state.activityCreatorForm.activityAvailability,
              activityBackground: state.activityCreatorForm.activityBackground,
              activityRequirement: state.activityCreatorForm.activityRequirement,
              activityRules: state.activityCreatorForm.activityRules,
              activityAttendance: state.activityCreatorForm.activityAttendance,
              activityCost: state.activityCreatorForm.activityCost,
              activityCancellation: state.activityCreatorForm.activityCancellation,
            ),
            isSubmittingAddress: true,
          );
        },

      createActivityFinished: (e) async* {
        Either<ActivityFormFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          authFailureOrSuccessOptionSaving: none()
        );

        failureOrSuccess = state.isSaving ? left(const ActivityFormFailure.unexpected()) : await _activityAuthFacade.createActivityForm(activityForm: state.activityCreatorForm);

        yield state.copyWith(
          isSaving: false,
          authFailureOrSuccessOptionSaving: optionOf(failureOrSuccess)
        );

      },

      saveActivityFinished: (e) async* {
        Either<ActivityFormFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
            authFailureOrSuccessOptionSubmitting: none()
        );

        // failureOrSuccess = state.isSubmitting ? left(const ActivityFormFailure.unexpected()) : await _activityAuthFacade.createCompletedActivityForm(activityForm: state.activityCreatorForm);
        //
        // yield state.copyWith(
        //   isSubmitting: false,
        //   authFailureOrSuccessOptionSubmitting: optionOf(failureOrSuccess)
        // );

      },

      deleteActivityFinished: (e) async* {},

      );
    }

}