part of "booked_reservation_form_bloc.dart";

@freezed
class BookedReservationFormState with _$BookedReservationFormState {

  const factory BookedReservationFormState({
    required Post reservationPost,
    required bool isUploadingAttachment,

    // required SubmitPostButtonVisibilityMode submitVisibility,
    required bool isCreatingLink,
    required bool isSubmitting,
    required Option<Either<ReservationFormFailure, Uri>> authFailureOrSuccessInviteLink,
    required Option<Either<ReservationFormFailure, Unit>> authFailureOrSuccess
  }) = _ReservationChatFormState;

  factory BookedReservationFormState.initial() => BookedReservationFormState(
      reservationPost: Post.empty(),
      isSubmitting: false,
      isCreatingLink: false,
      isUploadingAttachment: false,
      authFailureOrSuccessInviteLink: none(),
      authFailureOrSuccess: none()
  );

}