part of 'invitation_service_bloc.dart';

@freezed
class InvitationFormState with _$InvitationFormState {

  const InvitationFormState._();

  factory InvitationFormState({
    required Iterable<ContactDetails> inviteList,
    required bool isSubmitting,
    required Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccess,
    required Option<Either<AttendeeFormFailure, Unit>> authFailureRemoveAttendeeOrSuccess,
}) = _InvitationFormState;

  factory InvitationFormState.initial() => InvitationFormState(
    inviteList: [],
    isSubmitting: false,
    authFailureOrSuccess: none(),
    authFailureRemoveAttendeeOrSuccess: none()
  );

}