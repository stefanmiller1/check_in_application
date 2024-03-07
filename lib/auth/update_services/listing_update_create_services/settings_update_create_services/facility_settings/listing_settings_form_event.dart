part of check_in_application;

@freezed
class ListingSettingFormEvent with _$ListingSettingFormEvent {

  factory ListingSettingFormEvent.initializeListingForm(Option<ListingManagerForm> initialListingManagerForm) = _InitializeListingForm;

  const factory ListingSettingFormEvent.failureOrSuccessOptionSettings(Option<Either<ListingFormFailure, Unit>> option) = _FailureOrSuccessOptionSettings;
  const factory ListingSettingFormEvent.isSavingSettingsChanged(bool saveBool) = _IsSavingSettingsChanged;

  /// all events to handle listing profile settings form
  /// listing profile background info events:
  const factory ListingSettingFormEvent.ownerChanged(UniqueId ownerId) = _ListingOwnerChanged;
  const factory ListingSettingFormEvent.startDateChanged(DateTime startDate) = _StartDateChanged;
  const factory ListingSettingFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ListingSettingFormEvent.emailAddressChanged(EmailAddress emailStr) = _EmailAddressChanged;
  const factory ListingSettingFormEvent.listingPhoneNumberChanged(PhoneNumber phoneNumberStr) = _ListingPhoneNumberChanged;
  const factory ListingSettingFormEvent.statusTypeChanged(ManagerListingStatusType statusType) = _StatusTypeChanged;
  const factory ListingSettingFormEvent.webSiteChanged(String webSiteStr) = _WebSiteChanged;
  const factory ListingSettingFormEvent.countryRegionLanguageChanged(Language countryStr) = _CountryRegionLanguageChanged;
  const factory ListingSettingFormEvent.timeZoneChanged(String timeZoneStr) = _TimeZoneChanged;
  const factory ListingSettingFormEvent.currencyTypeChanged(String currencyStr) = _CurrencyTypeChanged;
  const factory ListingSettingFormEvent.listingInstagramContactChanged(String instStr) = _ListingInstagramContactChanged;
  const factory ListingSettingFormEvent.listingTwitterContactChanged(String twitterStr) = _ListingTwitterContactChanged;
  const factory ListingSettingFormEvent.listingFBookContactChanged(String bookStr) = _ListingFBookContactChanged;


  /// listing profile location info events:
  const factory ListingSettingFormEvent.isLocationConfirmed(bool isConfirmedBool) = ListingIsLocationConfirmed;
  const factory ListingSettingFormEvent.updateWithSavedLocation(LocationModel location) = ListingUpdateWithSavedLocation;

  /// listing profile space settings events:
  const factory ListingSettingFormEvent.facilityOptionChanged(FacilityTypeOption facilityOption) = ListingFacilityOptionChanged;
  const factory ListingSettingFormEvent.spaceOptionsChanged(ListK<SpaceOption> spaceTypeList) = ListingSpaceOptionsChanged;


  /// listing profile activity settings events:
  const factory ListingSettingFormEvent.activitySettingsChanged(List<ActivitySettings> activitySettings) = _ActivitySettingsChanged;

  /// listing profile availability settings events:
  const factory ListingSettingFormEvent.availabilitySettingsChanged(List<AvailabilityHoursSettings> availabilitySettings) = _AvailabilitySettingsChanged;


  /// all events to handle listing Reservation settings form
  /// listing access and visibility settings event:
  const factory ListingSettingFormEvent.isReviewRequiredChanged(bool isReviewBool) = _IsReviewRequiredChanged;
  const factory ListingSettingFormEvent.isPrivateOnlyChanged(bool isPrivateBool) = _IsPrivateOnlyChanged;
  const factory ListingSettingFormEvent.isInviteOnlyChanged(bool isPublicBool) = _ListingIsInviteOnlyChanged;
  const factory ListingSettingFormEvent.privateInviteListChanged(List<ContactDetails> contactList) = _PrivateInviteListChanged;

