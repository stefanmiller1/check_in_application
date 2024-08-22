part of 'activity_settings_form_bloc.dart';

@freezed
class UpdateActivityFormEvent with _$UpdateActivityFormEvent {

  factory UpdateActivityFormEvent.initializeActivityForm(Option<ActivityManagerForm> initializeActivityForm, Option<ReservationItem> initializeResForm) = _InitializeActivityForm;
  const factory UpdateActivityFormEvent.activityOptionChanged(ActivityOption activityOption) = ActivityOptionChanged;

  // const factory UpdateActivityFormEvent.startingDateChanged(DateTime dateChanged) = _StartingDateChanged;
  // const factory UpdateActivityFormEvent.endingDateChanged(DateTime dateChanged) = _EndingDateChanged;
  // const factory UpdateActivityFormEvent.isInviteOnlyChanged(bool inviteBool) = _IsInviteOnlyChanged;

  // const factory UpdateActivityFormEvent.durationTypeChanged(DurationType durationType) = _DurationTypeChanged;
  // const factory UpdateActivityFormEvent.activitySessionTypeChanged(ActivitySessionType durationType) = _ActivitySessionTypeChanged;
  // const factory UpdateActivityFormEvent.activitySessionTypeChanged(ActivitySessionType durationType) = _ActivitySessionTypeChanged;

  // const factory UpdateActivityFormEvent.isDynamicHoursChanged(bool hoursBool) = _IsDynamicHoursChanged;
  // const factory UpdateActivityFormEvent.isFixedHoursChanged(bool hoursBool) = _IsFixedHoursChanged;
  // const factory UpdateActivityFormEvent.openHoursChanged(List<DayOptionItem> openHours) = _OpenHoursChanged;

  // const factory UpdateActivityFormEvent.isAllowedBookingWhenOpenOnlyChanged(bool bookingBool) = _IsAllowedBookingWhenOpenOnlyChanged;
  // const factory UpdateActivityFormEvent.isManuallyReviewedChanged(bool reviewBool) = _isManuallyReviewedChanged;

  // const factory UpdateActivityFormEvent.isBookableBeforeInDaysChanged(bool bookingBool) = _isBookableBeforeInDaysChanged;
  // const factory UpdateActivityFormEvent.dateBeforeBookableChanged(DateTimeRange rangeBefore) = _DateBeforeBookableChanged;
  // const factory UpdateActivityFormEvent.numberOfDaysBeforeChanged(int daysInt) = _NumberOfDaysBeforeChanged;
  // const factory UpdateActivityFormEvent.sessionsDetailsChanged(List<AvailabilitySessionOption> sessions) = _SessionsDetailsChanged;

  // const factory UpdateActivityFormEvent.isDayBasedChanged(bool dayBool) = _IsDayBasedChanged;
  // const factory UpdateActivityFormEvent.isThirtyMinutesPerChanged(bool thirtyBool) = _IsThirtyMinutesPerChanged;
  // const factory UpdateActivityFormEvent.isSixtyMinutesPerChanged(bool sixtyBool) = _IsSixtyMinutesPerChanged;
  // const factory UpdateActivityFormEvent.isTwoHoursPerChanged(bool twoBool) = _IsTwoHoursPerChanged;

