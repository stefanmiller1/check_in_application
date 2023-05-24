part of 'listing_attendee_form_bloc.dart';

@freezed
class AttendeeFormState with _$AttendeeFormState {

  const AttendeeFormState._();

  factory AttendeeFormState({

    required AttendeeItem attendeeItem,
    required ReservationItem reservation,
    required bool isTermsConditionsAccepted,

    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,

    required Option<Either<PaymentMethodValueFailure, StringStringItems>> authPaymentFailureOrSuccessOption,
    required Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOption,
  }) = _AttendeeFormState;

  factory AttendeeFormState.initial() => AttendeeFormState(
      attendeeItem: AttendeeItem.empty(),
      reservation: ReservationItem.empty(),
      isTermsConditionsAccepted: false,

      isSubmitting: false,
      showErrorMessages: AutovalidateMode.disabled,
      authPaymentFailureOrSuccessOption: none(),
      authFailureOrSuccessOption: none()
  );

}