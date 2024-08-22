part of 'listing_attendee_form_bloc.dart';

@freezed
class AttendeeFormState with _$AttendeeFormState {

  const AttendeeFormState._();

  factory AttendeeFormState({

    required AttendeeItem attendeeItem,
    required ReservationItem reservation,
    required UserProfileModel reservationOwner,
    required ActivityManagerForm activityForm,
    required bool isTermsConditionsAccepted,

    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,

    required Option<Either<PaymentMethodValueFailure, StringStringItems>> authPaymentFailureOrSuccessOption,
    required Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOnHoldTicketOption,
    required Option<Either<AttendeeFormFailure, UserProfileModel>> authFailureOrSuccessPaymentOption,
    required Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>> authVendorPaymentFailureOrSuccessOption,
    required Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>> authRefundFailureOrSuccessOption,
    required Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOption,
  }) = _AttendeeFormState;

  factory AttendeeFormState.initial() => AttendeeFormState(
      attendeeItem: AttendeeItem.empty(),
      reservation: ReservationItem.empty(),
      reservationOwner: UserProfileModel.empty(),
      activityForm: ActivityManagerForm.empty(),
      isTermsConditionsAccepted: false,
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.disabled,
      authPaymentFailureOrSuccessOption: none(),
      authVendorPaymentFailureOrSuccessOption: none(),
      authFailureOrSuccessOnHoldTicketOption: none(),
      authFailureOrSuccessPaymentOption: none(),
      authRefundFailureOrSuccessOption: none(),
      authFailureOrSuccessOption: none()
  );

}