  // const factory UpdateActivityFormEvent.classIsCoachingNewTeamChanged(bool teamBool) = _ClassIsCoachingNewTeamChanged;
  // const factory UpdateActivityFormEvent.classIsCoachingExistingTeamChanged(bool teamBool) = _ClassIsCoachingExistingTeamChanged;
  //
  // const factory UpdateActivityFormEvent.classIsOpenToMorePlayers(bool playerBool) = _ClassIsOpenToMorePlayers;
  // const factory UpdateActivityFormEvent.classPlayerLimitChanged(int limitInt) = _ClassPlayerLimitChanged;
  //
  // const factory UpdateActivityFormEvent.classPlayerRosterChanged(List<ContactDetails> contactDetails) = _ClassPlayerRosterChanged;
  //
  // const factory UpdateActivityFormEvent.classIsWorkingAlone(bool workBool) = _ClassIsWorkingAlone;
  // const factory UpdateActivityFormEvent.classIsWorkingWithAffiliatesChanged(bool affiliateBool) = _ClassIsWorkingWithAffiliatesChanged;
  //
  // const factory UpdateActivityFormEvent.classAffiliateOptionsChanged(List<AffiliationOption> affiliateOptions) = _ClassAffiliateOptionsChanged;
  //
  // const factory UpdateActivityFormEvent.classIsAllowedUnlimitedAttendeeChanged(bool limitBool) = _ClassIsllowedUnlimitedAttendeeChanged;
  // const factory UpdateActivityFormEvent.classAttendeeLimitChanged(int attendeeLimit) = _ClassAttendeeLimitChanged;
  //
  // const factory UpdateActivityFormEvent.gameNumberOfTeamsChanged(int teamInt) = _GameNumberOfTeamsChanged;

  const factory UpdateActivityFormEvent.isSavingChanged(bool boolSave) = _IsSavingChanged;

  const factory UpdateActivityFormEvent.activityTitleChanged(BackgroundInfoTitle titleChanged) = _ActivityTitleChanged;
  const factory UpdateActivityFormEvent.activityDescriptionChanged(BackgroundInfoDescription descriptionChanged) = _ActivityDescriptionChanged;
  const factory UpdateActivityFormEvent.activityDescriptionChangedTwo(BackgroundInfoDescription descriptionChanged) = _ActivityDescriptionChangedTwo;
  const factory UpdateActivityFormEvent.activityProfileImagesChanged(List<ImageUpload> imagesList) = _activityProfileImagesChanged;
  const factory UpdateActivityFormEvent.isPartnersInviteOnly(bool inviteBool) = _IsPartnersInviteOnly;
  const factory UpdateActivityFormEvent.isInstructorInviteOnly(bool inviteBool) = _IsInstructorInviteOnly;

  const factory UpdateActivityFormEvent.activityPostedOnBehalf(bool isPostBool) = _ActivityPostedOnBehalf;
  const factory UpdateActivityFormEvent.activityPostContactWebsite(String websiteStr) = _ActivityPostContactWebsite;
  const factory UpdateActivityFormEvent.activityPostContactEmail(String emailStr) = _ActivityPostContactEmail;
  const factory UpdateActivityFormEvent.activityPostContactInstagram(String instaStr) = _ActivityPostContactInstagram;

  const factory UpdateActivityFormEvent.activityGoalsChanged(List<BackgroundInfoDescription> activityGoals) = _ActivityGoalsChanged;
  const factory UpdateActivityFormEvent.activityInterestsChanged(List<BackgroundInfoDescription> activityInterests) = _ActivityInterestsChanged;

  const factory UpdateActivityFormEvent.isSeventeenAndUnderChanged(bool ageBool) = _IsSeventeenAndUnderChanged;
  const factory UpdateActivityFormEvent.minimumAgeChanged(int ageInt) = _MinimumAgeChanged;

  const factory UpdateActivityFormEvent.isMenOnlyChanged(bool menBool) = _IsMenOnlyChanged;
  const factory UpdateActivityFormEvent.isWomenOnlyChanged(bool womenBool) = _IsWomenOnlyChanged;
  const factory UpdateActivityFormEvent.isCoEdOnlyChanged(bool coedBool) = _IsCoEdOnlyChanged;

  const factory UpdateActivityFormEvent.skillLevelExpectationChanged(List<SkillLevel> skillLevel) = _SkillLevelExpectationChanged;

  const factory UpdateActivityFormEvent.suggestedYearsChanged(int yearsInt) = _SuggestedYearsChanged;

