part of 'invitation_service_bloc.dart';

@freezed
class InvitationFormEvent with _$InvitationFormEvent {

  const factory InvitationFormEvent.initializedInviteForm(Option<List<ContactDetails>> initialContacts) = _InitializedInviteForm;
  const factory InvitationFormEvent.updateInviteList(List<ContactDetails> contacts) = _UpdateInviteList;
  const factory InvitationFormEvent.finishedSubmittingInvite(String reservationId) = _FinishedSubmittingInvite;
  const factory InvitationFormEvent.finishedRemovingGuest(String reservationId) = _FinishedRemovingGuest;

}