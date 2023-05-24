part of check_in_application;

@freezed
class ReservationFormState with _$ReservationFormState {

  const ReservationFormState._();

  factory ReservationFormState({
    required ReservationItem newFacilityBooking,
    required ListingManagerForm listing,
    required bool isTermsConditionsAccepted,
    required bool isSavingCard,

    UniqueId? selectedActivityType,
    SpaceOption? currentSelectedSpace,
    SpaceOptionSizeDetail? currentSelectedSpaceOption,
    FacilityActivityCreatorForm? currentListingActivityOption,
    DateTime? selectedDate,
    CardItem? cardItem,

    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<ReservationFormFailure, Unit>> authFailureOrSuccessOption,
    required Option<Either<PaymentMethodValueFailure, StringStringItems>> authPaymentFailureOrSuccessOption,

  }) = _ReservationFormState;


  factory ReservationFormState.initial() => ReservationFormState(
      newFacilityBooking: ReservationItem.empty(),
      listing: ListingManagerForm.empty(),
      isTermsConditionsAccepted: false,
      isSavingCard: false,

      selectedDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 0, 0),
      selectedActivityType: getActivityOptions()[0].activityId,
      currentSelectedSpace: null,
      currentSelectedSpaceOption: null,
      currentListingActivityOption: FacilityActivityCreatorForm.empty(),

      isSubmitting: false,
      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOption: none(),
      authPaymentFailureOrSuccessOption: none(),
  );

}