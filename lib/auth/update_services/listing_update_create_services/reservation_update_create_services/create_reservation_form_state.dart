part of check_in_application;

@freezed
class ReservationFormState with _$ReservationFormState {

  const ReservationFormState._();

  factory ReservationFormState({
    required ReservationItem reservationItem,
    required bool isTermsConditionsAccepted,

    String? currentLocationName,
    String? currentLocationDescription,
    LocationModel? currentSelectedLocation,
    List<UniqueId>? selectedActivityType,
    SpaceOption? currentSelectedSpace,
    SpaceOptionSizeDetail? currentSelectedSpaceOption,
    DateTime? selectedDate,

    required bool isSaving,
    required bool isEditingForm,
    required bool isPublishing,
    required AutovalidateMode showErrorMessages,

    required Option<Either<PaymentMethodValueFailure, StringStringItems>> authPaymentFailureOrSuccessOption,
    required Option<Either<ReservationFormFailure, Unit>> authFailureOrSuccessPaymentOption,
    required Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>> authRefundFailureOrSuccessOption,
    required Option<Either<ReservationFormFailure, Unit>> authFailureOrSuccessPublishOption,
    required Option<Either<ReservationFormFailure, Unit>> authFailureOrSuccessSavingOption,

  }) = _ReservationFormState;


  factory ReservationFormState.initial() => ReservationFormState(
      reservationItem: ReservationItem.empty(),
      isTermsConditionsAccepted: false,
      isSaving: false,
      isEditingForm: false,
      isPublishing: false,
      showErrorMessages: AutovalidateMode.disabled,
      authPaymentFailureOrSuccessOption: none(),
      authFailureOrSuccessPaymentOption: none(),
      authRefundFailureOrSuccessOption: none(),
      authFailureOrSuccessPublishOption: none(),
      authFailureOrSuccessSavingOption: none()
  );

}