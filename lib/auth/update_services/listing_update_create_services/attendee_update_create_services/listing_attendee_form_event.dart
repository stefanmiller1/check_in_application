part of 'listing_attendee_form_bloc.dart';

@freezed
class AttendeeFormEvent with _$AttendeeFormEvent {

  const factory AttendeeFormEvent.initializeAttendeeForm(Option<AttendeeItem> initialAttendeeForm, Option<ReservationItem> initialReservation) = _InitializeAttendeeForm;

  const factory AttendeeFormEvent.updateAttendeeContactDetails(ContactDetails contacts) = _UpdateAttendeeContactDetails;
  const factory AttendeeFormEvent.updateCustomRules(List<CustomRuleOption> rules) = _SelectedCustomRuleChanged;
  const factory AttendeeFormEvent.updateCheckInSettings(List<CheckInSetting> checkInSettings) = _UpdateCheckInSettings;

  /// TODO: implement all attendee type forms.
  const factory AttendeeFormEvent.updateClassesInstructorForm(ClassesInstructorProfile? instructorProfile) = _UpdateClassesInstructorForm;
  const factory AttendeeFormEvent.updateMerchantVendorForm(EventMerchantVendorProfile? merchVendorProfile) = _UpdateMerchantVendorForm;
  /// fill out form for vendor
  /// fill out form for organization/partner
  /// fill out form for ticket
  /// fill out form for passes



  const factory AttendeeFormEvent.createPaymentIntentForAttendee(UserProfileModel profile, String amount, String currency, String? paymentMethod) = _CreatePaymentIntentForAttendee;
  const factory AttendeeFormEvent.createAttendeeFormForReservation(String paymentIntentId) = _CreateAttendeeFormForReservation;

  const factory AttendeeFormEvent.isFinishedConfirmedPaymentIntent(String paymentIntentId) = _IsFinishedConfirmedPaymentIntent;
  const factory AttendeeFormEvent.isFinishedCreatingAttendee(UserProfileModel profile, String amount, String currency, String? paymentMethod) = _IsFinishedCreatingAttendee;
  const factory AttendeeFormEvent.isFinishedInvitingAttendee() = _IsFinishedInvitingAttendee;
}