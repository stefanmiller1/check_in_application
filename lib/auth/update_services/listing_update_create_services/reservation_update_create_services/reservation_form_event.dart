part of check_in_application;

@freezed
class ReservationFormEvent with _$ReservationFormEvent {

  const factory ReservationFormEvent.initializedReservation(Option<ReservationItem> initialBooking) = _InitializedReservation;
  const factory ReservationFormEvent.isTermsConditionsChanged(bool terms) = _IsTermsConditionsChanged;
  const factory ReservationFormEvent.isSavingCardDetails(bool save) = _IsSavingCardDetails;

  const factory ReservationFormEvent.updateBookingAffiliates(List<ContactDetails> activityId) = _updateActivityItem;
  const factory ReservationFormEvent.updateBookingItemList(List<ReservationSlotItem> slotItem, String currency) = _UpdateBookingItemList;
  const factory ReservationFormEvent.updateCancellationItemList(List<ReservationSlotItem> slotItem, String currency) = _UpdateCancellationItemList;
  const factory ReservationFormEvent.updateCustomRules(List<CustomRuleOption> rules) = _SelectedCustomRuleChanged;

  const factory ReservationFormEvent.selectedActivityTypeChanged(UniqueId activityType) = _SelectedActivityTypeChanged;
  const factory ReservationFormEvent.initialSelectedSpaceDetailChanged(List<SpaceOption> spaceOption) = _SelectedSpaceTypeChanged;
  const factory ReservationFormEvent.spaceDetailChanged(SpaceOption spaceOption) = _SpaceDetailChanged;
  const factory ReservationFormEvent.selectedSizeOptionChanged(SpaceOptionSizeDetail? spaceSizeOption) = _SelectedSizeOptionChanged;
  const factory ReservationFormEvent.selectedDateChanged(DateTime? date) = _selectedDateChanged;
  const factory ReservationFormEvent.selectedIntervalChanged(int intervalInt) = _SelectedIntervalChanged;
  const factory ReservationFormEvent.cardItemChanged(CardItem cardItem) = _CardItemChanged;

  const factory ReservationFormEvent.createPaymentIntentForBooking(UserProfileModel profile, String amount, String currency, String? paymentMethod) = _CreatePaymentIntentForbooking;
  const factory ReservationFormEvent.createReservationFormForBooking(String paymentIntent) = _CreateReservationFormForBooking;

  const factory ReservationFormEvent.isFinishedReservationCancelRefund(ReservationCancellationRequestType cancelType, String reasonResponse, String amount, String currency) = _IsFinishedReservationCancelRefund;
  const factory ReservationFormEvent.isFinishedChangeEditsRequest() = _IsFinishedChangeEditsRequest;
  const factory ReservationFormEvent.isFinishedConfirmPaymentIntent(String paymentIntentId) = _IsFinishedConfirmPaymentIntent;
  const factory ReservationFormEvent.isFinishedCreatingBooking(UserProfileModel profile, String amount, String currency, String? paymentMethod, bool resRequiresReview) = _IsFinishedCreatingBooking;
  const factory ReservationFormEvent.isFinishedCreatingBookingMobile(UserProfileModel profile, String amount, String currency, String? paymentMethod, bool resRequiresReview) = _IsFinishedCreatingBookingMobile;

}