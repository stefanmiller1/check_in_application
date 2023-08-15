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
    required Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessTicketOption,
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
      authFailureOrSuccessTicketOption: none(),
      authFailureOrSuccessOption: none()
  );

}