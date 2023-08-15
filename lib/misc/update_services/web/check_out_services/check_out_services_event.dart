part of check_in_application;

@freezed
class CheckOutServicesEvent with _$CheckOutServicesEvent {

  const factory CheckOutServicesEvent.initializeCheckOutService(Option<UserProfileModel> initListingOwner, Option<ReservationItem> initReservation, bool cardItemsNotAvailable, String amount, String currency, UserProfileModel profile) = _InitializeCheckOutService;
  const factory CheckOutServicesEvent.createPaymentIntent(UserProfileModel profile, String amount, String currency, String? paymentMethod) = _CreatePaymentIntent;
  const factory CheckOutServicesEvent.confirmPaymentIntent(String paymentId) = _ConfirmPaymentIntent;
  const factory CheckOutServicesEvent.isFinishedPaymentIntent(String paymentIntentId) = _IsFinishedPaymentIntent;
}