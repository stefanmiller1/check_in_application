// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_attendee_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendeeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeFormEventCopyWith<$Res> {
  factory $AttendeeFormEventCopyWith(
          AttendeeFormEvent value, $Res Function(AttendeeFormEvent) then) =
      _$AttendeeFormEventCopyWithImpl<$Res, AttendeeFormEvent>;
}

/// @nodoc
class _$AttendeeFormEventCopyWithImpl<$Res, $Val extends AttendeeFormEvent>
    implements $AttendeeFormEventCopyWith<$Res> {
  _$AttendeeFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeAttendeeFormImplCopyWith<$Res> {
  factory _$$InitializeAttendeeFormImplCopyWith(
          _$InitializeAttendeeFormImpl value,
          $Res Function(_$InitializeAttendeeFormImpl) then) =
      __$$InitializeAttendeeFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Option<AttendeeItem> initialAttendeeForm,
      Option<ReservationItem> initialReservation,
      Option<ActivityManagerForm> initialActivityForm,
      Option<UserProfileModel> initialResOwner});
}

/// @nodoc
class __$$InitializeAttendeeFormImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$InitializeAttendeeFormImpl>
    implements _$$InitializeAttendeeFormImplCopyWith<$Res> {
  __$$InitializeAttendeeFormImplCopyWithImpl(
      _$InitializeAttendeeFormImpl _value,
      $Res Function(_$InitializeAttendeeFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAttendeeForm = null,
    Object? initialReservation = null,
    Object? initialActivityForm = null,
    Object? initialResOwner = null,
  }) {
    return _then(_$InitializeAttendeeFormImpl(
      null == initialAttendeeForm
          ? _value.initialAttendeeForm
          : initialAttendeeForm // ignore: cast_nullable_to_non_nullable
              as Option<AttendeeItem>,
      null == initialReservation
          ? _value.initialReservation
          : initialReservation // ignore: cast_nullable_to_non_nullable
              as Option<ReservationItem>,
      null == initialActivityForm
          ? _value.initialActivityForm
          : initialActivityForm // ignore: cast_nullable_to_non_nullable
              as Option<ActivityManagerForm>,
      null == initialResOwner
          ? _value.initialResOwner
          : initialResOwner // ignore: cast_nullable_to_non_nullable
              as Option<UserProfileModel>,
    ));
  }
}

/// @nodoc

class _$InitializeAttendeeFormImpl implements _InitializeAttendeeForm {
  const _$InitializeAttendeeFormImpl(this.initialAttendeeForm,
      this.initialReservation, this.initialActivityForm, this.initialResOwner);

  @override
  final Option<AttendeeItem> initialAttendeeForm;
  @override
  final Option<ReservationItem> initialReservation;
  @override
  final Option<ActivityManagerForm> initialActivityForm;
  @override
  final Option<UserProfileModel> initialResOwner;

