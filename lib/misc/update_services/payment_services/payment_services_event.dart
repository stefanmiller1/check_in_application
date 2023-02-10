part of check_in_application;

@freezed
class PaymentServicesEvent with _$PaymentServicesEvent {


  factory PaymentServicesEvent.initializePaymentService(Option<UserProfileModel> userProfile) = _initializePaymentService;

  factory PaymentServicesEvent.editBoolDidChange(bool isEditing) = _EditBoolDidChange;
  factory PaymentServicesEvent.didChangeDefaultPayment(String cardId) = _DidChangeDefaultPayment;
  factory PaymentServicesEvent.didDChangePaymentsToDelete(List<String> cardItems) = _DidDChangePaymentsToDelete;
  factory PaymentServicesEvent.didUpdateNewPaymentMethod(String cardToken) = _DidUpdateNewPaymentMethod;

  factory PaymentServicesEvent.finishedNewPaymentMethod() = _FinishedNewPaymentMethod;
  factory PaymentServicesEvent.finishedNewDefaultPaymentMethod() = _FinishedNewDefaultPaymentMethod;
  factory PaymentServicesEvent.finishedDeleteSelectedPayments() = _FinishedDeleteSelectedPayments;

  factory PaymentServicesEvent.finishedNewStripePayoutMethod(UserProfileModel profile) = _FinishedNewStripePayoutMethod;
  factory PaymentServicesEvent.presentStripePayoutAccount(UserProfileModel profile) = _PresentStripePayoutAccount;

}