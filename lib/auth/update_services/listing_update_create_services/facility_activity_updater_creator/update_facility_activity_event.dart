part of check_in_application;

@freezed
class UpdateFacilityActivityEvent with _$UpdateFacilityActivityEvent {

  const factory UpdateFacilityActivityEvent.initializedActivityOptionCamp(Option<FacilityActivityCreatorForm> initialActivity, Option<CampFacilityActivityOption> campInitial, Option<String> facilityId) = _InitializedActivityOptionCamp;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionEvent(Option<FacilityActivityCreatorForm> initialActivity, Option<EventFacilityActivityOption> eventInitial, Option<String> facilityId) = _InitializedActivityOptionEvent;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionLeague(Option<FacilityActivityCreatorForm> initialActivity, Option<LeagueFacilityActivityOption> leagueInitial, Option<String> facilityId) = _InitializedActivityOptionLeague;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionCoaching(Option<FacilityActivityCreatorForm> initialActivity, Option<CoachFacilityActivityOption> coachInitial, Option<String> facilityId) = _InitializedActivityOptionCoaching;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionTeaching(Option<FacilityActivityCreatorForm> initialActivity, Option<TeachingFacilityActivityOption> teachingInitial, Option<String> facilityId) = _InitializedActivityOptionTeaching;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionTraining(Option<FacilityActivityCreatorForm> initialActivity, Option<TrainingFacilityActivityOption> trainingInitial, Option<String> facilityId) = _InitializedActivityOptionTraining;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionInformalGame(Option<FacilityActivityCreatorForm> initialActivity, Option<InformalGameFacilityActivityOption> informalInitial, Option<String> facilityId) = _InitializedActivityOptionInformalGame;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionOneOnOne(Option<FacilityActivityCreatorForm> initialActivity, Option<OneOnOneFacilityActivityOption> oneOnOneInitial, Option<String> facilityId) = _InitializedActivityOptionOneOnOne;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionTeams(Option<FacilityActivityCreatorForm> initialActivity, Option<TeamsRunsFacilityActivityOption> teamsInitial, Option<String> facilityId) = _InitializedActivityOptionTeams;
  const factory UpdateFacilityActivityEvent.initializedActivityOptionTournament(Option<FacilityActivityCreatorForm> initialActivity, Option<TournamentFacilityActivityOption> tournamentInitial, Option<String> facilityId) = _InitializedActivityOptionTournament;


  /// update facility activity creator form event requirements ///
  const factory UpdateFacilityActivityEvent.isPermittedFoodCateringChanged(bool permitBool) = _IsPermittedFoodCateringChanged;
  const factory UpdateFacilityActivityEvent.isProvidedFoodCateringChanged(bool provBool) = _IsProvidedFoodCateringChanged;
  const factory UpdateFacilityActivityEvent.foodCateringFeeChanged(String feeStr) = _FoodCateringFeeChanged;
  const factory UpdateFacilityActivityEvent.isPermittedAlcoholChanged(bool permitBool) = _IsPermittedAlcoholChanged;
  const factory UpdateFacilityActivityEvent.isProvidedLiquorLicenceChanged(bool provBool) = _IsProvidedLiquorLicenceChanged;
  const factory UpdateFacilityActivityEvent.liquorLicenceFeeChanged(String feeStr) = _LiquorLicenceFeeChanged;
  const factory UpdateFacilityActivityEvent.isPermittedSecurityChanged(bool permitBool) = _IsPermittedSecurityChanged;
  const factory UpdateFacilityActivityEvent.isProvidedSecurityServiceChanged(bool provBool) = _IsProvidedSecurityServiceChanged;
  const factory UpdateFacilityActivityEvent.securityServiceFeeChanged(String feeStr) = _SecurityServiceFeeChanged;

  /// update facility activity creator form camp requirements ///
  const factory UpdateFacilityActivityEvent.isRequiredOrganizationChanged(bool organizationBool) = _IsRequiredOrganizationChanged;
  const factory UpdateFacilityActivityEvent.isRequiredContactChanged(bool contactBool) = _IsRequiredContactChanged;
  const factory UpdateFacilityActivityEvent.isAllowedLongTermChanged(bool longBool) = _IsAllowedLongTermChanged;

  /// update facility activity creator form tournament requirements ///
  const factory UpdateFacilityActivityEvent.isAllowedAudiencesChanged(bool allowBool) = _IsAllowedAudiencesChanged;
  const factory UpdateFacilityActivityEvent.maxAudienceSizeChanged(int sizeInt) = _MaxAudienceSizeChanged;
  const factory UpdateFacilityActivityEvent.minimumTeamSizeRequirementChanged(bool reqBool) = _MinimumTeamSizeRequirementChanged;
  const factory UpdateFacilityActivityEvent.minimumTeamSizeChanged(int sizeInt) = _MinimumTeamSizeChanged;

  /// multi facility partnership permissions ///
  const factory UpdateFacilityActivityEvent.isAllowedMultiFacilityPartnershipChanged(bool allowBool) = _isAllowedMultiFacilityPartnershipChanged;