  @override
  String toString() {
    return 'AttendeeFormEvent.initializeAttendeeForm(initialAttendeeForm: $initialAttendeeForm, initialReservation: $initialReservation, initialActivityForm: $initialActivityForm, initialResOwner: $initialResOwner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAttendeeFormImpl &&
            (identical(other.initialAttendeeForm, initialAttendeeForm) ||
                other.initialAttendeeForm == initialAttendeeForm) &&
            (identical(other.initialReservation, initialReservation) ||
                other.initialReservation == initialReservation) &&
            (identical(other.initialActivityForm, initialActivityForm) ||
                other.initialActivityForm == initialActivityForm) &&
            (identical(other.initialResOwner, initialResOwner) ||
                other.initialResOwner == initialResOwner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialAttendeeForm,
      initialReservation, initialActivityForm, initialResOwner);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeAttendeeFormImplCopyWith<_$InitializeAttendeeFormImpl>
      get copyWith => __$$InitializeAttendeeFormImplCopyWithImpl<
          _$InitializeAttendeeFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return initializeAttendeeForm(initialAttendeeForm, initialReservation,
        initialActivityForm, initialResOwner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return initializeAttendeeForm?.call(initialAttendeeForm, initialReservation,
        initialActivityForm, initialResOwner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (initializeAttendeeForm != null) {
      return initializeAttendeeForm(initialAttendeeForm, initialReservation,
          initialActivityForm, initialResOwner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return initializeAttendeeForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return initializeAttendeeForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (initializeAttendeeForm != null) {
      return initializeAttendeeForm(this);
    }
    return orElse();
  }
}

abstract class _InitializeAttendeeForm implements AttendeeFormEvent {
  const factory _InitializeAttendeeForm(
          final Option<AttendeeItem> initialAttendeeForm,
          final Option<ReservationItem> initialReservation,
          final Option<ActivityManagerForm> initialActivityForm,
          final Option<UserProfileModel> initialResOwner) =
      _$InitializeAttendeeFormImpl;

  Option<AttendeeItem> get initialAttendeeForm;
  Option<ReservationItem> get initialReservation;
  Option<ActivityManagerForm> get initialActivityForm;
  Option<UserProfileModel> get initialResOwner;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeAttendeeFormImplCopyWith<_$InitializeAttendeeFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendeeIsSavingImplCopyWith<$Res> {
  factory _$$AttendeeIsSavingImplCopyWith(_$AttendeeIsSavingImpl value,
          $Res Function(_$AttendeeIsSavingImpl) then) =
      __$$AttendeeIsSavingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool save});
}

/// @nodoc
class __$$AttendeeIsSavingImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$AttendeeIsSavingImpl>
    implements _$$AttendeeIsSavingImplCopyWith<$Res> {
  __$$AttendeeIsSavingImplCopyWithImpl(_$AttendeeIsSavingImpl _value,
      $Res Function(_$AttendeeIsSavingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? save = null,
  }) {
    return _then(_$AttendeeIsSavingImpl(
      null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AttendeeIsSavingImpl implements _AttendeeIsSaving {
  const _$AttendeeIsSavingImpl(this.save);

  @override
  final bool save;

  @override
  String toString() {
    return 'AttendeeFormEvent.attendeeIsSaving(save: $save)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeIsSavingImpl &&
            (identical(other.save, save) || other.save == save));
  }

  @override
  int get hashCode => Object.hash(runtimeType, save);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeIsSavingImplCopyWith<_$AttendeeIsSavingImpl> get copyWith =>
      __$$AttendeeIsSavingImplCopyWithImpl<_$AttendeeIsSavingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return attendeeIsSaving(save);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return attendeeIsSaving?.call(save);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (attendeeIsSaving != null) {
      return attendeeIsSaving(save);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return attendeeIsSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return attendeeIsSaving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (attendeeIsSaving != null) {
      return attendeeIsSaving(this);
    }
    return orElse();
  }
}

abstract class _AttendeeIsSaving implements AttendeeFormEvent {
  const factory _AttendeeIsSaving(final bool save) = _$AttendeeIsSavingImpl;

  bool get save;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeIsSavingImplCopyWith<_$AttendeeIsSavingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAttendeeContactDetailsImplCopyWith<$Res> {
  factory _$$UpdateAttendeeContactDetailsImplCopyWith(
          _$UpdateAttendeeContactDetailsImpl value,
          $Res Function(_$UpdateAttendeeContactDetailsImpl) then) =
      __$$UpdateAttendeeContactDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactDetails contacts});

  $ContactDetailsCopyWith<$Res> get contacts;
}

/// @nodoc
class __$$UpdateAttendeeContactDetailsImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$UpdateAttendeeContactDetailsImpl>
    implements _$$UpdateAttendeeContactDetailsImplCopyWith<$Res> {
  __$$UpdateAttendeeContactDetailsImplCopyWithImpl(
      _$UpdateAttendeeContactDetailsImpl _value,
      $Res Function(_$UpdateAttendeeContactDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$UpdateAttendeeContactDetailsImpl(
      null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ContactDetails,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsCopyWith<$Res> get contacts {
    return $ContactDetailsCopyWith<$Res>(_value.contacts, (value) {
      return _then(_value.copyWith(contacts: value));
    });
  }
}

/// @nodoc

class _$UpdateAttendeeContactDetailsImpl
    implements _UpdateAttendeeContactDetails {
  const _$UpdateAttendeeContactDetailsImpl(this.contacts);

  @override
  final ContactDetails contacts;

  @override
  String toString() {
    return 'AttendeeFormEvent.updateAttendeeContactDetails(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttendeeContactDetailsImpl &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contacts);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttendeeContactDetailsImplCopyWith<
          _$UpdateAttendeeContactDetailsImpl>
      get copyWith => __$$UpdateAttendeeContactDetailsImplCopyWithImpl<
          _$UpdateAttendeeContactDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateAttendeeContactDetails(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateAttendeeContactDetails?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateAttendeeContactDetails != null) {
      return updateAttendeeContactDetails(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateAttendeeContactDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateAttendeeContactDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateAttendeeContactDetails != null) {
      return updateAttendeeContactDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateAttendeeContactDetails implements AttendeeFormEvent {
  const factory _UpdateAttendeeContactDetails(final ContactDetails contacts) =
      _$UpdateAttendeeContactDetailsImpl;

  ContactDetails get contacts;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAttendeeContactDetailsImplCopyWith<
          _$UpdateAttendeeContactDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedCustomRuleChangedImplCopyWith<$Res> {
  factory _$$SelectedCustomRuleChangedImplCopyWith(
          _$SelectedCustomRuleChangedImpl value,
          $Res Function(_$SelectedCustomRuleChangedImpl) then) =
      __$$SelectedCustomRuleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomRuleOption> rules});
}

/// @nodoc
class __$$SelectedCustomRuleChangedImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$SelectedCustomRuleChangedImpl>
    implements _$$SelectedCustomRuleChangedImplCopyWith<$Res> {
  __$$SelectedCustomRuleChangedImplCopyWithImpl(
      _$SelectedCustomRuleChangedImpl _value,
      $Res Function(_$SelectedCustomRuleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rules = null,
  }) {
    return _then(_$SelectedCustomRuleChangedImpl(
      null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<CustomRuleOption>,
    ));
  }
}

/// @nodoc

class _$SelectedCustomRuleChangedImpl implements _SelectedCustomRuleChanged {
  const _$SelectedCustomRuleChangedImpl(final List<CustomRuleOption> rules)
      : _rules = rules;

  final List<CustomRuleOption> _rules;
  @override
  List<CustomRuleOption> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.updateCustomRules(rules: $rules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedCustomRuleChangedImpl &&
            const DeepCollectionEquality().equals(other._rules, _rules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rules));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedCustomRuleChangedImplCopyWith<_$SelectedCustomRuleChangedImpl>
      get copyWith => __$$SelectedCustomRuleChangedImplCopyWithImpl<
          _$SelectedCustomRuleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateCustomRules(rules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateCustomRules?.call(rules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateCustomRules != null) {
      return updateCustomRules(rules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateCustomRules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateCustomRules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateCustomRules != null) {
      return updateCustomRules(this);
    }
    return orElse();
  }
}

abstract class _SelectedCustomRuleChanged implements AttendeeFormEvent {
  const factory _SelectedCustomRuleChanged(final List<CustomRuleOption> rules) =
      _$SelectedCustomRuleChangedImpl;

  List<CustomRuleOption> get rules;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedCustomRuleChangedImplCopyWith<_$SelectedCustomRuleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCheckInSettingsImplCopyWith<$Res> {
  factory _$$UpdateCheckInSettingsImplCopyWith(
          _$UpdateCheckInSettingsImpl value,
          $Res Function(_$UpdateCheckInSettingsImpl) then) =
      __$$UpdateCheckInSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CheckInSetting> checkInSettings});
}

/// @nodoc
class __$$UpdateCheckInSettingsImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$UpdateCheckInSettingsImpl>
    implements _$$UpdateCheckInSettingsImplCopyWith<$Res> {
  __$$UpdateCheckInSettingsImplCopyWithImpl(_$UpdateCheckInSettingsImpl _value,
      $Res Function(_$UpdateCheckInSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkInSettings = null,
  }) {
    return _then(_$UpdateCheckInSettingsImpl(
      null == checkInSettings
          ? _value._checkInSettings
          : checkInSettings // ignore: cast_nullable_to_non_nullable
              as List<CheckInSetting>,
    ));
  }
}

/// @nodoc

class _$UpdateCheckInSettingsImpl implements _UpdateCheckInSettings {
  const _$UpdateCheckInSettingsImpl(final List<CheckInSetting> checkInSettings)
      : _checkInSettings = checkInSettings;

  final List<CheckInSetting> _checkInSettings;
  @override
  List<CheckInSetting> get checkInSettings {
    if (_checkInSettings is EqualUnmodifiableListView) return _checkInSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkInSettings);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.updateCheckInSettings(checkInSettings: $checkInSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCheckInSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other._checkInSettings, _checkInSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_checkInSettings));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCheckInSettingsImplCopyWith<_$UpdateCheckInSettingsImpl>
      get copyWith => __$$UpdateCheckInSettingsImplCopyWithImpl<
          _$UpdateCheckInSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateCheckInSettings(checkInSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateCheckInSettings?.call(checkInSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateCheckInSettings != null) {
      return updateCheckInSettings(checkInSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateCheckInSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateCheckInSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateCheckInSettings != null) {
      return updateCheckInSettings(this);
    }
    return orElse();
  }
}

abstract class _UpdateCheckInSettings implements AttendeeFormEvent {
  const factory _UpdateCheckInSettings(
      final List<CheckInSetting> checkInSettings) = _$UpdateCheckInSettingsImpl;

  List<CheckInSetting> get checkInSettings;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCheckInSettingsImplCopyWith<_$UpdateCheckInSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedTicketOptionImplCopyWith<$Res> {
  factory _$$UpdateSelectedTicketOptionImplCopyWith(
          _$UpdateSelectedTicketOptionImpl value,
          $Res Function(_$UpdateSelectedTicketOptionImpl) then) =
      __$$UpdateSelectedTicketOptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TicketItem> ticketItems});
}

/// @nodoc
class __$$UpdateSelectedTicketOptionImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$UpdateSelectedTicketOptionImpl>
    implements _$$UpdateSelectedTicketOptionImplCopyWith<$Res> {
  __$$UpdateSelectedTicketOptionImplCopyWithImpl(
      _$UpdateSelectedTicketOptionImpl _value,
      $Res Function(_$UpdateSelectedTicketOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketItems = null,
  }) {
    return _then(_$UpdateSelectedTicketOptionImpl(
      null == ticketItems
          ? _value._ticketItems
          : ticketItems // ignore: cast_nullable_to_non_nullable
              as List<TicketItem>,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedTicketOptionImpl implements _UpdateSelectedTicketOption {
  const _$UpdateSelectedTicketOptionImpl(final List<TicketItem> ticketItems)
      : _ticketItems = ticketItems;

  final List<TicketItem> _ticketItems;
  @override
  List<TicketItem> get ticketItems {
    if (_ticketItems is EqualUnmodifiableListView) return _ticketItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketItems);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.updateSelectedTicketOption(ticketItems: $ticketItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedTicketOptionImpl &&
            const DeepCollectionEquality()
                .equals(other._ticketItems, _ticketItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ticketItems));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedTicketOptionImplCopyWith<_$UpdateSelectedTicketOptionImpl>
      get copyWith => __$$UpdateSelectedTicketOptionImplCopyWithImpl<
          _$UpdateSelectedTicketOptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateSelectedTicketOption(ticketItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateSelectedTicketOption?.call(ticketItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateSelectedTicketOption != null) {
      return updateSelectedTicketOption(ticketItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateSelectedTicketOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateSelectedTicketOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateSelectedTicketOption != null) {
      return updateSelectedTicketOption(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTicketOption implements AttendeeFormEvent {
  const factory _UpdateSelectedTicketOption(
      final List<TicketItem> ticketItems) = _$UpdateSelectedTicketOptionImpl;

  List<TicketItem> get ticketItems;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedTicketOptionImplCopyWith<_$UpdateSelectedTicketOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateClassesInstructorFormImplCopyWith<$Res> {
  factory _$$UpdateClassesInstructorFormImplCopyWith(
          _$UpdateClassesInstructorFormImpl value,
          $Res Function(_$UpdateClassesInstructorFormImpl) then) =
      __$$UpdateClassesInstructorFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId? instructorProfile});
}

/// @nodoc
class __$$UpdateClassesInstructorFormImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$UpdateClassesInstructorFormImpl>
    implements _$$UpdateClassesInstructorFormImplCopyWith<$Res> {
  __$$UpdateClassesInstructorFormImplCopyWithImpl(
      _$UpdateClassesInstructorFormImpl _value,
      $Res Function(_$UpdateClassesInstructorFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructorProfile = freezed,
  }) {
    return _then(_$UpdateClassesInstructorFormImpl(
      freezed == instructorProfile
          ? _value.instructorProfile
          : instructorProfile // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$UpdateClassesInstructorFormImpl
    implements _UpdateClassesInstructorForm {
  const _$UpdateClassesInstructorFormImpl(this.instructorProfile);

  @override
  final UniqueId? instructorProfile;

  @override
  String toString() {
    return 'AttendeeFormEvent.updateClassesInstructorForm(instructorProfile: $instructorProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClassesInstructorFormImpl &&
            (identical(other.instructorProfile, instructorProfile) ||
                other.instructorProfile == instructorProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instructorProfile);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClassesInstructorFormImplCopyWith<_$UpdateClassesInstructorFormImpl>
      get copyWith => __$$UpdateClassesInstructorFormImplCopyWithImpl<
          _$UpdateClassesInstructorFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateClassesInstructorForm(instructorProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateClassesInstructorForm?.call(instructorProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateClassesInstructorForm != null) {
      return updateClassesInstructorForm(instructorProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateClassesInstructorForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateClassesInstructorForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateClassesInstructorForm != null) {
      return updateClassesInstructorForm(this);
    }
    return orElse();
  }
}

abstract class _UpdateClassesInstructorForm implements AttendeeFormEvent {
  const factory _UpdateClassesInstructorForm(
      final UniqueId? instructorProfile) = _$UpdateClassesInstructorFormImpl;

  UniqueId? get instructorProfile;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClassesInstructorFormImplCopyWith<_$UpdateClassesInstructorFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMerchantVendorFormImplCopyWith<$Res> {
  factory _$$UpdateMerchantVendorFormImplCopyWith(
          _$UpdateMerchantVendorFormImpl value,
          $Res Function(_$UpdateMerchantVendorFormImpl) then) =
      __$$UpdateMerchantVendorFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId? merchVendorProfile});
}

/// @nodoc
class __$$UpdateMerchantVendorFormImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$UpdateMerchantVendorFormImpl>
    implements _$$UpdateMerchantVendorFormImplCopyWith<$Res> {
  __$$UpdateMerchantVendorFormImplCopyWithImpl(
      _$UpdateMerchantVendorFormImpl _value,
      $Res Function(_$UpdateMerchantVendorFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchVendorProfile = freezed,
  }) {
    return _then(_$UpdateMerchantVendorFormImpl(
      freezed == merchVendorProfile
          ? _value.merchVendorProfile
          : merchVendorProfile // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$UpdateMerchantVendorFormImpl implements _UpdateMerchantVendorForm {
  const _$UpdateMerchantVendorFormImpl(this.merchVendorProfile);

  @override
  final UniqueId? merchVendorProfile;

  @override
  String toString() {
    return 'AttendeeFormEvent.updateMerchantVendorProfileId(merchVendorProfile: $merchVendorProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMerchantVendorFormImpl &&
            (identical(other.merchVendorProfile, merchVendorProfile) ||
                other.merchVendorProfile == merchVendorProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, merchVendorProfile);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMerchantVendorFormImplCopyWith<_$UpdateMerchantVendorFormImpl>
      get copyWith => __$$UpdateMerchantVendorFormImplCopyWithImpl<
          _$UpdateMerchantVendorFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateMerchantVendorProfileId(merchVendorProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateMerchantVendorProfileId?.call(merchVendorProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateMerchantVendorProfileId != null) {
      return updateMerchantVendorProfileId(merchVendorProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateMerchantVendorProfileId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateMerchantVendorProfileId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateMerchantVendorProfileId != null) {
      return updateMerchantVendorProfileId(this);
    }
    return orElse();
  }
}

abstract class _UpdateMerchantVendorForm implements AttendeeFormEvent {
  const factory _UpdateMerchantVendorForm(final UniqueId? merchVendorProfile) =
      _$UpdateMerchantVendorFormImpl;

  UniqueId? get merchVendorProfile;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMerchantVendorFormImplCopyWith<_$UpdateMerchantVendorFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateVendorFormImplCopyWith<$Res> {
  factory _$$UpdateVendorFormImplCopyWith(_$UpdateVendorFormImpl value,
          $Res Function(_$UpdateVendorFormImpl) then) =
      __$$UpdateVendorFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VendorMerchantForm? form});

  $VendorMerchantFormCopyWith<$Res>? get form;
}

/// @nodoc
class __$$UpdateVendorFormImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$UpdateVendorFormImpl>
    implements _$$UpdateVendorFormImplCopyWith<$Res> {
  __$$UpdateVendorFormImplCopyWithImpl(_$UpdateVendorFormImpl _value,
      $Res Function(_$UpdateVendorFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_$UpdateVendorFormImpl(
      freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as VendorMerchantForm?,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorMerchantFormCopyWith<$Res>? get form {
    if (_value.form == null) {
      return null;
    }

    return $VendorMerchantFormCopyWith<$Res>(_value.form!, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc

class _$UpdateVendorFormImpl implements _UpdateVendorForm {
  const _$UpdateVendorFormImpl(this.form);

  @override
  final VendorMerchantForm? form;

  @override
  String toString() {
    return 'AttendeeFormEvent.updateVendorForm(form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVendorFormImpl &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVendorFormImplCopyWith<_$UpdateVendorFormImpl> get copyWith =>
      __$$UpdateVendorFormImplCopyWithImpl<_$UpdateVendorFormImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return updateVendorForm(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return updateVendorForm?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateVendorForm != null) {
      return updateVendorForm(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return updateVendorForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return updateVendorForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (updateVendorForm != null) {
      return updateVendorForm(this);
    }
    return orElse();
  }
}

abstract class _UpdateVendorForm implements AttendeeFormEvent {
  const factory _UpdateVendorForm(final VendorMerchantForm? form) =
      _$UpdateVendorFormImpl;

  VendorMerchantForm? get form;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateVendorFormImplCopyWith<_$UpdateVendorFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckTicketLimitsImplCopyWith<$Res> {
  factory _$$CheckTicketLimitsImplCopyWith(_$CheckTicketLimitsImpl value,
          $Res Function(_$CheckTicketLimitsImpl) then) =
      __$$CheckTicketLimitsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileModel currentUserProfile});

  $UserProfileModelCopyWith<$Res> get currentUserProfile;
}

/// @nodoc
class __$$CheckTicketLimitsImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$CheckTicketLimitsImpl>
    implements _$$CheckTicketLimitsImplCopyWith<$Res> {
  __$$CheckTicketLimitsImplCopyWithImpl(_$CheckTicketLimitsImpl _value,
      $Res Function(_$CheckTicketLimitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserProfile = null,
  }) {
    return _then(_$CheckTicketLimitsImpl(
      null == currentUserProfile
          ? _value.currentUserProfile
          : currentUserProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get currentUserProfile {
    return $UserProfileModelCopyWith<$Res>(_value.currentUserProfile, (value) {
      return _then(_value.copyWith(currentUserProfile: value));
    });
  }
}

/// @nodoc

class _$CheckTicketLimitsImpl implements _CheckTicketLimits {
  const _$CheckTicketLimitsImpl(this.currentUserProfile);

  @override
  final UserProfileModel currentUserProfile;

  @override
  String toString() {
    return 'AttendeeFormEvent.checkTicketLimits(currentUserProfile: $currentUserProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckTicketLimitsImpl &&
            (identical(other.currentUserProfile, currentUserProfile) ||
                other.currentUserProfile == currentUserProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserProfile);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckTicketLimitsImplCopyWith<_$CheckTicketLimitsImpl> get copyWith =>
      __$$CheckTicketLimitsImplCopyWithImpl<_$CheckTicketLimitsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return checkTicketLimits(currentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return checkTicketLimits?.call(currentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (checkTicketLimits != null) {
      return checkTicketLimits(currentUserProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return checkTicketLimits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return checkTicketLimits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (checkTicketLimits != null) {
      return checkTicketLimits(this);
    }
    return orElse();
  }
}

abstract class _CheckTicketLimits implements AttendeeFormEvent {
  const factory _CheckTicketLimits(final UserProfileModel currentUserProfile) =
      _$CheckTicketLimitsImpl;

  UserProfileModel get currentUserProfile;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckTicketLimitsImplCopyWith<_$CheckTicketLimitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTicketsOnHoldImplCopyWith<$Res> {
  factory _$$CreateTicketsOnHoldImplCopyWith(_$CreateTicketsOnHoldImpl value,
          $Res Function(_$CreateTicketsOnHoldImpl) then) =
      __$$CreateTicketsOnHoldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateTicketsOnHoldImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$CreateTicketsOnHoldImpl>
    implements _$$CreateTicketsOnHoldImplCopyWith<$Res> {
  __$$CreateTicketsOnHoldImplCopyWithImpl(_$CreateTicketsOnHoldImpl _value,
      $Res Function(_$CreateTicketsOnHoldImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateTicketsOnHoldImpl implements _CreateTicketsOnHold {
  const _$CreateTicketsOnHoldImpl();

  @override
  String toString() {
    return 'AttendeeFormEvent.createTicketsOnHold()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTicketsOnHoldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return createTicketsOnHold();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return createTicketsOnHold?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (createTicketsOnHold != null) {
      return createTicketsOnHold();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return createTicketsOnHold(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return createTicketsOnHold?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (createTicketsOnHold != null) {
      return createTicketsOnHold(this);
    }
    return orElse();
  }
}

abstract class _CreateTicketsOnHold implements AttendeeFormEvent {
  const factory _CreateTicketsOnHold() = _$CreateTicketsOnHoldImpl;
}

/// @nodoc
abstract class _$$CheckVendorLimitsImplCopyWith<$Res> {
  factory _$$CheckVendorLimitsImplCopyWith(_$CheckVendorLimitsImpl value,
          $Res Function(_$CheckVendorLimitsImpl) then) =
      __$$CheckVendorLimitsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileModel currentUserProfile});

  $UserProfileModelCopyWith<$Res> get currentUserProfile;
}

/// @nodoc
class __$$CheckVendorLimitsImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$CheckVendorLimitsImpl>
    implements _$$CheckVendorLimitsImplCopyWith<$Res> {
  __$$CheckVendorLimitsImplCopyWithImpl(_$CheckVendorLimitsImpl _value,
      $Res Function(_$CheckVendorLimitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserProfile = null,
  }) {
    return _then(_$CheckVendorLimitsImpl(
      null == currentUserProfile
          ? _value.currentUserProfile
          : currentUserProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get currentUserProfile {
    return $UserProfileModelCopyWith<$Res>(_value.currentUserProfile, (value) {
      return _then(_value.copyWith(currentUserProfile: value));
    });
  }
}

/// @nodoc

class _$CheckVendorLimitsImpl implements _CheckVendorLimits {
  const _$CheckVendorLimitsImpl(this.currentUserProfile);

  @override
  final UserProfileModel currentUserProfile;

  @override
  String toString() {
    return 'AttendeeFormEvent.checkVendorLimits(currentUserProfile: $currentUserProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckVendorLimitsImpl &&
            (identical(other.currentUserProfile, currentUserProfile) ||
                other.currentUserProfile == currentUserProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserProfile);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckVendorLimitsImplCopyWith<_$CheckVendorLimitsImpl> get copyWith =>
      __$$CheckVendorLimitsImplCopyWithImpl<_$CheckVendorLimitsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return checkVendorLimits(currentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return checkVendorLimits?.call(currentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (checkVendorLimits != null) {
      return checkVendorLimits(currentUserProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return checkVendorLimits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return checkVendorLimits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (checkVendorLimits != null) {
      return checkVendorLimits(this);
    }
    return orElse();
  }
}

abstract class _CheckVendorLimits implements AttendeeFormEvent {
  const factory _CheckVendorLimits(final UserProfileModel currentUserProfile) =
      _$CheckVendorLimitsImpl;

  UserProfileModel get currentUserProfile;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckVendorLimitsImplCopyWith<_$CheckVendorLimitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFinishedCreatingTicketAttendeeWebImplCopyWith<$Res> {
  factory _$$IsFinishedCreatingTicketAttendeeWebImplCopyWith(
          _$IsFinishedCreatingTicketAttendeeWebImpl value,
          $Res Function(_$IsFinishedCreatingTicketAttendeeWebImpl) then) =
      __$$IsFinishedCreatingTicketAttendeeWebImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentIntentId});
}

/// @nodoc
class __$$IsFinishedCreatingTicketAttendeeWebImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$IsFinishedCreatingTicketAttendeeWebImpl>
    implements _$$IsFinishedCreatingTicketAttendeeWebImplCopyWith<$Res> {
  __$$IsFinishedCreatingTicketAttendeeWebImplCopyWithImpl(
      _$IsFinishedCreatingTicketAttendeeWebImpl _value,
      $Res Function(_$IsFinishedCreatingTicketAttendeeWebImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIntentId = null,
  }) {
    return _then(_$IsFinishedCreatingTicketAttendeeWebImpl(
      null == paymentIntentId
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsFinishedCreatingTicketAttendeeWebImpl
    implements _IsFinishedCreatingTicketAttendeeWeb {
  const _$IsFinishedCreatingTicketAttendeeWebImpl(this.paymentIntentId);

  @override
  final String paymentIntentId;

  @override
  String toString() {
    return 'AttendeeFormEvent.isFinishedCreatingTicketAttendeeWeb(paymentIntentId: $paymentIntentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFinishedCreatingTicketAttendeeWebImpl &&
            (identical(other.paymentIntentId, paymentIntentId) ||
                other.paymentIntentId == paymentIntentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentIntentId);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFinishedCreatingTicketAttendeeWebImplCopyWith<
          _$IsFinishedCreatingTicketAttendeeWebImpl>
      get copyWith => __$$IsFinishedCreatingTicketAttendeeWebImplCopyWithImpl<
          _$IsFinishedCreatingTicketAttendeeWebImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendeeWeb(paymentIntentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendeeWeb?.call(paymentIntentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingTicketAttendeeWeb != null) {
      return isFinishedCreatingTicketAttendeeWeb(paymentIntentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendeeWeb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendeeWeb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingTicketAttendeeWeb != null) {
      return isFinishedCreatingTicketAttendeeWeb(this);
    }
    return orElse();
  }
}

abstract class _IsFinishedCreatingTicketAttendeeWeb
    implements AttendeeFormEvent {
  const factory _IsFinishedCreatingTicketAttendeeWeb(
      final String paymentIntentId) = _$IsFinishedCreatingTicketAttendeeWebImpl;

  String get paymentIntentId;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsFinishedCreatingTicketAttendeeWebImplCopyWith<
          _$IsFinishedCreatingTicketAttendeeWebImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFinishedCreatingTicketAttendeeImplCopyWith<$Res> {
  factory _$$IsFinishedCreatingTicketAttendeeImplCopyWith(
          _$IsFinishedCreatingTicketAttendeeImpl value,
          $Res Function(_$IsFinishedCreatingTicketAttendeeImpl) then) =
      __$$IsFinishedCreatingTicketAttendeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserProfileModel profile,
      String amount,
      String currency,
      String? paymentMethod});

  $UserProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$IsFinishedCreatingTicketAttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$IsFinishedCreatingTicketAttendeeImpl>
    implements _$$IsFinishedCreatingTicketAttendeeImplCopyWith<$Res> {
  __$$IsFinishedCreatingTicketAttendeeImplCopyWithImpl(
      _$IsFinishedCreatingTicketAttendeeImpl _value,
      $Res Function(_$IsFinishedCreatingTicketAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? amount = null,
    Object? currency = null,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$IsFinishedCreatingTicketAttendeeImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get profile {
    return $UserProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$IsFinishedCreatingTicketAttendeeImpl
    implements _IsFinishedCreatingTicketAttendee {
  const _$IsFinishedCreatingTicketAttendeeImpl(
      this.profile, this.amount, this.currency, this.paymentMethod);

  @override
  final UserProfileModel profile;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'AttendeeFormEvent.isFinishedCreatingTicketAttendee(profile: $profile, amount: $amount, currency: $currency, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFinishedCreatingTicketAttendeeImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, profile, amount, currency, paymentMethod);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFinishedCreatingTicketAttendeeImplCopyWith<
          _$IsFinishedCreatingTicketAttendeeImpl>
      get copyWith => __$$IsFinishedCreatingTicketAttendeeImplCopyWithImpl<
          _$IsFinishedCreatingTicketAttendeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendee(
        profile, amount, currency, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendee?.call(
        profile, amount, currency, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingTicketAttendee != null) {
      return isFinishedCreatingTicketAttendee(
          profile, amount, currency, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingTicketAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingTicketAttendee != null) {
      return isFinishedCreatingTicketAttendee(this);
    }
    return orElse();
  }
}

abstract class _IsFinishedCreatingTicketAttendee implements AttendeeFormEvent {
  const factory _IsFinishedCreatingTicketAttendee(
      final UserProfileModel profile,
      final String amount,
      final String currency,
      final String? paymentMethod) = _$IsFinishedCreatingTicketAttendeeImpl;

  UserProfileModel get profile;
  String get amount;
  String get currency;
  String? get paymentMethod;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsFinishedCreatingTicketAttendeeImplCopyWith<
          _$IsFinishedCreatingTicketAttendeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFinishedCreatingVendorAttendeeImplCopyWith<$Res> {
  factory _$$IsFinishedCreatingVendorAttendeeImplCopyWith(
          _$IsFinishedCreatingVendorAttendeeImpl value,
          $Res Function(_$IsFinishedCreatingVendorAttendeeImpl) then) =
      __$$IsFinishedCreatingVendorAttendeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserProfileModel profile,
      String currency,
      CardItem? paymentMethod,
      DiscountCode? discount,
      StripeTaxRateDetails? taxRateDetail,
      String? taxCalculationId});

  $UserProfileModelCopyWith<$Res> get profile;
  $CardItemCopyWith<$Res>? get paymentMethod;
  $DiscountCodeCopyWith<$Res>? get discount;
  $StripeTaxRateDetailsCopyWith<$Res>? get taxRateDetail;
}

/// @nodoc
class __$$IsFinishedCreatingVendorAttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$IsFinishedCreatingVendorAttendeeImpl>
    implements _$$IsFinishedCreatingVendorAttendeeImplCopyWith<$Res> {
  __$$IsFinishedCreatingVendorAttendeeImplCopyWithImpl(
      _$IsFinishedCreatingVendorAttendeeImpl _value,
      $Res Function(_$IsFinishedCreatingVendorAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? currency = null,
    Object? paymentMethod = freezed,
    Object? discount = freezed,
    Object? taxRateDetail = freezed,
    Object? taxCalculationId = freezed,
  }) {
    return _then(_$IsFinishedCreatingVendorAttendeeImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as CardItem?,
      freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountCode?,
      freezed == taxRateDetail
          ? _value.taxRateDetail
          : taxRateDetail // ignore: cast_nullable_to_non_nullable
              as StripeTaxRateDetails?,
      freezed == taxCalculationId
          ? _value.taxCalculationId
          : taxCalculationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get profile {
    return $UserProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardItemCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $CardItemCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value));
    });
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $DiscountCodeCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value));
    });
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StripeTaxRateDetailsCopyWith<$Res>? get taxRateDetail {
    if (_value.taxRateDetail == null) {
      return null;
    }

    return $StripeTaxRateDetailsCopyWith<$Res>(_value.taxRateDetail!, (value) {
      return _then(_value.copyWith(taxRateDetail: value));
    });
  }
}

/// @nodoc

class _$IsFinishedCreatingVendorAttendeeImpl
    implements _IsFinishedCreatingVendorAttendee {
  const _$IsFinishedCreatingVendorAttendeeImpl(
      this.profile,
      this.currency,
      this.paymentMethod,
      this.discount,
      this.taxRateDetail,
      this.taxCalculationId);

  @override
  final UserProfileModel profile;
  @override
  final String currency;
  @override
  final CardItem? paymentMethod;
  @override
  final DiscountCode? discount;
  @override
  final StripeTaxRateDetails? taxRateDetail;
  @override
  final String? taxCalculationId;

  @override
  String toString() {
    return 'AttendeeFormEvent.isFinishedCreatingVendorAttendee(profile: $profile, currency: $currency, paymentMethod: $paymentMethod, discount: $discount, taxRateDetail: $taxRateDetail, taxCalculationId: $taxCalculationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFinishedCreatingVendorAttendeeImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.taxRateDetail, taxRateDetail) ||
                other.taxRateDetail == taxRateDetail) &&
            (identical(other.taxCalculationId, taxCalculationId) ||
                other.taxCalculationId == taxCalculationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, currency, paymentMethod,
      discount, taxRateDetail, taxCalculationId);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFinishedCreatingVendorAttendeeImplCopyWith<
          _$IsFinishedCreatingVendorAttendeeImpl>
      get copyWith => __$$IsFinishedCreatingVendorAttendeeImplCopyWithImpl<
          _$IsFinishedCreatingVendorAttendeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingVendorAttendee(profile, currency, paymentMethod,
        discount, taxRateDetail, taxCalculationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingVendorAttendee?.call(profile, currency,
        paymentMethod, discount, taxRateDetail, taxCalculationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingVendorAttendee != null) {
      return isFinishedCreatingVendorAttendee(profile, currency, paymentMethod,
          discount, taxRateDetail, taxCalculationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingVendorAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingVendorAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingVendorAttendee != null) {
      return isFinishedCreatingVendorAttendee(this);
    }
    return orElse();
  }
}

abstract class _IsFinishedCreatingVendorAttendee implements AttendeeFormEvent {
  const factory _IsFinishedCreatingVendorAttendee(
      final UserProfileModel profile,
      final String currency,
      final CardItem? paymentMethod,
      final DiscountCode? discount,
      final StripeTaxRateDetails? taxRateDetail,
      final String? taxCalculationId) = _$IsFinishedCreatingVendorAttendeeImpl;

  UserProfileModel get profile;
  String get currency;
  CardItem? get paymentMethod;
  DiscountCode? get discount;
  StripeTaxRateDetails? get taxRateDetail;
  String? get taxCalculationId;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsFinishedCreatingVendorAttendeeImplCopyWith<
          _$IsFinishedCreatingVendorAttendeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFinishedCreatingAttendeeImplCopyWith<$Res> {
  factory _$$IsFinishedCreatingAttendeeImplCopyWith(
          _$IsFinishedCreatingAttendeeImpl value,
          $Res Function(_$IsFinishedCreatingAttendeeImpl) then) =
      __$$IsFinishedCreatingAttendeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserProfileModel profile,
      String amount,
      String currency,
      String? paymentMethod});

  $UserProfileModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$IsFinishedCreatingAttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$IsFinishedCreatingAttendeeImpl>
    implements _$$IsFinishedCreatingAttendeeImplCopyWith<$Res> {
  __$$IsFinishedCreatingAttendeeImplCopyWithImpl(
      _$IsFinishedCreatingAttendeeImpl _value,
      $Res Function(_$IsFinishedCreatingAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? amount = null,
    Object? currency = null,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$IsFinishedCreatingAttendeeImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get profile {
    return $UserProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$IsFinishedCreatingAttendeeImpl implements _IsFinishedCreatingAttendee {
  const _$IsFinishedCreatingAttendeeImpl(
      this.profile, this.amount, this.currency, this.paymentMethod);

  @override
  final UserProfileModel profile;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'AttendeeFormEvent.isFinishedCreatingAttendee(profile: $profile, amount: $amount, currency: $currency, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFinishedCreatingAttendeeImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, profile, amount, currency, paymentMethod);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFinishedCreatingAttendeeImplCopyWith<_$IsFinishedCreatingAttendeeImpl>
      get copyWith => __$$IsFinishedCreatingAttendeeImplCopyWithImpl<
          _$IsFinishedCreatingAttendeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingAttendee(profile, amount, currency, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingAttendee?.call(
        profile, amount, currency, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingAttendee != null) {
      return isFinishedCreatingAttendee(
          profile, amount, currency, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return isFinishedCreatingAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedCreatingAttendee != null) {
      return isFinishedCreatingAttendee(this);
    }
    return orElse();
  }
}

abstract class _IsFinishedCreatingAttendee implements AttendeeFormEvent {
  const factory _IsFinishedCreatingAttendee(
      final UserProfileModel profile,
      final String amount,
      final String currency,
      final String? paymentMethod) = _$IsFinishedCreatingAttendeeImpl;

  UserProfileModel get profile;
  String get amount;
  String get currency;
  String? get paymentMethod;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsFinishedCreatingAttendeeImplCopyWith<_$IsFinishedCreatingAttendeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFinishedInvitingAttendeeImplCopyWith<$Res> {
  factory _$$IsFinishedInvitingAttendeeImplCopyWith(
          _$IsFinishedInvitingAttendeeImpl value,
          $Res Function(_$IsFinishedInvitingAttendeeImpl) then) =
      __$$IsFinishedInvitingAttendeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsFinishedInvitingAttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res,
        _$IsFinishedInvitingAttendeeImpl>
    implements _$$IsFinishedInvitingAttendeeImplCopyWith<$Res> {
  __$$IsFinishedInvitingAttendeeImplCopyWithImpl(
      _$IsFinishedInvitingAttendeeImpl _value,
      $Res Function(_$IsFinishedInvitingAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsFinishedInvitingAttendeeImpl implements _IsFinishedInvitingAttendee {
  const _$IsFinishedInvitingAttendeeImpl();

  @override
  String toString() {
    return 'AttendeeFormEvent.isFinishedInvitingAttendee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFinishedInvitingAttendeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedInvitingAttendee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return isFinishedInvitingAttendee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedInvitingAttendee != null) {
      return isFinishedInvitingAttendee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return isFinishedInvitingAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return isFinishedInvitingAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (isFinishedInvitingAttendee != null) {
      return isFinishedInvitingAttendee(this);
    }
    return orElse();
  }
}

abstract class _IsFinishedInvitingAttendee implements AttendeeFormEvent {
  const factory _IsFinishedInvitingAttendee() =
      _$IsFinishedInvitingAttendeeImpl;
}

/// @nodoc
abstract class _$$DidDeleteAttendeeImplCopyWith<$Res> {
  factory _$$DidDeleteAttendeeImplCopyWith(_$DidDeleteAttendeeImpl value,
          $Res Function(_$DidDeleteAttendeeImpl) then) =
      __$$DidDeleteAttendeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DidDeleteAttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$DidDeleteAttendeeImpl>
    implements _$$DidDeleteAttendeeImplCopyWith<$Res> {
  __$$DidDeleteAttendeeImplCopyWithImpl(_$DidDeleteAttendeeImpl _value,
      $Res Function(_$DidDeleteAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DidDeleteAttendeeImpl implements _DidDeleteAttendee {
  const _$DidDeleteAttendeeImpl();

  @override
  String toString() {
    return 'AttendeeFormEvent.didDeleteAttendee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DidDeleteAttendeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return didDeleteAttendee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return didDeleteAttendee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didDeleteAttendee != null) {
      return didDeleteAttendee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return didDeleteAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return didDeleteAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didDeleteAttendee != null) {
      return didDeleteAttendee(this);
    }
    return orElse();
  }
}

abstract class _DidDeleteAttendee implements AttendeeFormEvent {
  const factory _DidDeleteAttendee() = _$DidDeleteAttendeeImpl;
}

/// @nodoc
abstract class _$$DidRejectAttendeesGroupImplCopyWith<$Res> {
  factory _$$DidRejectAttendeesGroupImplCopyWith(
          _$DidRejectAttendeesGroupImpl value,
          $Res Function(_$DidRejectAttendeesGroupImpl) then) =
      __$$DidRejectAttendeesGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VendorContactDetail> attendees});
}

/// @nodoc
class __$$DidRejectAttendeesGroupImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$DidRejectAttendeesGroupImpl>
    implements _$$DidRejectAttendeesGroupImplCopyWith<$Res> {
  __$$DidRejectAttendeesGroupImplCopyWithImpl(
      _$DidRejectAttendeesGroupImpl _value,
      $Res Function(_$DidRejectAttendeesGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
  }) {
    return _then(_$DidRejectAttendeesGroupImpl(
      null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<VendorContactDetail>,
    ));
  }
}

/// @nodoc

class _$DidRejectAttendeesGroupImpl implements _DidRejectAttendeesGroup {
  const _$DidRejectAttendeesGroupImpl(final List<VendorContactDetail> attendees)
      : _attendees = attendees;

  final List<VendorContactDetail> _attendees;
  @override
  List<VendorContactDetail> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.didRejectAttendeesGroup(attendees: $attendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DidRejectAttendeesGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_attendees));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DidRejectAttendeesGroupImplCopyWith<_$DidRejectAttendeesGroupImpl>
      get copyWith => __$$DidRejectAttendeesGroupImplCopyWithImpl<
          _$DidRejectAttendeesGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return didRejectAttendeesGroup(attendees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return didRejectAttendeesGroup?.call(attendees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didRejectAttendeesGroup != null) {
      return didRejectAttendeesGroup(attendees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return didRejectAttendeesGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return didRejectAttendeesGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didRejectAttendeesGroup != null) {
      return didRejectAttendeesGroup(this);
    }
    return orElse();
  }
}

abstract class _DidRejectAttendeesGroup implements AttendeeFormEvent {
  const factory _DidRejectAttendeesGroup(
          final List<VendorContactDetail> attendees) =
      _$DidRejectAttendeesGroupImpl;

  List<VendorContactDetail> get attendees;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DidRejectAttendeesGroupImplCopyWith<_$DidRejectAttendeesGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DidCancelAttendeesGroupImplCopyWith<$Res> {
  factory _$$DidCancelAttendeesGroupImplCopyWith(
          _$DidCancelAttendeesGroupImpl value,
          $Res Function(_$DidCancelAttendeesGroupImpl) then) =
      __$$DidCancelAttendeesGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VendorContactDetail> attendees});
}

/// @nodoc
class __$$DidCancelAttendeesGroupImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$DidCancelAttendeesGroupImpl>
    implements _$$DidCancelAttendeesGroupImplCopyWith<$Res> {
  __$$DidCancelAttendeesGroupImplCopyWithImpl(
      _$DidCancelAttendeesGroupImpl _value,
      $Res Function(_$DidCancelAttendeesGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
  }) {
    return _then(_$DidCancelAttendeesGroupImpl(
      null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<VendorContactDetail>,
    ));
  }
}

/// @nodoc

class _$DidCancelAttendeesGroupImpl implements _DidCancelAttendeesGroup {
  const _$DidCancelAttendeesGroupImpl(final List<VendorContactDetail> attendees)
      : _attendees = attendees;

  final List<VendorContactDetail> _attendees;
  @override
  List<VendorContactDetail> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.didCancelAttendeesGroup(attendees: $attendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DidCancelAttendeesGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_attendees));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DidCancelAttendeesGroupImplCopyWith<_$DidCancelAttendeesGroupImpl>
      get copyWith => __$$DidCancelAttendeesGroupImplCopyWithImpl<
          _$DidCancelAttendeesGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return didCancelAttendeesGroup(attendees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return didCancelAttendeesGroup?.call(attendees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didCancelAttendeesGroup != null) {
      return didCancelAttendeesGroup(attendees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return didCancelAttendeesGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return didCancelAttendeesGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didCancelAttendeesGroup != null) {
      return didCancelAttendeesGroup(this);
    }
    return orElse();
  }
}

abstract class _DidCancelAttendeesGroup implements AttendeeFormEvent {
  const factory _DidCancelAttendeesGroup(
          final List<VendorContactDetail> attendees) =
      _$DidCancelAttendeesGroupImpl;

  List<VendorContactDetail> get attendees;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DidCancelAttendeesGroupImplCopyWith<_$DidCancelAttendeesGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DidRefundAttendeesGroupImplCopyWith<$Res> {
  factory _$$DidRefundAttendeesGroupImplCopyWith(
          _$DidRefundAttendeesGroupImpl value,
          $Res Function(_$DidRefundAttendeesGroupImpl) then) =
      __$$DidRefundAttendeesGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VendorContactDetail> attendees});
}

/// @nodoc
class __$$DidRefundAttendeesGroupImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$DidRefundAttendeesGroupImpl>
    implements _$$DidRefundAttendeesGroupImplCopyWith<$Res> {
  __$$DidRefundAttendeesGroupImplCopyWithImpl(
      _$DidRefundAttendeesGroupImpl _value,
      $Res Function(_$DidRefundAttendeesGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
  }) {
    return _then(_$DidRefundAttendeesGroupImpl(
      null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<VendorContactDetail>,
    ));
  }
}

/// @nodoc

class _$DidRefundAttendeesGroupImpl implements _DidRefundAttendeesGroup {
  const _$DidRefundAttendeesGroupImpl(final List<VendorContactDetail> attendees)
      : _attendees = attendees;

  final List<VendorContactDetail> _attendees;
  @override
  List<VendorContactDetail> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.didRefundAttendeesGroup(attendees: $attendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DidRefundAttendeesGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_attendees));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DidRefundAttendeesGroupImplCopyWith<_$DidRefundAttendeesGroupImpl>
      get copyWith => __$$DidRefundAttendeesGroupImplCopyWithImpl<
          _$DidRefundAttendeesGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return didRefundAttendeesGroup(attendees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return didRefundAttendeesGroup?.call(attendees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didRefundAttendeesGroup != null) {
      return didRefundAttendeesGroup(attendees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return didRefundAttendeesGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return didRefundAttendeesGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didRefundAttendeesGroup != null) {
      return didRefundAttendeesGroup(this);
    }
    return orElse();
  }
}

abstract class _DidRefundAttendeesGroup implements AttendeeFormEvent {
  const factory _DidRefundAttendeesGroup(
          final List<VendorContactDetail> attendees) =
      _$DidRefundAttendeesGroupImpl;

  List<VendorContactDetail> get attendees;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DidRefundAttendeesGroupImplCopyWith<_$DidRefundAttendeesGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DidUpdateAttendeesGroupImplCopyWith<$Res> {
  factory _$$DidUpdateAttendeesGroupImplCopyWith(
          _$DidUpdateAttendeesGroupImpl value,
          $Res Function(_$DidUpdateAttendeesGroupImpl) then) =
      __$$DidUpdateAttendeesGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VendorContactDetail> attendees});
}

/// @nodoc
class __$$DidUpdateAttendeesGroupImplCopyWithImpl<$Res>
    extends _$AttendeeFormEventCopyWithImpl<$Res, _$DidUpdateAttendeesGroupImpl>
    implements _$$DidUpdateAttendeesGroupImplCopyWith<$Res> {
  __$$DidUpdateAttendeesGroupImplCopyWithImpl(
      _$DidUpdateAttendeesGroupImpl _value,
      $Res Function(_$DidUpdateAttendeesGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
  }) {
    return _then(_$DidUpdateAttendeesGroupImpl(
      null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<VendorContactDetail>,
    ));
  }
}

/// @nodoc

class _$DidUpdateAttendeesGroupImpl implements _DidUpdateAttendeesGroup {
  const _$DidUpdateAttendeesGroupImpl(final List<VendorContactDetail> attendees)
      : _attendees = attendees;

  final List<VendorContactDetail> _attendees;
  @override
  List<VendorContactDetail> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  String toString() {
    return 'AttendeeFormEvent.didConfirmAttendeesGroup(attendees: $attendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DidUpdateAttendeesGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_attendees));

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DidUpdateAttendeesGroupImplCopyWith<_$DidUpdateAttendeesGroupImpl>
      get copyWith => __$$DidUpdateAttendeesGroupImplCopyWithImpl<
          _$DidUpdateAttendeesGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)
        initializeAttendeeForm,
    required TResult Function(bool save) attendeeIsSaving,
    required TResult Function(ContactDetails contacts)
        updateAttendeeContactDetails,
    required TResult Function(List<CustomRuleOption> rules) updateCustomRules,
    required TResult Function(List<CheckInSetting> checkInSettings)
        updateCheckInSettings,
    required TResult Function(List<TicketItem> ticketItems)
        updateSelectedTicketOption,
    required TResult Function(UniqueId? instructorProfile)
        updateClassesInstructorForm,
    required TResult Function(UniqueId? merchVendorProfile)
        updateMerchantVendorProfileId,
    required TResult Function(VendorMerchantForm? form) updateVendorForm,
    required TResult Function(UserProfileModel currentUserProfile)
        checkTicketLimits,
    required TResult Function() createTicketsOnHold,
    required TResult Function(UserProfileModel currentUserProfile)
        checkVendorLimits,
    required TResult Function(String paymentIntentId)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingTicketAttendee,
    required TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)
        isFinishedCreatingVendorAttendee,
    required TResult Function(UserProfileModel profile, String amount,
            String currency, String? paymentMethod)
        isFinishedCreatingAttendee,
    required TResult Function() isFinishedInvitingAttendee,
    required TResult Function() didDeleteAttendee,
    required TResult Function(List<VendorContactDetail> attendees)
        didRejectAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didCancelAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didRefundAttendeesGroup,
    required TResult Function(List<VendorContactDetail> attendees)
        didConfirmAttendeesGroup,
  }) {
    return didConfirmAttendeesGroup(attendees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult? Function(bool save)? attendeeIsSaving,
    TResult? Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult? Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult? Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult? Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult? Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult? Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult? Function(VendorMerchantForm? form)? updateVendorForm,
    TResult? Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult? Function()? createTicketsOnHold,
    TResult? Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult? Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult? Function()? isFinishedInvitingAttendee,
    TResult? Function()? didDeleteAttendee,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult? Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
  }) {
    return didConfirmAttendeesGroup?.call(attendees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<AttendeeItem> initialAttendeeForm,
            Option<ReservationItem> initialReservation,
            Option<ActivityManagerForm> initialActivityForm,
            Option<UserProfileModel> initialResOwner)?
        initializeAttendeeForm,
    TResult Function(bool save)? attendeeIsSaving,
    TResult Function(ContactDetails contacts)? updateAttendeeContactDetails,
    TResult Function(List<CustomRuleOption> rules)? updateCustomRules,
    TResult Function(List<CheckInSetting> checkInSettings)?
        updateCheckInSettings,
    TResult Function(List<TicketItem> ticketItems)? updateSelectedTicketOption,
    TResult Function(UniqueId? instructorProfile)? updateClassesInstructorForm,
    TResult Function(UniqueId? merchVendorProfile)?
        updateMerchantVendorProfileId,
    TResult Function(VendorMerchantForm? form)? updateVendorForm,
    TResult Function(UserProfileModel currentUserProfile)? checkTicketLimits,
    TResult Function()? createTicketsOnHold,
    TResult Function(UserProfileModel currentUserProfile)? checkVendorLimits,
    TResult Function(String paymentIntentId)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingTicketAttendee,
    TResult Function(
            UserProfileModel profile,
            String currency,
            CardItem? paymentMethod,
            DiscountCode? discount,
            StripeTaxRateDetails? taxRateDetail,
            String? taxCalculationId)?
        isFinishedCreatingVendorAttendee,
    TResult Function(UserProfileModel profile, String amount, String currency,
            String? paymentMethod)?
        isFinishedCreatingAttendee,
    TResult Function()? isFinishedInvitingAttendee,
    TResult Function()? didDeleteAttendee,
    TResult Function(List<VendorContactDetail> attendees)?
        didRejectAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didCancelAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didRefundAttendeesGroup,
    TResult Function(List<VendorContactDetail> attendees)?
        didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didConfirmAttendeesGroup != null) {
      return didConfirmAttendeesGroup(attendees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeAttendeeForm value)
        initializeAttendeeForm,
    required TResult Function(_AttendeeIsSaving value) attendeeIsSaving,
    required TResult Function(_UpdateAttendeeContactDetails value)
        updateAttendeeContactDetails,
    required TResult Function(_SelectedCustomRuleChanged value)
        updateCustomRules,
    required TResult Function(_UpdateCheckInSettings value)
        updateCheckInSettings,
    required TResult Function(_UpdateSelectedTicketOption value)
        updateSelectedTicketOption,
    required TResult Function(_UpdateClassesInstructorForm value)
        updateClassesInstructorForm,
    required TResult Function(_UpdateMerchantVendorForm value)
        updateMerchantVendorProfileId,
    required TResult Function(_UpdateVendorForm value) updateVendorForm,
    required TResult Function(_CheckTicketLimits value) checkTicketLimits,
    required TResult Function(_CreateTicketsOnHold value) createTicketsOnHold,
    required TResult Function(_CheckVendorLimits value) checkVendorLimits,
    required TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)
        isFinishedCreatingTicketAttendeeWeb,
    required TResult Function(_IsFinishedCreatingTicketAttendee value)
        isFinishedCreatingTicketAttendee,
    required TResult Function(_IsFinishedCreatingVendorAttendee value)
        isFinishedCreatingVendorAttendee,
    required TResult Function(_IsFinishedCreatingAttendee value)
        isFinishedCreatingAttendee,
    required TResult Function(_IsFinishedInvitingAttendee value)
        isFinishedInvitingAttendee,
    required TResult Function(_DidDeleteAttendee value) didDeleteAttendee,
    required TResult Function(_DidRejectAttendeesGroup value)
        didRejectAttendeesGroup,
    required TResult Function(_DidCancelAttendeesGroup value)
        didCancelAttendeesGroup,
    required TResult Function(_DidRefundAttendeesGroup value)
        didRefundAttendeesGroup,
    required TResult Function(_DidUpdateAttendeesGroup value)
        didConfirmAttendeesGroup,
  }) {
    return didConfirmAttendeesGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult? Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult? Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult? Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult? Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult? Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult? Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult? Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult? Function(_UpdateVendorForm value)? updateVendorForm,
    TResult? Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult? Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult? Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult? Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult? Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult? Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult? Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult? Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult? Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult? Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult? Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult? Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult? Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
  }) {
    return didConfirmAttendeesGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeAttendeeForm value)? initializeAttendeeForm,
    TResult Function(_AttendeeIsSaving value)? attendeeIsSaving,
    TResult Function(_UpdateAttendeeContactDetails value)?
        updateAttendeeContactDetails,
    TResult Function(_SelectedCustomRuleChanged value)? updateCustomRules,
    TResult Function(_UpdateCheckInSettings value)? updateCheckInSettings,
    TResult Function(_UpdateSelectedTicketOption value)?
        updateSelectedTicketOption,
    TResult Function(_UpdateClassesInstructorForm value)?
        updateClassesInstructorForm,
    TResult Function(_UpdateMerchantVendorForm value)?
        updateMerchantVendorProfileId,
    TResult Function(_UpdateVendorForm value)? updateVendorForm,
    TResult Function(_CheckTicketLimits value)? checkTicketLimits,
    TResult Function(_CreateTicketsOnHold value)? createTicketsOnHold,
    TResult Function(_CheckVendorLimits value)? checkVendorLimits,
    TResult Function(_IsFinishedCreatingTicketAttendeeWeb value)?
        isFinishedCreatingTicketAttendeeWeb,
    TResult Function(_IsFinishedCreatingTicketAttendee value)?
        isFinishedCreatingTicketAttendee,
    TResult Function(_IsFinishedCreatingVendorAttendee value)?
        isFinishedCreatingVendorAttendee,
    TResult Function(_IsFinishedCreatingAttendee value)?
        isFinishedCreatingAttendee,
    TResult Function(_IsFinishedInvitingAttendee value)?
        isFinishedInvitingAttendee,
    TResult Function(_DidDeleteAttendee value)? didDeleteAttendee,
    TResult Function(_DidRejectAttendeesGroup value)? didRejectAttendeesGroup,
    TResult Function(_DidCancelAttendeesGroup value)? didCancelAttendeesGroup,
    TResult Function(_DidRefundAttendeesGroup value)? didRefundAttendeesGroup,
    TResult Function(_DidUpdateAttendeesGroup value)? didConfirmAttendeesGroup,
    required TResult orElse(),
  }) {
    if (didConfirmAttendeesGroup != null) {
      return didConfirmAttendeesGroup(this);
    }
    return orElse();
  }
}

abstract class _DidUpdateAttendeesGroup implements AttendeeFormEvent {
  const factory _DidUpdateAttendeesGroup(
          final List<VendorContactDetail> attendees) =
      _$DidUpdateAttendeesGroupImpl;

  List<VendorContactDetail> get attendees;

  /// Create a copy of AttendeeFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DidUpdateAttendeesGroupImplCopyWith<_$DidUpdateAttendeesGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendeeFormState {
  AttendeeItem get attendeeItem => throw _privateConstructorUsedError;
  ReservationItem get reservation => throw _privateConstructorUsedError;
  UserProfileModel get reservationOwner => throw _privateConstructorUsedError;
  ActivityManagerForm get activityForm => throw _privateConstructorUsedError;
  bool get isTermsConditionsAccepted => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<PaymentMethodValueFailure, StringStringItems>>
      get authPaymentFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<AttendeeFormFailure, Unit>>
      get authFailureOrSuccessOnHoldTicketOption =>
          throw _privateConstructorUsedError;
  Option<Either<AttendeeFormFailure, UserProfileModel>>
      get authFailureOrSuccessPaymentOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>
      get authVendorPaymentFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>>
      get authRefundFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<AttendeeFormFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendeeFormStateCopyWith<AttendeeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeFormStateCopyWith<$Res> {
  factory $AttendeeFormStateCopyWith(
          AttendeeFormState value, $Res Function(AttendeeFormState) then) =
      _$AttendeeFormStateCopyWithImpl<$Res, AttendeeFormState>;
  @useResult
  $Res call(
      {AttendeeItem attendeeItem,
      ReservationItem reservation,
      UserProfileModel reservationOwner,
      ActivityManagerForm activityForm,
      bool isTermsConditionsAccepted,
      bool isSubmitting,
      AutovalidateMode showErrorMessages,
      Option<Either<PaymentMethodValueFailure, StringStringItems>>
          authPaymentFailureOrSuccessOption,
      Option<Either<AttendeeFormFailure, Unit>>
          authFailureOrSuccessOnHoldTicketOption,
      Option<Either<AttendeeFormFailure, UserProfileModel>>
          authFailureOrSuccessPaymentOption,
      Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>
          authVendorPaymentFailureOrSuccessOption,
      Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>>
          authRefundFailureOrSuccessOption,
      Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOption});

  $AttendeeItemCopyWith<$Res> get attendeeItem;
  $ReservationItemCopyWith<$Res> get reservation;
  $UserProfileModelCopyWith<$Res> get reservationOwner;
  $ActivityManagerFormCopyWith<$Res> get activityForm;
}

/// @nodoc
class _$AttendeeFormStateCopyWithImpl<$Res, $Val extends AttendeeFormState>
    implements $AttendeeFormStateCopyWith<$Res> {
  _$AttendeeFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendeeItem = null,
    Object? reservation = null,
    Object? reservationOwner = null,
    Object? activityForm = null,
    Object? isTermsConditionsAccepted = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authPaymentFailureOrSuccessOption = null,
    Object? authFailureOrSuccessOnHoldTicketOption = null,
    Object? authFailureOrSuccessPaymentOption = null,
    Object? authVendorPaymentFailureOrSuccessOption = null,
    Object? authRefundFailureOrSuccessOption = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      attendeeItem: null == attendeeItem
          ? _value.attendeeItem
          : attendeeItem // ignore: cast_nullable_to_non_nullable
              as AttendeeItem,
      reservation: null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationItem,
      reservationOwner: null == reservationOwner
          ? _value.reservationOwner
          : reservationOwner // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      activityForm: null == activityForm
          ? _value.activityForm
          : activityForm // ignore: cast_nullable_to_non_nullable
              as ActivityManagerForm,
      isTermsConditionsAccepted: null == isTermsConditionsAccepted
          ? _value.isTermsConditionsAccepted
          : isTermsConditionsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authPaymentFailureOrSuccessOption: null ==
              authPaymentFailureOrSuccessOption
          ? _value.authPaymentFailureOrSuccessOption
          : authPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentMethodValueFailure, StringStringItems>>,
      authFailureOrSuccessOnHoldTicketOption: null ==
              authFailureOrSuccessOnHoldTicketOption
          ? _value.authFailureOrSuccessOnHoldTicketOption
          : authFailureOrSuccessOnHoldTicketOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
      authFailureOrSuccessPaymentOption: null ==
              authFailureOrSuccessPaymentOption
          ? _value.authFailureOrSuccessPaymentOption
          : authFailureOrSuccessPaymentOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, UserProfileModel>>,
      authVendorPaymentFailureOrSuccessOption: null ==
              authVendorPaymentFailureOrSuccessOption
          ? _value.authVendorPaymentFailureOrSuccessOption
          : authVendorPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>,
      authRefundFailureOrSuccessOption: null == authRefundFailureOrSuccessOption
          ? _value.authRefundFailureOrSuccessOption
          : authRefundFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<PaymentMethodValueFailure, List<StripeRefundModel>>>,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeItemCopyWith<$Res> get attendeeItem {
    return $AttendeeItemCopyWith<$Res>(_value.attendeeItem, (value) {
      return _then(_value.copyWith(attendeeItem: value) as $Val);
    });
  }

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReservationItemCopyWith<$Res> get reservation {
    return $ReservationItemCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value) as $Val);
    });
  }

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get reservationOwner {
    return $UserProfileModelCopyWith<$Res>(_value.reservationOwner, (value) {
      return _then(_value.copyWith(reservationOwner: value) as $Val);
    });
  }

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityManagerFormCopyWith<$Res> get activityForm {
    return $ActivityManagerFormCopyWith<$Res>(_value.activityForm, (value) {
      return _then(_value.copyWith(activityForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendeeFormStateImplCopyWith<$Res>
    implements $AttendeeFormStateCopyWith<$Res> {
  factory _$$AttendeeFormStateImplCopyWith(_$AttendeeFormStateImpl value,
          $Res Function(_$AttendeeFormStateImpl) then) =
      __$$AttendeeFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AttendeeItem attendeeItem,
      ReservationItem reservation,
      UserProfileModel reservationOwner,
      ActivityManagerForm activityForm,
      bool isTermsConditionsAccepted,
      bool isSubmitting,
      AutovalidateMode showErrorMessages,
      Option<Either<PaymentMethodValueFailure, StringStringItems>>
          authPaymentFailureOrSuccessOption,
      Option<Either<AttendeeFormFailure, Unit>>
          authFailureOrSuccessOnHoldTicketOption,
      Option<Either<AttendeeFormFailure, UserProfileModel>>
          authFailureOrSuccessPaymentOption,
      Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>
          authVendorPaymentFailureOrSuccessOption,
      Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>>
          authRefundFailureOrSuccessOption,
      Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOption});

  @override
  $AttendeeItemCopyWith<$Res> get attendeeItem;
  @override
  $ReservationItemCopyWith<$Res> get reservation;
  @override
  $UserProfileModelCopyWith<$Res> get reservationOwner;
  @override
  $ActivityManagerFormCopyWith<$Res> get activityForm;
}

/// @nodoc
class __$$AttendeeFormStateImplCopyWithImpl<$Res>
    extends _$AttendeeFormStateCopyWithImpl<$Res, _$AttendeeFormStateImpl>
    implements _$$AttendeeFormStateImplCopyWith<$Res> {
  __$$AttendeeFormStateImplCopyWithImpl(_$AttendeeFormStateImpl _value,
      $Res Function(_$AttendeeFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendeeItem = null,
    Object? reservation = null,
    Object? reservationOwner = null,
    Object? activityForm = null,
    Object? isTermsConditionsAccepted = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? authPaymentFailureOrSuccessOption = null,
    Object? authFailureOrSuccessOnHoldTicketOption = null,
    Object? authFailureOrSuccessPaymentOption = null,
    Object? authVendorPaymentFailureOrSuccessOption = null,
    Object? authRefundFailureOrSuccessOption = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$AttendeeFormStateImpl(
      attendeeItem: null == attendeeItem
          ? _value.attendeeItem
          : attendeeItem // ignore: cast_nullable_to_non_nullable
              as AttendeeItem,
      reservation: null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationItem,
      reservationOwner: null == reservationOwner
          ? _value.reservationOwner
          : reservationOwner // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      activityForm: null == activityForm
          ? _value.activityForm
          : activityForm // ignore: cast_nullable_to_non_nullable
              as ActivityManagerForm,
      isTermsConditionsAccepted: null == isTermsConditionsAccepted
          ? _value.isTermsConditionsAccepted
          : isTermsConditionsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authPaymentFailureOrSuccessOption: null ==
              authPaymentFailureOrSuccessOption
          ? _value.authPaymentFailureOrSuccessOption
          : authPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentMethodValueFailure, StringStringItems>>,
      authFailureOrSuccessOnHoldTicketOption: null ==
              authFailureOrSuccessOnHoldTicketOption
          ? _value.authFailureOrSuccessOnHoldTicketOption
          : authFailureOrSuccessOnHoldTicketOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
      authFailureOrSuccessPaymentOption: null ==
              authFailureOrSuccessPaymentOption
          ? _value.authFailureOrSuccessPaymentOption
          : authFailureOrSuccessPaymentOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, UserProfileModel>>,
      authVendorPaymentFailureOrSuccessOption: null ==
              authVendorPaymentFailureOrSuccessOption
          ? _value.authVendorPaymentFailureOrSuccessOption
          : authVendorPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>,
      authRefundFailureOrSuccessOption: null == authRefundFailureOrSuccessOption
          ? _value.authRefundFailureOrSuccessOption
          : authRefundFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<PaymentMethodValueFailure, List<StripeRefundModel>>>,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AttendeeFormStateImpl extends _AttendeeFormState {
  _$AttendeeFormStateImpl(
      {required this.attendeeItem,
      required this.reservation,
      required this.reservationOwner,
      required this.activityForm,
      required this.isTermsConditionsAccepted,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authPaymentFailureOrSuccessOption,
      required this.authFailureOrSuccessOnHoldTicketOption,
      required this.authFailureOrSuccessPaymentOption,
      required this.authVendorPaymentFailureOrSuccessOption,
      required this.authRefundFailureOrSuccessOption,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final AttendeeItem attendeeItem;
  @override
  final ReservationItem reservation;
  @override
  final UserProfileModel reservationOwner;
  @override
  final ActivityManagerForm activityForm;
  @override
  final bool isTermsConditionsAccepted;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final Option<Either<PaymentMethodValueFailure, StringStringItems>>
      authPaymentFailureOrSuccessOption;
  @override
  final Option<Either<AttendeeFormFailure, Unit>>
      authFailureOrSuccessOnHoldTicketOption;
  @override
  final Option<Either<AttendeeFormFailure, UserProfileModel>>
      authFailureOrSuccessPaymentOption;
  @override
  final Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>
      authVendorPaymentFailureOrSuccessOption;
  @override
  final Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>>
      authRefundFailureOrSuccessOption;
  @override
  final Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AttendeeFormState(attendeeItem: $attendeeItem, reservation: $reservation, reservationOwner: $reservationOwner, activityForm: $activityForm, isTermsConditionsAccepted: $isTermsConditionsAccepted, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authPaymentFailureOrSuccessOption: $authPaymentFailureOrSuccessOption, authFailureOrSuccessOnHoldTicketOption: $authFailureOrSuccessOnHoldTicketOption, authFailureOrSuccessPaymentOption: $authFailureOrSuccessPaymentOption, authVendorPaymentFailureOrSuccessOption: $authVendorPaymentFailureOrSuccessOption, authRefundFailureOrSuccessOption: $authRefundFailureOrSuccessOption, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeFormStateImpl &&
            (identical(other.attendeeItem, attendeeItem) ||
                other.attendeeItem == attendeeItem) &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            (identical(other.reservationOwner, reservationOwner) ||
                other.reservationOwner == reservationOwner) &&
            (identical(other.activityForm, activityForm) ||
                other.activityForm == activityForm) &&
            (identical(other.isTermsConditionsAccepted, isTermsConditionsAccepted) ||
                other.isTermsConditionsAccepted == isTermsConditionsAccepted) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.authPaymentFailureOrSuccessOption, authPaymentFailureOrSuccessOption) ||
                other.authPaymentFailureOrSuccessOption ==
                    authPaymentFailureOrSuccessOption) &&
            (identical(other.authFailureOrSuccessOnHoldTicketOption,
                    authFailureOrSuccessOnHoldTicketOption) ||
                other.authFailureOrSuccessOnHoldTicketOption ==
                    authFailureOrSuccessOnHoldTicketOption) &&
            (identical(other.authFailureOrSuccessPaymentOption,
                    authFailureOrSuccessPaymentOption) ||
                other.authFailureOrSuccessPaymentOption ==
                    authFailureOrSuccessPaymentOption) &&
            (identical(other.authVendorPaymentFailureOrSuccessOption,
                    authVendorPaymentFailureOrSuccessOption) ||
                other.authVendorPaymentFailureOrSuccessOption ==
                    authVendorPaymentFailureOrSuccessOption) &&
            (identical(other.authRefundFailureOrSuccessOption, authRefundFailureOrSuccessOption) ||
                other.authRefundFailureOrSuccessOption ==
                    authRefundFailureOrSuccessOption) &&
            (identical(
                    other.authFailureOrSuccessOption, authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption == authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      attendeeItem,
      reservation,
      reservationOwner,
      activityForm,
      isTermsConditionsAccepted,
      isSubmitting,
      showErrorMessages,
      authPaymentFailureOrSuccessOption,
      authFailureOrSuccessOnHoldTicketOption,
      authFailureOrSuccessPaymentOption,
      authVendorPaymentFailureOrSuccessOption,
      authRefundFailureOrSuccessOption,
      authFailureOrSuccessOption);

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeFormStateImplCopyWith<_$AttendeeFormStateImpl> get copyWith =>
      __$$AttendeeFormStateImplCopyWithImpl<_$AttendeeFormStateImpl>(
          this, _$identity);
}

abstract class _AttendeeFormState extends AttendeeFormState {
  factory _AttendeeFormState(
      {required final AttendeeItem attendeeItem,
      required final ReservationItem reservation,
      required final UserProfileModel reservationOwner,
      required final ActivityManagerForm activityForm,
      required final bool isTermsConditionsAccepted,
      required final bool isSubmitting,
      required final AutovalidateMode showErrorMessages,
      required final Option<
              Either<PaymentMethodValueFailure, StringStringItems>>
          authPaymentFailureOrSuccessOption,
      required final Option<Either<AttendeeFormFailure, Unit>>
          authFailureOrSuccessOnHoldTicketOption,
      required final Option<Either<AttendeeFormFailure, UserProfileModel>>
          authFailureOrSuccessPaymentOption,
      required final Option<
              Either<PaymentMethodValueFailure, List<PaymentIntent>>>
          authVendorPaymentFailureOrSuccessOption,
      required final Option<
              Either<PaymentMethodValueFailure, List<StripeRefundModel>>>
          authRefundFailureOrSuccessOption,
      required final Option<Either<AttendeeFormFailure, Unit>>
          authFailureOrSuccessOption}) = _$AttendeeFormStateImpl;
  _AttendeeFormState._() : super._();

  @override
  AttendeeItem get attendeeItem;
  @override
  ReservationItem get reservation;
  @override
  UserProfileModel get reservationOwner;
  @override
  ActivityManagerForm get activityForm;
  @override
  bool get isTermsConditionsAccepted;
  @override
  bool get isSubmitting;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  Option<Either<PaymentMethodValueFailure, StringStringItems>>
      get authPaymentFailureOrSuccessOption;
  @override
  Option<Either<AttendeeFormFailure, Unit>>
      get authFailureOrSuccessOnHoldTicketOption;
  @override
  Option<Either<AttendeeFormFailure, UserProfileModel>>
      get authFailureOrSuccessPaymentOption;
  @override
  Option<Either<PaymentMethodValueFailure, List<PaymentIntent>>>
      get authVendorPaymentFailureOrSuccessOption;
  @override
  Option<Either<PaymentMethodValueFailure, List<StripeRefundModel>>>
      get authRefundFailureOrSuccessOption;
  @override
  Option<Either<AttendeeFormFailure, Unit>> get authFailureOrSuccessOption;

  /// Create a copy of AttendeeFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeFormStateImplCopyWith<_$AttendeeFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
