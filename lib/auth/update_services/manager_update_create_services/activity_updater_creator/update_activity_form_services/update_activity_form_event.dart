part of check_in_application;

@freezed
class UpdateActivityFormEvent with _$UpdateActivityFormEvent {

  factory UpdateActivityFormEvent.initializeActivityForm(Option<ActivityCreatorForm> initializeActivityForm) = _InitializeActivityForm;

  const factory UpdateActivityFormEvent.activityNavSectionChanged(ActivityCreatorFormNav navSection) = ActivityNavSectionChanged;

  const factory UpdateActivityFormEvent.activityOptionChanged(ActivityOption activityOption) = ActivityOptionChanged;

  const factory UpdateActivityFormEvent.facilityOptionChanged(UniqueId facilityOption) = FacilityOptionChanged;
  const factory UpdateActivityFormEvent.spaceOptionsChanged(ListK<SpaceOption> spaceTypeList) = SpaceOptionsChanged;
  const factory UpdateActivityFormEvent.sportSpaceOptionsChanged(ListK<SportSpaceOptions> sportSpaceTypeList) = SportSpaceOptionsChanged;

  const factory UpdateActivityFormEvent.placeIdChanged(String placeIdStr) = ActivityPlaceIdChanged;
  const factory UpdateActivityFormEvent.longLatChanged(String longLatStr) = ActivityLongLatChanged;
  const factory UpdateActivityFormEvent.countryChanged(String countryStr) = ActivityCountryChanged;
  const factory UpdateActivityFormEvent.cityChanged(String cityStr) = ActivityCityChanged;
  const factory UpdateActivityFormEvent.provinceStateChanged(String stateStr) = ActivityProvinceStateChanged;
  const factory UpdateActivityFormEvent.streetChanged(String streetStr) = ActivityStreetChanged;
  const factory UpdateActivityFormEvent.postalCodeChanged(String postalStr) = ActivityPostalCodeChanged;
  const factory UpdateActivityFormEvent.aptNumberChanged(String aptStr) = ActivityAptNumberChanged;
  const factory UpdateActivityFormEvent.isLocationConfirmed(bool isConfirmedBool) = ActivityIsLocationConfirmed;
  const factory UpdateActivityFormEvent.locationOwnerChanged(String ownerStr) = ActivityLocationOwnerChanged;
  const factory UpdateActivityFormEvent.updateWithSavedLocation(LocationModel location) = ActivityUpdateWithSavedLocation;

  const factory UpdateActivityFormEvent.startingDateChanged(DateTime dateChanged) = _StartingDateChanged;
  const factory UpdateActivityFormEvent.endingDateChanged(DateTime dateChanged) = _EndingDateChanged;
  const factory UpdateActivityFormEvent.isInviteOnlyChanged(bool inviteBool) = _IsInviteOnlyChanged;

  const factory UpdateActivityFormEvent.durationTypeChanged(DurationType durationType) = _DurationTypeChanged;
  const factory UpdateActivityFormEvent.activitySessionTypeChanged(ActivitySessionType durationType) = _ActivitySessionTypeChanged;

  const factory UpdateActivityFormEvent.isDynamicHoursChanged(bool hoursBool) = _IsDynamicHoursChanged;
  const factory UpdateActivityFormEvent.isFixedHoursChanged(bool hoursBool) = _IsFixedHoursChanged;
  const factory UpdateActivityFormEvent.openHoursChanged(List<DayOptionItem> openHours) = _OpenHoursChanged;

  const factory UpdateActivityFormEvent.isAllowedBookingWhenOpenOnlyChanged(bool bookingBool) = _IsAllowedBookingWhenOpenOnlyChanged;
  const factory UpdateActivityFormEvent.isManuallyReviewedChanged(bool reviewBool) = _isManuallyReviewedChanged;