  /// activity wager permissions ///
  const factory UpdateFacilityActivityEvent.isAllowedActivityWagersChanged(bool allowBool) = _IsAllowedActivityWagersChanged;

  /// update facility activity incentives ///
  const factory UpdateFacilityActivityEvent.isProvidedIncentivesChanged(bool provBool) = _isProvidedIncentivesChanged;
  const factory UpdateFacilityActivityEvent.providedIncentivesConditionsListChanged(List<ActivityIncentiveConditions> incentiveList) = _ProvidedIncentivesConditionsListChangedl;

  /// update equipment and storage provisions ///
  const factory UpdateFacilityActivityEvent.isPermittedEquipmentAndStorageChanged(bool permitBool) = _IsPermittedEquipmentAndStorageChanged;
  const factory UpdateFacilityActivityEvent.isProvidedEquipmentAndStorageChanged(bool provBool) = _IsProvidedEquipmentAndStorageChanged;
  const factory UpdateFacilityActivityEvent.equipmentAndStorageFeeChanged(String feeStr) = _EquipmentAndStorageFeeChanged;

  /// update quantity and age requirements ///
  const factory UpdateFacilityActivityEvent.isAllowedUnderAgeChanged(bool ageBool) = _IsAllowedUnderAgeChanged;
  const factory UpdateFacilityActivityEvent.quantityLimitChanged(int limitInt) = _QuantityLimitChanged;

  /// update facility activity affiliates ///
  const factory UpdateFacilityActivityEvent.isAffiliatesRequired(bool reqBool) = _isAffiliatesRequired;
  const factory UpdateFacilityActivityEvent.requiredAffiliateTypesChanged(List<AffiliateType> affiliateList) = _RequiredAffiliateTypesChanged;

  /// update facility activity reserved availability ///
  const factory UpdateFacilityActivityEvent.availabilityStartDateChanged(DateTime date) = _AvailabilityStartDateChanged;
  const factory UpdateFacilityActivityEvent.availabilityEndDateChanged(DateTime date) = _AvailabilityEndDateChanged;
  const factory UpdateFacilityActivityEvent.isAllowedFullDayBookingChanged(bool allowBool) = _IsAllowedFullDayBookingChanged;
  const factory UpdateFacilityActivityEvent.isTimeProtectedChanged(bool allowBool) = _IsTimeProtectedChanged;
  const factory UpdateFacilityActivityEvent.isDatesProtectedChanged(bool allowBool) = _IsDatesProtectedChanged;
  const factory UpdateFacilityActivityEvent.isProtectedTimeListChanged(List<StringStringItems> timesList) = _IsProtectedTimeListChanged;
  const factory UpdateFacilityActivityEvent.isProtectedDatesListChanged(ListK<SpaceOption> spaceTypeList) = _IsProtectedDatesListChanged;

  /// update facility activity merchandising provision ///
  const factory UpdateFacilityActivityEvent.isAllowedMerchandisingChanged(bool allowBool) = _IsAllowedMerchandisingChanged;
  const factory UpdateFacilityActivityEvent.merchandisingOptionChanged(ActivityMerchandising merchandisingOption) = _MerchandisingOptionChanged;

  /// update facility activity skill requirements/provisions ///
  const factory UpdateFacilityActivityEvent.isRequiredSkillRequirementsChanged(bool reqBool) = _IsRequiredSkillRequirementsChanged;
  const factory UpdateFacilityActivityEvent.activityRequirementsChanged(ActivitySkillsRequirement skillOption) = _ActivityRequirementsChanged;

  /// update facility activity partnership provision ///
  const factory UpdateFacilityActivityEvent.partnershipIsProvidedChanged(bool provBool) = _PartnershipIsProvidedChanged;
  const factory UpdateFacilityActivityEvent.partnershipChanged(PartnershipProvision partner) = _PartnershipChanged;

  /// update facility activity sponsorship provision ///
  const factory UpdateFacilityActivityEvent.sponsorshipsAreProvidedChanged(bool provBool) = _SponsorshipsAreProvidedChanged;
  const factory UpdateFacilityActivityEvent.sponsorshipListChanged(List<SponsorshipProvision> sponsorList) = _SponsorshipListChanged;

  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeOption() = IsFinishedActivityTypeOption;

  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeCampOption() = IsFinishedActivityTypeCamp;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeEventOption() = IsFinishedActivityTypeEventOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeLeagueOption() = IsFinishedActivityTypeLeagueOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeCoachOption() = IsFinishedActivityTypeCoachOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeTeachingOption() = IsFinishedActivityTypeTeachingOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeTrainingOption() = IsFinishedActivityTypeTrainingOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeInformalGameOption() = IsFinishedActivityTypeInformalGameOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTypeOneOnOneOption() = IsFinishedActivityTypeOneOnOneOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTeamsOption() = IsFinishedActivityTeamsOption;
  const factory UpdateFacilityActivityEvent.isFinishedActivityTournamentOption() = IsFinishedActivityTournamentOption;

}