  const factory UpdateActivityFormEvent.isEquipmentProvidedChanged(bool equipBool) = _IsEquipmentProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityEquipmentChanged(bool equipBool) = _IsFacilityEquipmentChanged;
  const factory UpdateActivityFormEvent.isGearProvidedChanged(bool gearBool) = _IsGearProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityGearChanged(bool gearBool) = _IsFacilityGearChanged;
  const factory UpdateActivityFormEvent.isAnalyticsProvidedChanged(bool anaBool) = _IsAnalyticsProvidedChanged;
  const factory UpdateActivityFormEvent.isOfficiatorProvidedChanged(bool offBool) = _IsOfficiatorProvidedChanged;

  const factory UpdateActivityFormEvent.isMerchantSupportedChanged(bool merchBool) = _IsMerchantSupportedChanged;

  const factory UpdateActivityFormEvent.isAlcoholForSaleChanged(bool alcBool) = _IsAlcoholForSaleChanged;
  const factory UpdateActivityFormEvent.isFoodForSaleChanged(bool foodBool) = _IsFoodForSaleChanged;

  const factory UpdateActivityFormEvent.isAlcoholProvidedChanged(bool alcBool) = _IsAlcoholProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityAlcoholChanged(bool alcBool) = _IsFacilityAlcoholChanged;
  const factory UpdateActivityFormEvent.isFoodProvidedChanged(bool foodBool) = _IsFoodProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilityFoodChanged(bool foodBool) = _IsFacilityFoodChanged;
  const factory UpdateActivityFormEvent.isSecurityProvidedChanged(bool secBool) = _IsSecurityProvidedChanged;
  const factory UpdateActivityFormEvent.isFacilitySecurityChanged(bool secBool) = _IsFacilitySecurityChanged;

  /// activity access and visibility settings event:
  const factory UpdateActivityFormEvent.isReviewRequiredChanged(bool isReviewBool) = _IsReviewRequiredChanged;
  const factory UpdateActivityFormEvent.isPrivateOnlyChanged(bool isPrivateBool) = _IsPrivateOnlyChanged;
  const factory UpdateActivityFormEvent.isInviteOnlyChanged(bool isPublicBool) = _ListingIsInviteOnlyChanged;
  const factory UpdateActivityFormEvent.privateInviteListChanged(List<ContactDetails> contactList) = _PrivateInviteListChanged;

  /// activity cancellation settings event:
  const factory UpdateActivityFormEvent.isAllowedEarlyEndChange(bool earlyEndBool) = _IsAllowedEarlyEndChanged;
  const factory UpdateActivityFormEvent.isAllowedChangeWithoutEarlyEnd(bool changeOnlyBool) = _IsAllowedChangeWithoutEarlyEnd;
  const factory UpdateActivityFormEvent.isNotAllowedCancellation(bool noCancelBool) = _IsNotAllowedCancellation;
  const factory UpdateActivityFormEvent.isAllowedTimeBasedCancellation(bool timeBasedBool) = _IsAllowedTimeBasedCancellation;
  const factory UpdateActivityFormEvent.isAllowedFeeBasedCancellation(bool feeBasedBool) = _IsAllowedFeeBasedCancellation;
  const factory UpdateActivityFormEvent.timeBasedCancellationChanged(List<TimeBasedCancellation> timeBasedCancellation) = _TimeBasedCancellationChanged;
  const factory UpdateActivityFormEvent.feeBasedCancellationChanged(List<FeeBasedCancellation> feeBasedCancellation) = _FeeBasedCancellationChanged;


  const factory UpdateActivityFormEvent.ruleOptionChanged(ListK<DetailOption> rules) = _RuleOptionChanged;
  const factory UpdateActivityFormEvent.checkInSettingsChanged(List<CheckInSetting> checkInList) = _CheckInSettingsChanged;
  const factory UpdateActivityFormEvent.customFieldRuleSettingsChanged(List<CustomRuleOption> customRulesList) = _CustomFieldRuleSettingsChanged;
  const factory UpdateActivityFormEvent.customRuleOptionChanged(ListK<DetailCustomOption> customRules) = _CustomRuleOptionChanged;

