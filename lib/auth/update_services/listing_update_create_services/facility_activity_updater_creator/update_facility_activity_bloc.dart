part of check_in_application;

@injectable
class UpdateFacilityActivityBloc extends Bloc<UpdateFacilityActivityEvent, UpdateFacilityActivityState> {

  final facade.FAuthFacade _facilityFormFacade;

  UpdateFacilityActivityBloc(this._facilityFormFacade) : super(UpdateFacilityActivityState.initial());

  @override
  Stream<UpdateFacilityActivityState> mapEventToState(
      UpdateFacilityActivityEvent event) async* {

    yield* event.map(

        initializedActivityOptionCamp: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                      newActivityOptions: profileActivity.copyWith(
                        campActivity: e.campInitial.fold(
                                () => state.newActivityOptions.campActivity,
                                (campActivity) => campActivity
                        ),
                        activity: profileActivity.activity,
                        reservedAvailability: profileActivity.reservedAvailability,
                      ),
                      facilityId: e.facilityId.fold(
                              () => state.facilityId,
                              (facilityId) => facilityId
                      ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
            )
          );
        },

        initializedActivityOptionEvent: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    eventActivity: e.eventInitial.fold(
                            () => state.newActivityOptions.eventActivity,
                            (eventActivity) => eventActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              )
          );
        },


        initializedActivityOptionLeague: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    leagueActivity: e.leagueInitial.fold(
                            () => state.newActivityOptions.leagueActivity,
                            (leagueActivity) => leagueActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              )
          );
        },


        initializedActivityOptionCoaching: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    coachActivity: e.coachInitial.fold(
                            () => state.newActivityOptions.coachActivity,
                            (coachActivity) => coachActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              )
          );
        },


        initializedActivityOptionTeaching: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    teachingActivity: e.teachingInitial.fold(
                            () => state.newActivityOptions.teachingActivity,
                            (teachActivity) => teachActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
            )
          );
        },


        initializedActivityOptionTraining: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    trainingActivity: e.trainingInitial.fold(
                            () => state.newActivityOptions.trainingActivity,
                            (trainingActivity) => trainingActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
            )
          );
        },


        initializedActivityOptionInformalGame: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    informalActivity: e.informalInitial.fold(
                            () => state.newActivityOptions.informalActivity,
                            (informalActivity) => informalActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
            )
          );
        },


        initializedActivityOptionOneOnOne: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    oneOnOneActivity: e.oneOnOneInitial.fold(
                            () => state.newActivityOptions.oneOnOneActivity,
                            (oneActivity) => oneActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              )
          );
        },


        initializedActivityOptionTeams: (e) async* {yield e.initialActivity.fold(
                () => state,
                (profileActivity) => state.copyWith(
              newActivityOptions: FacilityActivityCreatorForm(
                  activity: profileActivity.activity,
                  reservedAvailability: profileActivity.reservedAvailability,
                  teamsActivity: e.teamsInitial.fold(
                          () => state.newActivityOptions.teamsActivity,
                          (teamActivity) => teamActivity
                  )
              ),
              facilityId: e.facilityId.fold(
                      () => state.facilityId,
                      (facilityId) => facilityId
              ),
              isEditingProfile: false,
              authFailureOrSuccessOption: none(),
            )
          );
        },


        initializedActivityOptionTournament: (e) async* {
          yield e.initialActivity.fold(
                  () => state,
                  (profileActivity) => state.copyWith(
                newActivityOptions: FacilityActivityCreatorForm(
                    activity: profileActivity.activity,
                    reservedAvailability: profileActivity.reservedAvailability,
                    tournamentActivity: e.tournamentInitial.fold(
                            () => state.newActivityOptions.tournamentActivity,
                            (tournamentActivity) => tournamentActivity
                    )
                ),
                facilityId: e.facilityId.fold(
                        () => state.facilityId,
                        (facilityId) => facilityId
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              )
          );
        },


        isPermittedFoodCateringChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: e.permitBool,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        isProvidedFoodCateringChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: e.provBool,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        foodCateringFeeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: e.feeStr,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        isPermittedAlcoholChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: e.permitBool,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

              )
            )
          );
        },

        isProvidedLiquorLicenceChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: e.provBool,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        liquorLicenceFeeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: e.feeStr,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        isPermittedSecurityChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: e.permitBool,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        isProvidedSecurityServiceChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: e.provBool,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },

        securityServiceFeeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: e.feeStr,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  )
              )
          );
        },



        isRequiredOrganizationChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                campActivity: CampFacilityActivityOption(
                  isRequiredOrganizationVerification: e.organizationBool,
                  isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                  isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                  isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                  quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                  isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                  isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                  sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
              )
            )
          );
        },

        isRequiredContactChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: e.contactBool,
                      isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                      isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                      quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
                  )
              )
          );

        },

        isAllowedLongTermChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                      isAllowedLongTerm: e.longBool,
                      isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                      quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
                  ),
              )
          );
        },


        isAllowedAudiencesChanged: (e) async* {
          yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
                tournamentActivity: TournamentFacilityActivityOption(
                    isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                    activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                    isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                    isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                    isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                    providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                    isAllowedAudiences: e.allowBool,
                    maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                    isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                    minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                    isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                    isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },

        maxAudienceSizeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: e.sizeInt,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
                  )
              )
          );
        },

        minimumTeamSizeRequirementChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: e.reqBool,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
                  )
              )
          );
        },

        minimumTeamSizeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: e.sizeInt,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },



        isAllowedMultiFacilityPartnershipChanged: (e) async* {
          yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
              leagueActivity: LeagueFacilityActivityOption(
                  isAllowedMultiFacilityPartnership: e.allowBool,
                  isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                  isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                  equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                  isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                  isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                  sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
              ),
              tournamentActivity: TournamentFacilityActivityOption(
                  isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                  activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                  isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                  isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                  equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                  isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                  isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                  providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                  isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                  maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                  isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                  minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                  isAllowedMultiFacilityPartnership: e.allowBool,
                  isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },


        isAllowedActivityWagersChanged: (e) async* {
          yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
              informalActivity: InformalGameFacilityActivityOption(
                isAllowedWagers: e.allowBool,
                isProvidedIncentives: (state.newActivityOptions.informalActivity != null) ? state.newActivityOptions.informalActivity!.isProvidedIncentives : InformalGameFacilityActivityOption.empty().isProvidedIncentives,
                providedIncentiveOptions: (state.newActivityOptions.informalActivity != null) ? state.newActivityOptions.informalActivity!.providedIncentiveOptions : InformalGameFacilityActivityOption.empty().providedIncentiveOptions
              ),
              oneOnOneActivity: OneOnOneFacilityActivityOption(
                  isAllowedWagers: e.allowBool
              ),
              teamsActivity: TeamsRunsFacilityActivityOption(
                  isPermittedMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isPermittedMerchandising : TeamsRunsFacilityActivityOption.empty().isPermittedMerchandising ,
                  activityMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.activityMerchandising : TeamsRunsFacilityActivityOption.empty().activityMerchandising,
                  isAllowedWagers: e.allowBool,
                  isProvidedIncentives: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isProvidedIncentives : TeamsRunsFacilityActivityOption.empty().isProvidedIncentives,
                  providedIncentiveOptions: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.providedIncentiveOptions : TeamsRunsFacilityActivityOption.empty().providedIncentiveOptions
              ),
              tournamentActivity: TournamentFacilityActivityOption(
                  isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                  activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                  isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                  isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                  equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                  isAllowedWagers: e.allowBool,
                  isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                  providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                  isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                  maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                  isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                  minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                  isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                  isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },



        isProvidedIncentivesChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  informalActivity: InformalGameFacilityActivityOption(
                      isAllowedWagers: (state.newActivityOptions.informalActivity != null) ? state.newActivityOptions.informalActivity!.isAllowedWagers : InformalGameFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: e.provBool,
                      providedIncentiveOptions: (state.newActivityOptions.informalActivity != null) ? state.newActivityOptions.informalActivity!.providedIncentiveOptions : InformalGameFacilityActivityOption.empty().providedIncentiveOptions
                  ),
                  teamsActivity: TeamsRunsFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isPermittedMerchandising : TeamsRunsFacilityActivityOption.empty().isPermittedMerchandising ,
                      activityMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.activityMerchandising : TeamsRunsFacilityActivityOption.empty().activityMerchandising,
                      isAllowedWagers: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isAllowedWagers : TeamsRunsFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: e.provBool,
                      providedIncentiveOptions: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.providedIncentiveOptions : TeamsRunsFacilityActivityOption.empty().providedIncentiveOptions
                  ),
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: e.provBool,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
                  )
              )
          );
        },

        providedIncentivesConditionsListChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  informalActivity: InformalGameFacilityActivityOption(
                      isAllowedWagers: (state.newActivityOptions.informalActivity != null) ? state.newActivityOptions.informalActivity!.isAllowedWagers : InformalGameFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.informalActivity != null) ? state.newActivityOptions.informalActivity!.isProvidedIncentives : InformalGameFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: e.incentiveList
                  ),
                  teamsActivity: TeamsRunsFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isPermittedMerchandising : TeamsRunsFacilityActivityOption.empty().isPermittedMerchandising ,
                      activityMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.activityMerchandising : TeamsRunsFacilityActivityOption.empty().activityMerchandising,
                      isAllowedWagers: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isAllowedWagers : TeamsRunsFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isProvidedIncentives : TeamsRunsFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: e.incentiveList
                  ),
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: e.incentiveList,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },



        isPermittedEquipmentAndStorageChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: e.permitBool,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  ),
                leagueActivity: LeagueFacilityActivityOption(
                    isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                    isPermittedEventEquipmentAndStorage: e.permitBool,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                    isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
                ),
                tournamentActivity: TournamentFacilityActivityOption(
                    isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                    activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                    isPermittedEquipmentAndStorage: e.permitBool,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                    isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                    isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                    providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                    isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                    maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                    isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                    minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                    isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                    isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },

        isProvidedEquipmentAndStorageChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: e.provBool,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

                  ),
                  leagueActivity: LeagueFacilityActivityOption(
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: e.provBool,
                      equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                      isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
                  ),
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: e.provBool,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },

        equipmentAndStorageFeeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: e.feeStr,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
                  ),
                  leagueActivity: LeagueFacilityActivityOption(
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: e.feeStr,
                      isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
                  ),
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: e.feeStr,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },


        isAllowedUnderAgeChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification:(state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                      isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                      isAllowedUnderAge: e.ageBool,
                      quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
              ),
                eventActivity: EventFacilityActivityOption(
                    isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                    activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                    isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                    isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                    foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                    isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                    isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                    liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                    isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                    isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                    securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                    isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                    quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                    isAllowedUnderAge: e.ageBool,
                    isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships

              )
            )
          );
        },

        quantityLimitChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                      isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                      isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                      quantityLimit: e.limitInt,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
              ),
                eventActivity: EventFacilityActivityOption(
                    isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                    activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                    isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                    isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                    foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                    isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                    isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                    liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                    isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                    isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                    securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                    isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                    quantityLimit: e.limitInt,
                    isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                    isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
              )
            )
          );
        },



        isAffiliatesRequired: (e) async* {
          yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
              coachActivity: CoachFacilityActivityOption(
                  isRequiredAffiliated: e.reqBool,
                  requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                  isSkillsRequired:  (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                  skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                  isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                  isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                  sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
              ),
              teachingActivity: TeachingFacilityActivityOption(
                  isRequiredAffiliated: e.reqBool,
                  requiredAffiliateTypes: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.requiredAffiliateTypes : TeachingFacilityActivityOption.empty().requiredAffiliateTypes,
                  isSkillsRequired: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.isSkillsRequired : TeachingFacilityActivityOption.empty().isSkillsRequired,
                  skillsRequirement: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.skillsRequirement : TeachingFacilityActivityOption.empty().skillsRequirement
              )
            )
          );
        },

        requiredAffiliateTypesChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  coachActivity: CoachFacilityActivityOption(
                      isRequiredAffiliated:  (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                      requiredAffiliateTypes: e.affiliateList,
                      isSkillsRequired: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                      skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                      isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
                  ),
                  teachingActivity: TeachingFacilityActivityOption(
                      isRequiredAffiliated: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.isRequiredAffiliated : TeachingFacilityActivityOption.empty().isRequiredAffiliated,
                      requiredAffiliateTypes: e.affiliateList,
                      isSkillsRequired: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.isSkillsRequired : TeachingFacilityActivityOption.empty().isSkillsRequired,
                      skillsRequirement: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.skillsRequirement : TeachingFacilityActivityOption.empty().skillsRequirement
              )
            )
          );
        },



        availabilityStartDateChanged: (e) async* {
          yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
              reservedAvailability: ActivityReservedAvailability(
                  startDate: e.date,
                  endDate: state.newActivityOptions.reservedAvailability.endDate,
                  isAllowedFullDayBooking: state.newActivityOptions.reservedAvailability.isAllowedFullDayBooking,
                  isDatesProtected: state.newActivityOptions.reservedAvailability.isDatesProtected,
                  isTimeProtected: state.newActivityOptions.reservedAvailability.isTimeProtected,
                  timePeriods: state.newActivityOptions.reservedAvailability.timePeriods,
                  protectedSpaceTypes: state.newActivityOptions.reservedAvailability.protectedSpaceTypes
              )
            )
          );
        },

      availabilityEndDateChanged: (e) async* {
        yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
                reservedAvailability: ActivityReservedAvailability(
                    startDate: state.newActivityOptions.reservedAvailability.startDate,
                    endDate: e.date,
                    isAllowedFullDayBooking: state.newActivityOptions.reservedAvailability.isAllowedFullDayBooking,
                    isDatesProtected: state.newActivityOptions.reservedAvailability.isDatesProtected,
                    isTimeProtected: state.newActivityOptions.reservedAvailability.isTimeProtected,
                    timePeriods: state.newActivityOptions.reservedAvailability.timePeriods,
                    protectedSpaceTypes: state.newActivityOptions.reservedAvailability.protectedSpaceTypes
                )
            )
        );
      },

        isAllowedFullDayBookingChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  reservedAvailability: ActivityReservedAvailability(
                      startDate: state.newActivityOptions.reservedAvailability.startDate,
                      endDate: state.newActivityOptions.reservedAvailability.endDate,
                      isAllowedFullDayBooking: e.allowBool,
                      isDatesProtected: state.newActivityOptions.reservedAvailability.isDatesProtected,
                      isTimeProtected: state.newActivityOptions.reservedAvailability.isTimeProtected,
                      timePeriods: state.newActivityOptions.reservedAvailability.timePeriods,
                      protectedSpaceTypes: state.newActivityOptions.reservedAvailability.protectedSpaceTypes
                  )
              )
          );
        },

        isDatesProtectedChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  reservedAvailability: ActivityReservedAvailability(
                      startDate: state.newActivityOptions.reservedAvailability.startDate,
                      endDate: state.newActivityOptions.reservedAvailability.endDate,
                      isAllowedFullDayBooking: state.newActivityOptions.reservedAvailability.isAllowedFullDayBooking,
                      isDatesProtected: e.allowBool,
                      isTimeProtected: state.newActivityOptions.reservedAvailability.isTimeProtected,
                      timePeriods: state.newActivityOptions.reservedAvailability.timePeriods,
                      protectedSpaceTypes: state.newActivityOptions.reservedAvailability.protectedSpaceTypes
                  )
              )
          );
        },

        isTimeProtectedChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  reservedAvailability: ActivityReservedAvailability(
                      startDate: state.newActivityOptions.reservedAvailability.startDate,
                      endDate: state.newActivityOptions.reservedAvailability.endDate,
                      isAllowedFullDayBooking: state.newActivityOptions.reservedAvailability.isAllowedFullDayBooking,
                      isDatesProtected: state.newActivityOptions.reservedAvailability.isDatesProtected,
                      isTimeProtected: e.allowBool,
                      timePeriods: state.newActivityOptions.reservedAvailability.timePeriods,
                      protectedSpaceTypes: state.newActivityOptions.reservedAvailability.protectedSpaceTypes
                  )
              )
          );
        },

        isProtectedTimeListChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  reservedAvailability: ActivityReservedAvailability(
                      startDate: state.newActivityOptions.reservedAvailability.startDate,
                      endDate: state.newActivityOptions.reservedAvailability.endDate,
                      isAllowedFullDayBooking: state.newActivityOptions.reservedAvailability.isAllowedFullDayBooking,
                      isDatesProtected: state.newActivityOptions.reservedAvailability.isDatesProtected,
                      isTimeProtected: state.newActivityOptions.reservedAvailability.isTimeProtected,
                      timePeriods: e.timesList,
                      protectedSpaceTypes: state.newActivityOptions.reservedAvailability.protectedSpaceTypes
                  )
              )
          );
        },

        isProtectedDatesListChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  reservedAvailability: ActivityReservedAvailability(
                      startDate: state.newActivityOptions.reservedAvailability.startDate,
                      endDate: state.newActivityOptions.reservedAvailability.endDate,
                      isAllowedFullDayBooking: state.newActivityOptions.reservedAvailability.isAllowedFullDayBooking,
                      isDatesProtected: state.newActivityOptions.reservedAvailability.isDatesProtected,
                      isTimeProtected: state.newActivityOptions.reservedAvailability.isTimeProtected,
                      timePeriods: state.newActivityOptions.reservedAvailability.timePeriods,
                      protectedSpaceTypes: e.spaceTypeList,
                  )
              )
          );
        },



        isAllowedMerchandisingChanged: (e) async* {
          yield state.copyWith(
            newActivityOptions: state.newActivityOptions.copyWith(
              eventActivity: EventFacilityActivityOption(
                  isPermittedMerchandising: e.allowBool,
                  activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                  isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                  isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                  foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                  isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                  isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                  liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                  isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                  isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                  securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                  isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                  isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                  equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                  quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                  isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                  isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                  isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                  sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
              ),
              teamsActivity: TeamsRunsFacilityActivityOption(
                  isPermittedMerchandising: e.allowBool,
                  activityMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.activityMerchandising : TeamsRunsFacilityActivityOption.empty().activityMerchandising,
                  isAllowedWagers: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isAllowedWagers : TeamsRunsFacilityActivityOption.empty().isAllowedWagers,
                  isProvidedIncentives: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isProvidedIncentives : TeamsRunsFacilityActivityOption.empty().isProvidedIncentives,
                  providedIncentiveOptions: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.providedIncentiveOptions : TeamsRunsFacilityActivityOption.empty().providedIncentiveOptions
              ),
              tournamentActivity: TournamentFacilityActivityOption(
                  isPermittedMerchandising: e.allowBool,
                  activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                  isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                  isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                  equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                  isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                  isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                  providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                  isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                  maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                  isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                  minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                  isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                  isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                  partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            )
          );
        },

        merchandisingOptionChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: e.merchandisingOption,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
                  ),
                  teamsActivity: TeamsRunsFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isPermittedMerchandising : TeamsRunsFacilityActivityOption.empty().isPermittedMerchandising ,
                      activityMerchandising: e.merchandisingOption,
                      isAllowedWagers: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isAllowedWagers : TeamsRunsFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.isProvidedIncentives : TeamsRunsFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.teamsActivity != null) ? state.newActivityOptions.teamsActivity!.providedIncentiveOptions : TeamsRunsFacilityActivityOption.empty().providedIncentiveOptions
                  ),
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: e.merchandisingOption,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
                  )

              )
          );
        },



        isRequiredSkillRequirementsChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  coachActivity: CoachFacilityActivityOption(
                      isRequiredAffiliated: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                      requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                      isSkillsRequired: e.reqBool,
                      skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                      isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
                  ),
                  teachingActivity: TeachingFacilityActivityOption(
                      isRequiredAffiliated: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.isRequiredAffiliated : TeachingFacilityActivityOption.empty().isRequiredAffiliated,
                      requiredAffiliateTypes: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.requiredAffiliateTypes : TeachingFacilityActivityOption.empty().requiredAffiliateTypes,
                      isSkillsRequired: e.reqBool,
                      skillsRequirement: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.skillsRequirement : TeachingFacilityActivityOption.empty().skillsRequirement
                  ),
                  trainingActivity: TrainingFacilityActivityOption(
                      isSkillsRequired: e.reqBool,
                      skillsRequirement: (state.newActivityOptions.trainingActivity != null) ? state.newActivityOptions.trainingActivity!.skillsRequirement : TrainingFacilityActivityOption.empty().skillsRequirement
                )
            )
          );
        },

        activityRequirementsChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  coachActivity: CoachFacilityActivityOption(
                      isRequiredAffiliated: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                      requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                      isSkillsRequired: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                      skillsRequirement: e.skillOption,
                      isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
                  ),
                  teachingActivity: TeachingFacilityActivityOption(
                      isRequiredAffiliated: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.isRequiredAffiliated : TeachingFacilityActivityOption.empty().isRequiredAffiliated,
                      requiredAffiliateTypes: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.requiredAffiliateTypes : TeachingFacilityActivityOption.empty().requiredAffiliateTypes,
                      isSkillsRequired: (state.newActivityOptions.teachingActivity != null) ? state.newActivityOptions.teachingActivity!.isSkillsRequired : TeachingFacilityActivityOption.empty().isSkillsRequired,
                      skillsRequirement: e.skillOption
                  ),
                  trainingActivity: TrainingFacilityActivityOption(
                      isSkillsRequired: (state.newActivityOptions.trainingActivity != null) ? state.newActivityOptions.trainingActivity!.isSkillsRequired : TrainingFacilityActivityOption.empty().isSkillsRequired,
                      skillsRequirement: e.skillOption
              )
            )
          );
        },



        partnershipIsProvidedChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                    isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                    isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                    isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                    isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                    quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                    isProvidedPartnership: e.provBool,
                    partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
              ),
              eventActivity: EventFacilityActivityOption(
                    isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                    activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                    isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                    isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                    foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                    isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                    isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                    liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                    isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                    isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                    securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                    isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                    quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                    isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                    isProvidedPartnership: e.provBool,
                    partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
                ),
                leagueActivity: LeagueFacilityActivityOption(
                    isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                    isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                    isProvidedPartnership: e.provBool,
                    partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
                ),
                coachActivity: CoachFacilityActivityOption(
                    isRequiredAffiliated: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                    requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                    isSkillsRequired: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                    skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                    isProvidedPartnership: e.provBool,
                    partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
                ),
                tournamentActivity: TournamentFacilityActivityOption(
                    isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                    activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                    isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                    isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                    isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                    providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                    isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                    maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                    isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                    minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                    isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                    isProvidedPartnership: e.provBool,
                    partnershipProvision: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.partnershipProvision : TournamentFacilityActivityOption.empty().partnershipProvision
              )
            ),
          );
        },

        partnershipChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                      isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                      isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                      quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: e.partner,
                      isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
                  ),
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: e.partner,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
                  ),
                leagueActivity: LeagueFacilityActivityOption(
                    isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                    isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                    isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                    equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                    isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: e.partner,
                    isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
                  ),
                coachActivity: CoachFacilityActivityOption(
                    isRequiredAffiliated: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                    requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                    isSkillsRequired: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                    skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                    isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: e.partner,
                    isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
                ),
                  tournamentActivity: TournamentFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedMerchandising : TournamentFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.activityMerchandising : TournamentFacilityActivityOption.empty().activityMerchandising,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isPermittedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedEquipmentAndStorage : TournamentFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.equipmentAndStorageFee : TournamentFacilityActivityOption.empty().equipmentAndStorageFee,
                      isAllowedWagers: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedWagers : TournamentFacilityActivityOption.empty().isAllowedWagers,
                      isProvidedIncentives: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedIncentives : TournamentFacilityActivityOption.empty().isProvidedIncentives,
                      providedIncentiveOptions: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.providedIncentiveOptions : TournamentFacilityActivityOption.empty().providedIncentiveOptions,
                      isAllowedAudiences: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedAudiences : TournamentFacilityActivityOption.empty().isAllowedAudiences,
                      maxAudienceSize: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.maxAudienceSize : TournamentFacilityActivityOption.empty().maxAudienceSize,
                      isRequiredMinimumTeams: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isRequiredMinimumTeams : TournamentFacilityActivityOption.empty().isRequiredMinimumTeams,
                      minimumTeamsAmount: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.minimumTeamsAmount : TournamentFacilityActivityOption.empty().minimumTeamsAmount,
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isAllowedMultiFacilityPartnership : TournamentFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isProvidedPartnership: (state.newActivityOptions.tournamentActivity != null) ? state.newActivityOptions.tournamentActivity!.isProvidedPartnership : TournamentFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: e.partner
                  )
            )
          );
        },


        sponsorshipsAreProvidedChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                      isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                      isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                      quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: e.provBool,
                      sponsorships: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.sponsorships : CampFacilityActivityOption.empty().sponsorships
                  ),
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: e.provBool,
                      sponsorships: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.sponsorships : EventFacilityActivityOption.empty().sponsorships
              ),
                  leagueActivity: LeagueFacilityActivityOption(
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                      isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: e.provBool,
                      sponsorships: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.sponsorships : LeagueFacilityActivityOption.empty().sponsorships
                  ),
                coachActivity: CoachFacilityActivityOption(
                    isRequiredAffiliated: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                    requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                    isSkillsRequired: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                    skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                    isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: e.provBool,
                    sponsorships: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.sponsorships : CoachFacilityActivityOption.empty().sponsorships
              )
            )
          );
        },

        sponsorshipListChanged: (e) async* {
          yield state.copyWith(
              newActivityOptions: state.newActivityOptions.copyWith(
                  campActivity: CampFacilityActivityOption(
                      isRequiredOrganizationVerification: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredOrganizationVerification : CampFacilityActivityOption.empty().isRequiredOrganizationVerification,
                      isRequiredContactDetails: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isRequiredContactDetails : CampFacilityActivityOption.empty().isRequiredContactDetails,
                      isAllowedLongTerm: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedLongTerm : CampFacilityActivityOption.empty().isAllowedLongTerm,
                      isAllowedUnderAge: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isAllowedUnderAge : CampFacilityActivityOption.empty().isAllowedUnderAge,
                      quantityLimit: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.quantityLimit : CampFacilityActivityOption.empty().quantityLimit,
                      isProvidedPartnership: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isProvidedPartnership : CampFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.partnershipProvision : CampFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.campActivity != null) ? state.newActivityOptions.campActivity!.isSponsorProvided : CampFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: e.sponsorList
                  ),
                  eventActivity: EventFacilityActivityOption(
                      isPermittedMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedMerchandising : EventFacilityActivityOption.empty().isPermittedMerchandising,
                      activityMerchandising: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.activityMerchandising : EventFacilityActivityOption.empty().activityMerchandising,
                      isPermittedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedFoodCatering : EventFacilityActivityOption.empty().isPermittedFoodCatering,
                      isProvidedFoodCatering: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedFoodCatering : EventFacilityActivityOption.empty().isProvidedFoodCatering,
                      foodCateringFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.foodCateringFee : EventFacilityActivityOption.empty().foodCateringFee,
                      isPermittedAlcohol: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedAlcohol : EventFacilityActivityOption.empty().isPermittedAlcohol,
                      isProvidedLiquorLicence: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedLiquorLicence : EventFacilityActivityOption.empty().isProvidedLiquorLicence,
                      liquorLicenceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.liquorLicenceFee : EventFacilityActivityOption.empty().liquorLicenceFee,
                      isPermittedSecurity: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedSecurity : EventFacilityActivityOption.empty().isPermittedSecurity,
                      isProvidedSecurityServices: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedSecurityServices : EventFacilityActivityOption.empty().isProvidedSecurityServices,
                      securityServiceFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.securityServiceFee : EventFacilityActivityOption.empty().securityServiceFee,
                      isPermittedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isPermittedEquipmentAndStorage : EventFacilityActivityOption.empty().isPermittedEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedEquipmentAndStorage : EventFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.equipmentAndStorageFee : EventFacilityActivityOption.empty().equipmentAndStorageFee,
                      quantityLimit: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.quantityLimit : EventFacilityActivityOption.empty().quantityLimit,
                      isAllowedUnderAge: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isAllowedUnderAge : EventFacilityActivityOption.empty().isAllowedUnderAge,
                      isProvidedPartnership: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isProvidedPartnership : EventFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.partnershipProvision : EventFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.eventActivity != null) ? state.newActivityOptions.eventActivity!.isSponsorProvided : EventFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: e.sponsorList
                  ),
                  leagueActivity: LeagueFacilityActivityOption(
                      isAllowedMultiFacilityPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isAllowedMultiFacilityPartnership : LeagueFacilityActivityOption.empty().isAllowedMultiFacilityPartnership,
                      isPermittedEventEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isPermittedEventEquipmentAndStorage : LeagueFacilityActivityOption.empty().isPermittedEventEquipmentAndStorage,
                      isProvidedEquipmentAndStorage: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedEquipmentAndStorage : LeagueFacilityActivityOption.empty().isProvidedEquipmentAndStorage,
                      equipmentAndStorageFee: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.equipmentAndStorageFee : LeagueFacilityActivityOption.empty().equipmentAndStorageFee,
                      isProvidedPartnership: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isProvidedPartnership : LeagueFacilityActivityOption.empty().isProvidedPartnership,
                      partnershipProvision: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.partnershipProvision : LeagueFacilityActivityOption.empty().partnershipProvision,
                      isSponsorProvided: (state.newActivityOptions.leagueActivity != null) ? state.newActivityOptions.leagueActivity!.isSponsorProvided : LeagueFacilityActivityOption.empty().isSponsorProvided,
                      sponsorships: e.sponsorList
                  ),
                coachActivity: CoachFacilityActivityOption(
                    isRequiredAffiliated: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isRequiredAffiliated : CoachFacilityActivityOption.empty().isRequiredAffiliated,
                    requiredAffiliateTypes: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.requiredAffiliateTypes : CoachFacilityActivityOption.empty().requiredAffiliateTypes,
                    isSkillsRequired: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSkillsRequired : CoachFacilityActivityOption.empty().isSkillsRequired,
                    skillsRequirement: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.skillsRequirement : CoachFacilityActivityOption.empty().skillsRequirement,
                    isProvidedPartnership: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isProvidedPartnership : CoachFacilityActivityOption.empty().isProvidedPartnership,
                    partnershipProvision: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.partnershipProvision : CoachFacilityActivityOption.empty().partnershipProvision,
                    isSponsorProvided: (state.newActivityOptions.coachActivity != null) ? state.newActivityOptions.coachActivity!.isSponsorProvided : CoachFacilityActivityOption.empty().isSponsorProvided,
                    sponsorships: e.sponsorList
              )
            )
          );
        },

        isFinishedActivityTypeCampOption: (e) async* {
          Either<ActivityFormFailure, Unit> failureOrSuccess;

          final FacilityActivityCreatorForm campCreatorForm = FacilityActivityCreatorForm(
            reservedAvailability: state.newActivityOptions.reservedAvailability,
            activity: state.newActivityOptions.activity,
            campActivity: state.newActivityOptions.campActivity
          );

          // if (state.newActivityOptions.campActivity != null) {
          //
          // yield state.copyWith(
          //     isSubmitting: true,
          //     authFailureOrSuccessOption: none()
          // );
          //
          // failureOrSuccess = state.isSubmitting ? left(ActivityFormFailure.serverError()) : await _facilityFormFacade.updateFacilityActivityType(facilityId: state.facilityId, facilityActivityForm: campCreatorForm);
          //
          // yield state.copyWith(
          //   authFailureOrSuccessOption: optionOf(failureOrSuccess),
          //   showErrorMessages: AutovalidateMode.always,
          //   isSubmitting: false,
          //  );
          // }
        },


        isFinishedActivityTypeOption: (e) async* {},
        isFinishedActivityTypeEventOption: (e) async* {},
        isFinishedActivityTypeLeagueOption: (e) async* {},

        isFinishedActivityTypeCoachOption: (e) async* {},
        isFinishedActivityTypeTeachingOption: (e) async* {},
        isFinishedActivityTypeTrainingOption: (e) async* {},
        isFinishedActivityTypeInformalGameOption: (e) async* {},

        isFinishedActivityTypeOneOnOneOption: (e) async* {},
        isFinishedActivityTeamsOption: (e) async* {},
        isFinishedActivityTournamentOption: (e) async* {},

    );

  }

}