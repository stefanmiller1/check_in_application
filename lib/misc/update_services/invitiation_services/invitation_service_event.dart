part of 'invitation_service_bloc.dart';

@freezed
class InvitationFormEvent with _$InvitationFormEvent {

  const factory InvitationFormEvent.initializedInviteForm(Option<List<ContactDetails>> initialContacts) = _InitializedInviteForm;
  const factory InvitationFormEvent.inviteIsSubmittingChanged(bool isEditing) = _InviteIsSubmittingChanged;
  const factory InvitationFormEvent.updateInviteList(List<ContactDetails> contacts) = _UpdateInviteList;
  const factory InvitationFormEvent.finishedSubmittingReservationInvite(String reservationId, ActivityManagerForm activityForm, List<AttendeeItem> attendees) = _FinishedSubmittingReservationInvite;
  const factory InvitationFormEvent.finishedSubmittingInvite(String reservationId, InvitationType inviteType) = _FinishedSubmittingInvite;
  const factory InvitationFormEvent.finishedRemovingAttendee(String reservationId, UniqueId selectedAttendeeId) = _FinishedRemovingAttendee;

}