  /// listing cancellation settings event:
  const factory ListingSettingFormEvent.isAllowedEarlyEndChange(bool earlyEndBool) = _IsAllowedEarlyEndChanged;
  const factory ListingSettingFormEvent.isAllowedChangeWithoutEarlyEnd(bool changeOnlyBool) = _IsAllowedChangeWithoutEarlyEnd;
  const factory ListingSettingFormEvent.isNotAllowedCancellation(bool noCancelBool) = _IsNotAllowedCancellation;
  const factory ListingSettingFormEvent.isAllowedTimeBasedCancellation(bool timeBasedBool) = _IsAllowedTimeBasedCancellation;
  const factory ListingSettingFormEvent.isAllowedFeeBasedCancellation(bool feeBasedBool) = _IsAllowedFeeBasedCancellation;
  const factory ListingSettingFormEvent.timeBasedCancellationChanged(List<TimeBasedCancellation> timeBasedCancellation) = _TimeBasedCancellationChanged;
  const factory ListingSettingFormEvent.feeBasedCancellationChanged(List<FeeBasedCancellation> feeBasedCancellation) = _FeeBasedCancellationChanged;

  /// listing check-in settings event:
  const factory ListingSettingFormEvent.checkInSettingsChanged(List<CheckInSetting> checkInSetting) = _CheckInSettingsChanged;

  /// listing custom rule settings event:
  const factory ListingSettingFormEvent.customFieldRuleSettingChanged(List<CustomRuleOption> customFieldRule) = _CustomFieldRuleSettingChanged;

  /// listing payment method settings event:
  const factory ListingSettingFormEvent.isRequiredToPayFirst(bool reqBool) = _IsRequiredToPayFirst;
  const factory ListingSettingFormEvent.stripeAPIKeyPublishedChanged(String publishStr) = _stripeAPIKeyPublishedChanged;
  const factory ListingSettingFormEvent.stripeAPIKeySecretChanged(String secretStr) = _StripeAPIKeySecretChanged;
  const factory ListingSettingFormEvent.listOfExemptionsChanged(List<ContactDetails> contactList) = _ListOfExemptionsChanged;
  const factory ListingSettingFormEvent.createStripeOnBoardingAccountLink(UserProfileModel profile) = _CreateStripeOnBoardingAccountLink;
  const factory ListingSettingFormEvent.presentStripeAccountDashboard(UserProfileModel profile)  = _PresentStripeAccountDashboard;

  /// all events to handle listing rule settings form
  /// listing pricing rules for each Space
  const factory ListingSettingFormEvent.isPricingRuleSettingFixed(bool pricingBool) = _IsPricingRuleSettingFixed;
  const factory ListingSettingFormEvent.isQuotaRuleSettingFixed(bool quotaBool) = _IsQuotaRuleSettingFixed;
  const factory ListingSettingFormEvent.isConditionServiceFixed(bool condBool) = _IsConditionServiceFixed;
  const factory ListingSettingFormEvent.defaultPricingRuleChanged(PricingRuleSettings pricingRule) = _DefaultPricingRuleChanged;
  const factory ListingSettingFormEvent.defaultQuotaRuleChanged(QuotaRuleSetting quotaRule) = _DefaultQuotaRuleChanged;
  const factory ListingSettingFormEvent.defaultConditionsRuleChanged(ConditionsServices conditionRule) = _DefaultConditionsRuleChanged;
  const factory ListingSettingFormEvent.pricingRuleSettingsChanged(List<PricingRuleSettings> pricingRules) = _PricingRuleSettingsChanged;
  const factory ListingSettingFormEvent.quotaRuleSettingsChanged(List<QuotaRuleSetting> quoteRules) = _QuotaRuleSettingsChanged;
  const factory ListingSettingFormEvent.conditionServicesChanged(List<ConditionsServices> conditionService) = _ConditionServicesChanged;


  const factory ListingSettingFormEvent.saveListingSettingsFinished() = _SaveListingSettingsFinished;


}