  const factory UpdateActivityFormEvent.isBookableBeforeInDaysChanged(bool bookingBool) = _isBookableBeforeInDaysChanged;
  const factory UpdateActivityFormEvent.dateBeforeBookableChanged(DateTimeRange rangeBefore) = _DateBeforeBookableChanged;
  const factory UpdateActivityFormEvent.numberOfDaysBeforeChanged(int daysInt) = _NumberOfDaysBeforeChanged;
  const factory UpdateActivityFormEvent.sessionsDetailsChanged(List<AvailabilitySessionOption> sessions) = _SessionsDetailsChanged;

  const factory UpdateActivityFormEvent.isDayBasedChanged(bool dayBool) = _IsDayBasedChanged;
  const factory UpdateActivityFormEvent.isThirtyMinutesPerChanged(bool thirtyBool) = _IsThirtyMinutesPerChanged;
  const factory UpdateActivityFormEvent.isSixtyMinutesPerChanged(bool sixtyBool) = _IsSixtyMinutesPerChanged;
  const factory UpdateActivityFormEvent.isTwoHoursPerChanged(bool twoBool) = _IsTwoHoursPerChanged;

  const factory UpdateActivityFormEvent.classIsCoachingNewTeamChanged(bool teamBool) = _ClassIsCoachingNewTeamChanged;
  const factory UpdateActivityFormEvent.classIsCoachingExistingTeamChanged(bool teamBool) = _ClassIsCoachingExistingTeamChanged;

  const factory UpdateActivityFormEvent.classIsOpenToMorePlayers(bool playerBool) = _ClassIsOpenToMorePlayers;
  const factory UpdateActivityFormEvent.classPlayerLimitChanged(int limitInt) = _ClassPlayerLimitChanged;

  const factory UpdateActivityFormEvent.classPlayerRosterChanged(List<ContactDetails> contactDetails) = _ClassPlayerRosterChanged;

  const factory UpdateActivityFormEvent.classIsWorkingAlone(bool workBool) = _ClassIsWorkingAlone;
  const factory UpdateActivityFormEvent.classIsWorkingWithAffiliatesChanged(bool affiliateBool) = _ClassIsWorkingWithAffiliatesChanged;

  const factory UpdateActivityFormEvent.classAffiliateOptionsChanged(List<AffiliationOption> affiliateOptions) = _ClassAffiliateOptionsChanged;

  const factory UpdateActivityFormEvent.classIsAllowedUnlimitedAttendeeChanged(bool limitBool) = _ClassIsllowedUnlimitedAttendeeChanged;
  const factory UpdateActivityFormEvent.classAttendeeLimitChanged(int attendeeLimit) = _ClassAttendeeLimitChanged;

  const factory UpdateActivityFormEvent.gameNumberOfTeamsChanged(int teamInt) = _GameNumberOfTeamsChanged;

  const factory UpdateActivityFormEvent.isAnOrganizationChanged(bool orgBool) = _IsAnOrganizationChanged;
  const factory UpdateActivityFormEvent.organizationNameChanged(FirstLastName name) = _OrganizationNameChanged;

  const factory UpdateActivityFormEvent.activityTitleChanged(BackgroundInfoTitle titleChanged) = _ActivityTitleChanged;
  const factory UpdateActivityFormEvent.activityDescriptionChanged(BackgroundInfoDescription descriptionChanged) = _ActivityDescriptionChanged;
  const factory UpdateActivityFormEvent.activityDescriptionChangedTwo(BackgroundInfoDescription descriptionChanged) = _ActivityDescriptionChangedTwo;

  const factory UpdateActivityFormEvent.activityGoalsChanged(List<BackgroundInfoDescription> activityGoals) = _ActivityGoalsChanged;
  const factory UpdateActivityFormEvent.activityInterestsChanged(List<BackgroundInfoDescription> activityInterests) = _ActivityInterestsChanged;

