part of 'listing_attendee_form_bloc.dart';

@freezed
class AttendeeFormEvent with _$AttendeeFormEvent {

  const factory AttendeeFormEvent.initializeAttendeeForm(Option<AttendeeItem> initialAttendeeForm, Option<ReservationItem> initialReservation, Option<ActivityManagerForm> initialActivityForm, Option<UserProfileModel> initialResOwner) = _InitializeAttendeeForm;
  const factory AttendeeFormEvent.attendeeIsSaving(bool save) = _AttendeeIsSaving;

  const factory AttendeeFormEvent.updateAttendeeContactDetails(ContactDetails contacts) = _UpdateAttendeeContactDetails;
  const factory AttendeeFormEvent.updateCustomRules(List<CustomRuleOption> rules) = _SelectedCustomRuleChanged;
  const factory AttendeeFormEvent.updateCheckInSettings(List<CheckInSetting> checkInSettings) = _UpdateCheckInSettings;

  const factory AttendeeFormEvent.updateSelectedTicketOption(List<TicketItem> ticketItems) = _UpdateSelectedTicketOption;

  /// TODO: implement all attendee type forms.
  const factory AttendeeFormEvent.updateClassesInstructorForm(UniqueId? instructorProfile) = _UpdateClassesInstructorForm;
  const factory AttendeeFormEvent.updateMerchantVendorProfileId(UniqueId? merchVendorProfile) = _UpdateMerchantVendorForm;

  /// fill out form for vendor
  const factory AttendeeFormEvent.updateVendorForm(VendorMerchantForm? form) = _UpdateVendorForm;

  /// fill out form for organization/partner
  /// fill out form for ticket
  /// fill out form for passes
 
  /// ticket based events
  const factory AttendeeFormEvent.checkTicketLimits(UserProfileModel currentUserProfile) = _CheckTicketLimits;
  const factory AttendeeFormEvent.createTicketsOnHold() = _CreateTicketsOnHold;
  const factory AttendeeFormEvent.checkVendorLimits(UserProfileModel currentUserProfile) = _CheckVendorLimits;

  const factory AttendeeFormEvent.isFinishedCreatingTicketAttendeeWeb(String paymentIntentId) = _IsFinishedCreatingTicketAttendeeWeb;
  const factory AttendeeFormEvent.isFinishedCreatingTicketAttendee(UserProfileModel profile, String amount, String currency, String? paymentMethod) = _IsFinishedCreatingTicketAttendee;

  const factory AttendeeFormEvent.isFinishedCreatingVendorAttendee(UserProfileModel profile, String currency, CardItem? paymentMethod, DiscountCode? discount, StripeTaxRateDetails? taxRateDetail, String? taxCalculationId) = _IsFinishedCreatingVendorAttendee;

  const factory AttendeeFormEvent.isFinishedCreatingAttendee(UserProfileModel profile, String amount, String currency, String? paymentMethod) = _IsFinishedCreatingAttendee;
  const factory AttendeeFormEvent.isFinishedInvitingAttendee() = _IsFinishedInvitingAttendee;

  const factory AttendeeFormEvent.didDeleteAttendee() = _DidDeleteAttendee;
  const factory AttendeeFormEvent.didRejectAttendeesGroup(List<VendorContactDetail> attendees) = _DidRejectAttendeesGroup;
  const factory AttendeeFormEvent.didCancelAttendeesGroup(List<VendorContactDetail> attendees) = _DidCancelAttendeesGroup;
  const factory AttendeeFormEvent.didRefundAttendeesGroup(List<VendorContactDetail> attendees) = _DidRefundAttendeesGroup;
  const factory AttendeeFormEvent.didConfirmAttendeesGroup(List<VendorContactDetail> attendees) = _DidUpdateAttendeesGroup;

}