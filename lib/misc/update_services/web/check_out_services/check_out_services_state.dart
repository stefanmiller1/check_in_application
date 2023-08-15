part of check_in_application;

@freezed
class CheckOutServicesState with _$CheckOutServicesState {

  const CheckOutServicesState._();

  const factory CheckOutServicesState({
    required ReservationItem reservationItem,
    required UserProfileModel listingOwner,
    required bool isTermsConditionsAccepted,
    required bool isSavingCard,
    required bool isSubmitting,

    CardItem? cardItem,
    required Option<Either<PaymentMethodValueFailure, StringStringItems>> authPaymentFailureOrSuccessOption,
    required Option<Either<PaymentMethodValueFailure, StringStringItems>> authPaymentConfirmationFailureOrSuccessOption,
}) = _CheckOutServicesState;

  factory CheckOutServicesState.initial() => CheckOutServicesState(
      reservationItem: ReservationItem.empty(),
      listingOwner: UserProfileModel.empty(),
      isTermsConditionsAccepted: false,
      isSavingCard: false,
      isSubmitting: false,
      authPaymentFailureOrSuccessOption: none(),
      authPaymentConfirmationFailureOrSuccessOption: none(),
  );

}