  const factory UpdateActivityFormEvent.classExperienceChanged(List<ExperienceOption> experiences) = _ClassExperienceChanged;
  const factory UpdateActivityFormEvent.classCertificatesChanged(List<CertificateOption> certificates) = _ClassCertificatesChanged;
  const factory UpdateActivityFormEvent.classNumberOfYearsExperienceChanged(int yearInt) = _ClassNumberOfYearsExperienceChanged;


  const factory UpdateActivityFormEvent.isSeventeenAndUnderChanged(bool ageBool) = _IsSeventeenAndUnderChanged;
  const factory UpdateActivityFormEvent.minimumAgeChanged(int ageInt) = _MinimumAgeChanged;

  const factory UpdateActivityFormEvent.isMenOnlyChanged(bool menBool) = _IsMenOnlyChanged;
  const factory UpdateActivityFormEvent.isWomenOnlyChanged(bool womenBool) = _IsWomenOnlyChanged;
  const factory UpdateActivityFormEvent.isCoEdOnlyChanged(bool coedBool) = _IsCoEdOnlyChanged;

  const factory UpdateActivityFormEvent.skillLevelExpectationChanged(List<SkillLevel> skillLevel) = _SkillLevelExpectationChanged;

  const factory UpdateActivityFormEvent.customRequirementChanged(ListK<DetailCustomOption> customReq) = _CustomRequirementChanged;

  const factory UpdateActivityFormEvent.suggestedYearsChanged(int yearsInt) = _SuggestedYearsChanged;

  const factory UpdateActivityFormEvent.isEquipmentProvidedChanged(bool equipBool) = _IsEquipmentProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityEquipmentChanged(bool equipBool) = _IsFacilityEquipmentChanged;
  const factory UpdateActivityFormEvent.isGearProvidedChanged(bool gearBool) = _IsGearProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityGearChanged(bool gearBool) = _IsFacilityGearChanged;
  const factory UpdateActivityFormEvent.isAnalyticsProvidedChanged(bool anaBool) = _IsAnalyticsProvidedChanged;
  const factory UpdateActivityFormEvent.isOfficiatorProvidedChanged(bool offBool) = _IsOfficiatorProvidedChanged;

  const factory UpdateActivityFormEvent.isMerchantSupportedChanged(bool merchBool) = _IsMerchantSupportedChanged;
  const factory UpdateActivityFormEvent.merchantListChanged(List<ContactDetails> merchList) = _MerchantListChanged;

  const factory UpdateActivityFormEvent.isAlcoholForSaleChanged(bool alcBool) = _IsAlcoholForSaleChanged;
  const factory UpdateActivityFormEvent.isFoodForSaleChanged(bool foodBool) = _IsFoodForSaleChanged;

  const factory UpdateActivityFormEvent.isAlcoholProvidedChanged(bool alcBool) = _IsAlcoholProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityAlcoholChanged(bool alcBool) = _IsFacilityAlcoholChanged;
  const factory UpdateActivityFormEvent.isFoodProvidedChanged(bool foodBool) = _IsFoodProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityFoodChanged(bool foodBool) = _IsFacilityFoodChanged;
  const factory UpdateActivityFormEvent.isSecurityProvidedChanged(bool secBool) = _IsSecurityProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilitySecurityChanged(bool secBool) = _IsFacilitySecurityChanged;

  const factory UpdateActivityFormEvent.ruleOptionChanged(ListK<DetailOption> rules) = _RuleOptionChanged;
  const factory UpdateActivityFormEvent.customRuleOptionChanged(ListK<DetailCustomOption> customRules) = _CustomRuleOptionChanged;

  const factory UpdateActivityFormEvent.skillLevelToReachChanged(List<SkillLevel> skills) = _SkillLevelToReachChanged;

  const factory UpdateActivityFormEvent.allowedDonationTypesChanged(List<DonationType> donationTypes) = _AllowedDonationTypesChanged;
  const factory UpdateActivityFormEvent.isAllowedExternalContributions(bool exBool) = _IsAllowedExternalContributions;

