part of check_in_application;

@freezed
class ReservationFormEvent with _$ReservationFormEvent {

  const factory ReservationFormEvent.initializedReservation(Option<ReservationItem> initialReservation) = _InitializedReservation;
  const factory ReservationFormEvent.isSavingReservation(bool save) = _IsSavingReservation;
  
  const factory ReservationFormEvent.didChangeReservationFormStatus(FormStatus status) = _DidChangeReservationFormStatus;
  const factory ReservationFormEvent.didChangeFacilityId(UniqueId facilityId) = _DidChangeFacilityId;
  const factory ReservationFormEvent.didChangeReservationCheckInSettings(List<CheckInSetting> checkInSettings) = _DidChangeReservationCheckInSettings;
  const factory ReservationFormEvent.didChangeReservationCustomRules(List<CustomRuleOption> customRules) = _DidChangeReservationCustomRules;
  const factory ReservationFormEvent.didChangeReservationIsPrivate(bool? isPrivate) = _DidChangeReservationIsPrivate;

  const factory ReservationFormEvent.didChangeReservationSlotItems(List<ReservationSlotItem> slotItem, String currency) = _UpdateReservationSlotItems;
  const factory ReservationFormEvent.didChangeLinkedCircles(List<String> linkedCircles) = _DidChangeLinkedCircles;
  const factory ReservationFormEvent.didChangeReservationAffiliates(List<ContactDetails> affiliates) = _DidChangeReservationAffiliates;
  
  const factory ReservationFormEvent.isTermsConditionsChanged(bool terms) = _IsTermsConditionsChanged;

  // const factory ReservationFormEvent.updateCancellationItemList(List<ReservationSlotItem> slotItem, String currency) = _UpdateCancellationItemList;
  // const factory ReservationFormEvent.updateCustomRules(List<CustomRuleOption> rules) = _SelectedCustomRuleChanged;
  // const factory ReservationFormEvent.isFinishedReservationCancelRefund(ReservationCancellationRequestType cancelType, String reasonResponse, String amount, String currency) = _IsFinishedReservationCancelRefund;
  // const factory ReservationFormEvent.isFinishedChangeEditsRequest() = _IsFinishedChangeEditsRequest;


  const factory ReservationFormEvent.didFinishPublishingReservation(ActivityManagerForm activityForm, ListingManagerForm? facility) = _DidFinishPublishingReservation;
  const factory ReservationFormEvent.didFinishSavingReservation(ActivityManagerForm? activityForm, ListingManagerForm? facility) = _DidFinishSavingReservation;
  const factory ReservationFormEvent.isFinishedCreatingReservation(UserProfileModel profile, ListingManagerForm listing, int amount, String currency, String? paymentMethod, bool resRequiresReview) = _IsFinishedCreatingReservation;
  const factory ReservationFormEvent.isFinishedCreatingReservationWeb(String paymentIntentId, ListingManagerForm listing) = _IsFinishedCreatingReservationWeb;

  // const factory ReservationFormEvent.didCancelReservation() = _DidCancelReservation;
}