  const factory UpdateActivityFormEvent.skillLevelToReachChanged(List<SkillLevel> skills) = _SkillLevelToReachChanged;

  const factory UpdateActivityFormEvent.vendorFormsChanged(List<VendorMerchantForm> forms) = _VendorFormsChanged;

  const factory UpdateActivityFormEvent.allowedDonationTypesChanged(List<DonationType> donationTypes) = _AllowedDonationTypesChanged;
  const factory UpdateActivityFormEvent.isAllowedExternalContributions(bool exBool) = _IsAllowedExternalContributions;

  const factory UpdateActivityFormEvent.currencyTypeChanged(String currency) = _CurrencyTypeChanged;

  const factory UpdateActivityFormEvent.isTicketBasedAttendanceChanged(bool ticketBool) = _IsTicketBasedAttendanceChanged;
  const factory UpdateActivityFormEvent.isPassBasedAttendanceChanged(bool passBool) = _IsPassBasedAttendanceChanged;
  const factory UpdateActivityFormEvent.isLimitedAttendanceChanged(bool limitBool) = _IsLimitedAttendanceChanged;
  const factory UpdateActivityFormEvent.attendanceLimitChanged(int limitInt) = _AttendanceLimitChanged;
  const factory UpdateActivityFormEvent.isTicketFixedChanged(bool ticketBool) = _IsTicketFixedChanged;
  const factory UpdateActivityFormEvent.isTicketSlotBasedOnly(bool ticketBool) = _IsTicketSlotBasedOnly;
  const factory UpdateActivityFormEvent.isPassFixedChanged(bool passBool) = _IsPassFixedChanged;


  const factory UpdateActivityFormEvent.defaultTicketChanged(ActivityTicketOption aTicket) = _DefaultTicketChanged;
  const factory UpdateActivityFormEvent.activityTicketsChanged(List<ActivityTicketOption>? ticketList) = _ActivityTicketsChanged;

  const factory UpdateActivityFormEvent.passesAttendanceIsAllowedGroups(bool groupBool) = _PassesAttendanceIsAllowedGroups;
  const factory UpdateActivityFormEvent.passesMinimumGroupQuantityChanged(int minInt) = _PassesMinimumGroupQuantityChanged;
  const factory UpdateActivityFormEvent.passesMaximumGroupQuantityChanged(int maxInt) = _PassesMaximumGroupQuantityChanged;
  const factory UpdateActivityFormEvent.passesFeeChanged(int maxInt) = _PassesFeeChanged;
  const factory UpdateActivityFormEvent.passesQuantityChanged(int passesInt) = _PassesQuantityChanged;
  const factory UpdateActivityFormEvent.passesCoverAllSessions(bool sessionBool) = _PassesCoverAllSessions;
  const factory UpdateActivityFormEvent.passesCoverLimitedSession(int limitInt) = _PassesCoverLimitedSession;

  const factory UpdateActivityFormEvent.activityPassesChanged(List<ActivityPassesOption> passesList) = _ActivityPassesChanged;

  const factory UpdateActivityFormEvent.createStripeOnBoardingAccountLink(UserProfileModel profile) = _CreateStripeOnBoardingAccountLink;
  const factory UpdateActivityFormEvent.presentStripeAccountDashboard(UserProfileModel profile) = _PresentStripeAccountDashboard;

  const factory UpdateActivityFormEvent.createActivityFinished() = CreateActivityFinished;
  const factory UpdateActivityFormEvent.saveActivityFinished() = SaveActivityFinished;
  const factory UpdateActivityFormEvent.deleteActivityFinished() = DeleteActivityFinished;
}