  const factory UpdateActivityFormEvent.isTicketBasedAttendanceChanged(bool ticketBool) = _IsTicketBasedAttendanceChanged;
  const factory UpdateActivityFormEvent.isPassBasedAttendanceChanged(bool passBool) = _IsPassBasedAttendanceChanged;
  const factory UpdateActivityFormEvent.isLimitedAttendanceChanged(bool limitBool) = _IsLimitedAttendanceChanged;
  const factory UpdateActivityFormEvent.attendanceLimitChanged(int limitInt) = _AttendanceLimitChanged;

  const factory UpdateActivityFormEvent.ticketAttendanceIsAllowedGroups(bool groupBool) = _TicketAttendanceIsAllowedGroups;
  const factory UpdateActivityFormEvent.ticketMinimumGroupQuantityChanged(int minInt) = _TicketMinimumGroupQuantityChanged;
  const factory UpdateActivityFormEvent.ticketMaximumGroupQuantityChanged(int maxInt) = _TicketMaximumGroupQuantityChanged;
  const factory UpdateActivityFormEvent.ticketQuantityChanged(int ticketsInt) = _TicketQuantityChanged;

  const factory UpdateActivityFormEvent.passesAttendanceIsAllowedGroups(bool groupBool) = _PassesAttendanceIsAllowedGroups;
  const factory UpdateActivityFormEvent.passesMinimumGroupQuantityChanged(int minInt) = _PassesMinimumGroupQuantityChanged;
  const factory UpdateActivityFormEvent.passesMaximumGroupQuantityChanged(int maxInt) = _PassesMaximumGroupQuantityChanged;
  const factory UpdateActivityFormEvent.passesQuantityChanged(int passesInt) = _PassesQuantityChanged;
  const factory UpdateActivityFormEvent.passesCoverAllSessions(bool sessionBool) = _PassesCoverAllSessions;
  const factory UpdateActivityFormEvent.passesCoverLimitedSession(int limitInt) = _PassesCoverLimitedSession;


  const factory UpdateActivityFormEvent.feeIsDynamicChanged(bool dynamicBool) = _FeeBasedOnPlayerCountChanged;
  const factory UpdateActivityFormEvent.feeIsStaticChanged(bool staticBool) = _FeeBasedOnEachPlayerChanged;
  const factory UpdateActivityFormEvent.feeDefaultTicketChanged(String ticketStr) = _FeeDefaultTicketChanged;
  const factory UpdateActivityFormEvent.feeDefaultPassesChanged(String passStr) = _FeeDefaultPassesChanged;
  const factory UpdateActivityFormEvent.feeDefaultGroupPassesChanged(String passGroupStr) = _FeeDefaultGroupPassesChanged;

  const factory UpdateActivityFormEvent.feeRecurringSettingsChanged(List<CostPerHourSettingOption> feeRSettings) = _FeeRecurringSettingsChanged;
  const factory UpdateActivityFormEvent.feeMultiDaySettingsChanged(List<CostPerMultiDaySettingOption> feeMSettings) = _FeeMultiDaySettingsChanged;

  const factory UpdateActivityFormEvent.finishedUpdatingAddressFromGoogle(String cityStr, String provinceStr) = ActivityFinishedUpdatingAddressFromGoogle;
  const factory UpdateActivityFormEvent.finishedUpdatingAddressFromCoordinates(String countryStr, String streetStr, String cityStr, String stateStr, String postalStr) = _FinishedUpdatingAddressFromCoordinates;

  const factory UpdateActivityFormEvent.cancellationChanged(ListK<DetailOption> rules) = _CancellationChanged;

  const factory UpdateActivityFormEvent.createActivityFinished() = CreateActivityFinished;
  const factory UpdateActivityFormEvent.saveActivityFinished() = SaveActivityFinished;
  const factory UpdateActivityFormEvent.deleteActivityFinished() = DeleteActivityFinished;
}