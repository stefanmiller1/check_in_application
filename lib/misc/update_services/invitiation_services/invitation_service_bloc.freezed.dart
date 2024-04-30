// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvitationFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationFormEventCopyWith<$Res> {
  factory $InvitationFormEventCopyWith(
          InvitationFormEvent value, $Res Function(InvitationFormEvent) then) =
      _$InvitationFormEventCopyWithImpl<$Res, InvitationFormEvent>;
}

/// @nodoc
class _$InvitationFormEventCopyWithImpl<$Res, $Val extends InvitationFormEvent>
    implements $InvitationFormEventCopyWith<$Res> {
  _$InvitationFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedInviteFormImplCopyWith<$Res> {
  factory _$$InitializedInviteFormImplCopyWith(
          _$InitializedInviteFormImpl value,
          $Res Function(_$InitializedInviteFormImpl) then) =
      __$$InitializedInviteFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<List<ContactDetails>> initialContacts});
}

/// @nodoc
class __$$InitializedInviteFormImplCopyWithImpl<$Res>
    extends _$InvitationFormEventCopyWithImpl<$Res, _$InitializedInviteFormImpl>
    implements _$$InitializedInviteFormImplCopyWith<$Res> {
  __$$InitializedInviteFormImplCopyWithImpl(_$InitializedInviteFormImpl _value,
      $Res Function(_$InitializedInviteFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialContacts = null,
  }) {
    return _then(_$InitializedInviteFormImpl(
      null == initialContacts
          ? _value.initialContacts
          : initialContacts // ignore: cast_nullable_to_non_nullable
              as Option<List<ContactDetails>>,
    ));
  }
}

/// @nodoc

class _$InitializedInviteFormImpl implements _InitializedInviteForm {
  const _$InitializedInviteFormImpl(this.initialContacts);

  @override
  final Option<List<ContactDetails>> initialContacts;

  @override
  String toString() {
    return 'InvitationFormEvent.initializedInviteForm(initialContacts: $initialContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedInviteFormImpl &&
            (identical(other.initialContacts, initialContacts) ||
                other.initialContacts == initialContacts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialContacts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedInviteFormImplCopyWith<_$InitializedInviteFormImpl>
      get copyWith => __$$InitializedInviteFormImplCopyWithImpl<
          _$InitializedInviteFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) {
    return initializedInviteForm(initialContacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) {
    return initializedInviteForm?.call(initialContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (initializedInviteForm != null) {
      return initializedInviteForm(initialContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) {
    return initializedInviteForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) {
    return initializedInviteForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (initializedInviteForm != null) {
      return initializedInviteForm(this);
    }
    return orElse();
  }
}

abstract class _InitializedInviteForm implements InvitationFormEvent {
  const factory _InitializedInviteForm(
          final Option<List<ContactDetails>> initialContacts) =
      _$InitializedInviteFormImpl;

  Option<List<ContactDetails>> get initialContacts;
  @JsonKey(ignore: true)
  _$$InitializedInviteFormImplCopyWith<_$InitializedInviteFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteIsSubmittingChangedImplCopyWith<$Res> {
  factory _$$InviteIsSubmittingChangedImplCopyWith(
          _$InviteIsSubmittingChangedImpl value,
          $Res Function(_$InviteIsSubmittingChangedImpl) then) =
      __$$InviteIsSubmittingChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class __$$InviteIsSubmittingChangedImplCopyWithImpl<$Res>
    extends _$InvitationFormEventCopyWithImpl<$Res,
        _$InviteIsSubmittingChangedImpl>
    implements _$$InviteIsSubmittingChangedImplCopyWith<$Res> {
  __$$InviteIsSubmittingChangedImplCopyWithImpl(
      _$InviteIsSubmittingChangedImpl _value,
      $Res Function(_$InviteIsSubmittingChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditing = null,
  }) {
    return _then(_$InviteIsSubmittingChangedImpl(
      null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InviteIsSubmittingChangedImpl implements _InviteIsSubmittingChanged {
  const _$InviteIsSubmittingChangedImpl(this.isEditing);

  @override
  final bool isEditing;

  @override
  String toString() {
    return 'InvitationFormEvent.inviteIsSubmittingChanged(isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteIsSubmittingChangedImpl &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteIsSubmittingChangedImplCopyWith<_$InviteIsSubmittingChangedImpl>
      get copyWith => __$$InviteIsSubmittingChangedImplCopyWithImpl<
          _$InviteIsSubmittingChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) {
    return inviteIsSubmittingChanged(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) {
    return inviteIsSubmittingChanged?.call(isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (inviteIsSubmittingChanged != null) {
      return inviteIsSubmittingChanged(isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) {
    return inviteIsSubmittingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) {
    return inviteIsSubmittingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (inviteIsSubmittingChanged != null) {
      return inviteIsSubmittingChanged(this);
    }
    return orElse();
  }
}

abstract class _InviteIsSubmittingChanged implements InvitationFormEvent {
  const factory _InviteIsSubmittingChanged(final bool isEditing) =
      _$InviteIsSubmittingChangedImpl;

  bool get isEditing;
  @JsonKey(ignore: true)
  _$$InviteIsSubmittingChangedImplCopyWith<_$InviteIsSubmittingChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInviteListImplCopyWith<$Res> {
  factory _$$UpdateInviteListImplCopyWith(_$UpdateInviteListImpl value,
          $Res Function(_$UpdateInviteListImpl) then) =
      __$$UpdateInviteListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactDetails> contacts});
}

/// @nodoc
class __$$UpdateInviteListImplCopyWithImpl<$Res>
    extends _$InvitationFormEventCopyWithImpl<$Res, _$UpdateInviteListImpl>
    implements _$$UpdateInviteListImplCopyWith<$Res> {
  __$$UpdateInviteListImplCopyWithImpl(_$UpdateInviteListImpl _value,
      $Res Function(_$UpdateInviteListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$UpdateInviteListImpl(
      null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactDetails>,
    ));
  }
}

/// @nodoc

class _$UpdateInviteListImpl implements _UpdateInviteList {
  const _$UpdateInviteListImpl(final List<ContactDetails> contacts)
      : _contacts = contacts;

  final List<ContactDetails> _contacts;
  @override
  List<ContactDetails> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'InvitationFormEvent.updateInviteList(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInviteListImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInviteListImplCopyWith<_$UpdateInviteListImpl> get copyWith =>
      __$$UpdateInviteListImplCopyWithImpl<_$UpdateInviteListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) {
    return updateInviteList(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) {
    return updateInviteList?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (updateInviteList != null) {
      return updateInviteList(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) {
    return updateInviteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) {
    return updateInviteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (updateInviteList != null) {
      return updateInviteList(this);
    }
    return orElse();
  }
}

abstract class _UpdateInviteList implements InvitationFormEvent {
  const factory _UpdateInviteList(final List<ContactDetails> contacts) =
      _$UpdateInviteListImpl;

  List<ContactDetails> get contacts;
  @JsonKey(ignore: true)
  _$$UpdateInviteListImplCopyWith<_$UpdateInviteListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedSubmittingReservationInviteImplCopyWith<$Res> {
  factory _$$FinishedSubmittingReservationInviteImplCopyWith(
          _$FinishedSubmittingReservationInviteImpl value,
          $Res Function(_$FinishedSubmittingReservationInviteImpl) then) =
      __$$FinishedSubmittingReservationInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String reservationId,
      ActivityManagerForm? activityForm,
      List<AttendeeItem> attendees});

  $ActivityManagerFormCopyWith<$Res>? get activityForm;
}

/// @nodoc
class __$$FinishedSubmittingReservationInviteImplCopyWithImpl<$Res>
    extends _$InvitationFormEventCopyWithImpl<$Res,
        _$FinishedSubmittingReservationInviteImpl>
    implements _$$FinishedSubmittingReservationInviteImplCopyWith<$Res> {
  __$$FinishedSubmittingReservationInviteImplCopyWithImpl(
      _$FinishedSubmittingReservationInviteImpl _value,
      $Res Function(_$FinishedSubmittingReservationInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
    Object? activityForm = freezed,
    Object? attendees = null,
  }) {
    return _then(_$FinishedSubmittingReservationInviteImpl(
      null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == activityForm
          ? _value.activityForm
          : activityForm // ignore: cast_nullable_to_non_nullable
              as ActivityManagerForm?,
      null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<AttendeeItem>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityManagerFormCopyWith<$Res>? get activityForm {
    if (_value.activityForm == null) {
      return null;
    }

    return $ActivityManagerFormCopyWith<$Res>(_value.activityForm!, (value) {
      return _then(_value.copyWith(activityForm: value));
    });
  }
}

/// @nodoc

class _$FinishedSubmittingReservationInviteImpl
    implements _FinishedSubmittingReservationInvite {
  const _$FinishedSubmittingReservationInviteImpl(
      this.reservationId, this.activityForm, final List<AttendeeItem> attendees)
      : _attendees = attendees;

  @override
  final String reservationId;
  @override
  final ActivityManagerForm? activityForm;
  final List<AttendeeItem> _attendees;
  @override
  List<AttendeeItem> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  String toString() {
    return 'InvitationFormEvent.finishedSubmittingReservationInvite(reservationId: $reservationId, activityForm: $activityForm, attendees: $attendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedSubmittingReservationInviteImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            (identical(other.activityForm, activityForm) ||
                other.activityForm == activityForm) &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationId, activityForm,
      const DeepCollectionEquality().hash(_attendees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedSubmittingReservationInviteImplCopyWith<
          _$FinishedSubmittingReservationInviteImpl>
      get copyWith => __$$FinishedSubmittingReservationInviteImplCopyWithImpl<
          _$FinishedSubmittingReservationInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingReservationInvite(
        reservationId, activityForm, attendees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingReservationInvite?.call(
        reservationId, activityForm, attendees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (finishedSubmittingReservationInvite != null) {
      return finishedSubmittingReservationInvite(
          reservationId, activityForm, attendees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingReservationInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingReservationInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (finishedSubmittingReservationInvite != null) {
      return finishedSubmittingReservationInvite(this);
    }
    return orElse();
  }
}

abstract class _FinishedSubmittingReservationInvite
    implements InvitationFormEvent {
  const factory _FinishedSubmittingReservationInvite(
          final String reservationId,
          final ActivityManagerForm? activityForm,
          final List<AttendeeItem> attendees) =
      _$FinishedSubmittingReservationInviteImpl;

  String get reservationId;
  ActivityManagerForm? get activityForm;
  List<AttendeeItem> get attendees;
  @JsonKey(ignore: true)
  _$$FinishedSubmittingReservationInviteImplCopyWith<
          _$FinishedSubmittingReservationInviteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedSubmittingInviteImplCopyWith<$Res> {
  factory _$$FinishedSubmittingInviteImplCopyWith(
          _$FinishedSubmittingInviteImpl value,
          $Res Function(_$FinishedSubmittingInviteImpl) then) =
      __$$FinishedSubmittingInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reservationId, InvitationType inviteType});
}

/// @nodoc
class __$$FinishedSubmittingInviteImplCopyWithImpl<$Res>
    extends _$InvitationFormEventCopyWithImpl<$Res,
        _$FinishedSubmittingInviteImpl>
    implements _$$FinishedSubmittingInviteImplCopyWith<$Res> {
  __$$FinishedSubmittingInviteImplCopyWithImpl(
      _$FinishedSubmittingInviteImpl _value,
      $Res Function(_$FinishedSubmittingInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
    Object? inviteType = null,
  }) {
    return _then(_$FinishedSubmittingInviteImpl(
      null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
      null == inviteType
          ? _value.inviteType
          : inviteType // ignore: cast_nullable_to_non_nullable
              as InvitationType,
    ));
  }
}

/// @nodoc

class _$FinishedSubmittingInviteImpl implements _FinishedSubmittingInvite {
  const _$FinishedSubmittingInviteImpl(this.reservationId, this.inviteType);

  @override
  final String reservationId;
  @override
  final InvitationType inviteType;

  @override
  String toString() {
    return 'InvitationFormEvent.finishedSubmittingInvite(reservationId: $reservationId, inviteType: $inviteType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedSubmittingInviteImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            (identical(other.inviteType, inviteType) ||
                other.inviteType == inviteType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationId, inviteType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedSubmittingInviteImplCopyWith<_$FinishedSubmittingInviteImpl>
      get copyWith => __$$FinishedSubmittingInviteImplCopyWithImpl<
          _$FinishedSubmittingInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingInvite(reservationId, inviteType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingInvite?.call(reservationId, inviteType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (finishedSubmittingInvite != null) {
      return finishedSubmittingInvite(reservationId, inviteType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) {
    return finishedSubmittingInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (finishedSubmittingInvite != null) {
      return finishedSubmittingInvite(this);
    }
    return orElse();
  }
}

abstract class _FinishedSubmittingInvite implements InvitationFormEvent {
  const factory _FinishedSubmittingInvite(
          final String reservationId, final InvitationType inviteType) =
      _$FinishedSubmittingInviteImpl;

  String get reservationId;
  InvitationType get inviteType;
  @JsonKey(ignore: true)
  _$$FinishedSubmittingInviteImplCopyWith<_$FinishedSubmittingInviteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedRemovingAttendeeImplCopyWith<$Res> {
  factory _$$FinishedRemovingAttendeeImplCopyWith(
          _$FinishedRemovingAttendeeImpl value,
          $Res Function(_$FinishedRemovingAttendeeImpl) then) =
      __$$FinishedRemovingAttendeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reservationId, UniqueId selectedAttendeeId});
}

/// @nodoc
class __$$FinishedRemovingAttendeeImplCopyWithImpl<$Res>
    extends _$InvitationFormEventCopyWithImpl<$Res,
        _$FinishedRemovingAttendeeImpl>
    implements _$$FinishedRemovingAttendeeImplCopyWith<$Res> {
  __$$FinishedRemovingAttendeeImplCopyWithImpl(
      _$FinishedRemovingAttendeeImpl _value,
      $Res Function(_$FinishedRemovingAttendeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
    Object? selectedAttendeeId = null,
  }) {
    return _then(_$FinishedRemovingAttendeeImpl(
      null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedAttendeeId
          ? _value.selectedAttendeeId
          : selectedAttendeeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$FinishedRemovingAttendeeImpl implements _FinishedRemovingAttendee {
  const _$FinishedRemovingAttendeeImpl(
      this.reservationId, this.selectedAttendeeId);

  @override
  final String reservationId;
  @override
  final UniqueId selectedAttendeeId;

  @override
  String toString() {
    return 'InvitationFormEvent.finishedRemovingAttendee(reservationId: $reservationId, selectedAttendeeId: $selectedAttendeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedRemovingAttendeeImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            (identical(other.selectedAttendeeId, selectedAttendeeId) ||
                other.selectedAttendeeId == selectedAttendeeId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, reservationId, selectedAttendeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedRemovingAttendeeImplCopyWith<_$FinishedRemovingAttendeeImpl>
      get copyWith => __$$FinishedRemovingAttendeeImplCopyWithImpl<
          _$FinishedRemovingAttendeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<List<ContactDetails>> initialContacts)
        initializedInviteForm,
    required TResult Function(bool isEditing) inviteIsSubmittingChanged,
    required TResult Function(List<ContactDetails> contacts) updateInviteList,
    required TResult Function(String reservationId,
            ActivityManagerForm? activityForm, List<AttendeeItem> attendees)
        finishedSubmittingReservationInvite,
    required TResult Function(String reservationId, InvitationType inviteType)
        finishedSubmittingInvite,
    required TResult Function(String reservationId, UniqueId selectedAttendeeId)
        finishedRemovingAttendee,
  }) {
    return finishedRemovingAttendee(reservationId, selectedAttendeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult? Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult? Function(List<ContactDetails> contacts)? updateInviteList,
    TResult? Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult? Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult? Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
  }) {
    return finishedRemovingAttendee?.call(reservationId, selectedAttendeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<List<ContactDetails>> initialContacts)?
        initializedInviteForm,
    TResult Function(bool isEditing)? inviteIsSubmittingChanged,
    TResult Function(List<ContactDetails> contacts)? updateInviteList,
    TResult Function(String reservationId, ActivityManagerForm? activityForm,
            List<AttendeeItem> attendees)?
        finishedSubmittingReservationInvite,
    TResult Function(String reservationId, InvitationType inviteType)?
        finishedSubmittingInvite,
    TResult Function(String reservationId, UniqueId selectedAttendeeId)?
        finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (finishedRemovingAttendee != null) {
      return finishedRemovingAttendee(reservationId, selectedAttendeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializedInviteForm value)
        initializedInviteForm,
    required TResult Function(_InviteIsSubmittingChanged value)
        inviteIsSubmittingChanged,
    required TResult Function(_UpdateInviteList value) updateInviteList,
    required TResult Function(_FinishedSubmittingReservationInvite value)
        finishedSubmittingReservationInvite,
    required TResult Function(_FinishedSubmittingInvite value)
        finishedSubmittingInvite,
    required TResult Function(_FinishedRemovingAttendee value)
        finishedRemovingAttendee,
  }) {
    return finishedRemovingAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult? Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult? Function(_UpdateInviteList value)? updateInviteList,
    TResult? Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult? Function(_FinishedSubmittingInvite value)?
        finishedSubmittingInvite,
    TResult? Function(_FinishedRemovingAttendee value)?
        finishedRemovingAttendee,
  }) {
    return finishedRemovingAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializedInviteForm value)? initializedInviteForm,
    TResult Function(_InviteIsSubmittingChanged value)?
        inviteIsSubmittingChanged,
    TResult Function(_UpdateInviteList value)? updateInviteList,
    TResult Function(_FinishedSubmittingReservationInvite value)?
        finishedSubmittingReservationInvite,
    TResult Function(_FinishedSubmittingInvite value)? finishedSubmittingInvite,
    TResult Function(_FinishedRemovingAttendee value)? finishedRemovingAttendee,
    required TResult orElse(),
  }) {
    if (finishedRemovingAttendee != null) {
      return finishedRemovingAttendee(this);
    }
    return orElse();
  }
}

abstract class _FinishedRemovingAttendee implements InvitationFormEvent {
  const factory _FinishedRemovingAttendee(
          final String reservationId, final UniqueId selectedAttendeeId) =
      _$FinishedRemovingAttendeeImpl;

  String get reservationId;
  UniqueId get selectedAttendeeId;
  @JsonKey(ignore: true)
  _$$FinishedRemovingAttendeeImplCopyWith<_$FinishedRemovingAttendeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvitationFormState {
  Iterable<ContactDetails> get inviteList => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AttendeeFormFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<AttendeeFormFailure, Unit>>
      get authFailureRemoveAttendeeOrSuccess =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvitationFormStateCopyWith<InvitationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationFormStateCopyWith<$Res> {
  factory $InvitationFormStateCopyWith(
          InvitationFormState value, $Res Function(InvitationFormState) then) =
      _$InvitationFormStateCopyWithImpl<$Res, InvitationFormState>;
  @useResult
  $Res call(
      {Iterable<ContactDetails> inviteList,
      bool isSubmitting,
      Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccess,
      Option<Either<AttendeeFormFailure, Unit>>
          authFailureRemoveAttendeeOrSuccess});
}

/// @nodoc
class _$InvitationFormStateCopyWithImpl<$Res, $Val extends InvitationFormState>
    implements $InvitationFormStateCopyWith<$Res> {
  _$InvitationFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteList = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccess = null,
    Object? authFailureRemoveAttendeeOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      inviteList: null == inviteList
          ? _value.inviteList
          : inviteList // ignore: cast_nullable_to_non_nullable
              as Iterable<ContactDetails>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
      authFailureRemoveAttendeeOrSuccess: null ==
              authFailureRemoveAttendeeOrSuccess
          ? _value.authFailureRemoveAttendeeOrSuccess
          : authFailureRemoveAttendeeOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvitationFormStateImplCopyWith<$Res>
    implements $InvitationFormStateCopyWith<$Res> {
  factory _$$InvitationFormStateImplCopyWith(_$InvitationFormStateImpl value,
          $Res Function(_$InvitationFormStateImpl) then) =
      __$$InvitationFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<ContactDetails> inviteList,
      bool isSubmitting,
      Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccess,
      Option<Either<AttendeeFormFailure, Unit>>
          authFailureRemoveAttendeeOrSuccess});
}

/// @nodoc
class __$$InvitationFormStateImplCopyWithImpl<$Res>
    extends _$InvitationFormStateCopyWithImpl<$Res, _$InvitationFormStateImpl>
    implements _$$InvitationFormStateImplCopyWith<$Res> {
  __$$InvitationFormStateImplCopyWithImpl(_$InvitationFormStateImpl _value,
      $Res Function(_$InvitationFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteList = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccess = null,
    Object? authFailureRemoveAttendeeOrSuccess = null,
  }) {
    return _then(_$InvitationFormStateImpl(
      inviteList: null == inviteList
          ? _value.inviteList
          : inviteList // ignore: cast_nullable_to_non_nullable
              as Iterable<ContactDetails>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
      authFailureRemoveAttendeeOrSuccess: null ==
              authFailureRemoveAttendeeOrSuccess
          ? _value.authFailureRemoveAttendeeOrSuccess
          : authFailureRemoveAttendeeOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendeeFormFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$InvitationFormStateImpl extends _InvitationFormState {
  _$InvitationFormStateImpl(
      {required this.inviteList,
      required this.isSubmitting,
      required this.authFailureOrSuccess,
      required this.authFailureRemoveAttendeeOrSuccess})
      : super._();

  @override
  final Iterable<ContactDetails> inviteList;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccess;
  @override
  final Option<Either<AttendeeFormFailure, Unit>>
      authFailureRemoveAttendeeOrSuccess;

  @override
  String toString() {
    return 'InvitationFormState(inviteList: $inviteList, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess, authFailureRemoveAttendeeOrSuccess: $authFailureRemoveAttendeeOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvitationFormStateImpl &&
            const DeepCollectionEquality()
                .equals(other.inviteList, inviteList) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess) &&
            (identical(other.authFailureRemoveAttendeeOrSuccess,
                    authFailureRemoveAttendeeOrSuccess) ||
                other.authFailureRemoveAttendeeOrSuccess ==
                    authFailureRemoveAttendeeOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inviteList),
      isSubmitting,
      authFailureOrSuccess,
      authFailureRemoveAttendeeOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvitationFormStateImplCopyWith<_$InvitationFormStateImpl> get copyWith =>
      __$$InvitationFormStateImplCopyWithImpl<_$InvitationFormStateImpl>(
          this, _$identity);
}

abstract class _InvitationFormState extends InvitationFormState {
  factory _InvitationFormState(
      {required final Iterable<ContactDetails> inviteList,
      required final bool isSubmitting,
      required final Option<Either<AttendeeFormFailure, Unit>>
          authFailureOrSuccess,
      required final Option<Either<AttendeeFormFailure, Unit>>
          authFailureRemoveAttendeeOrSuccess}) = _$InvitationFormStateImpl;
  _InvitationFormState._() : super._();

  @override
  Iterable<ContactDetails> get inviteList;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AttendeeFormFailure, Unit>> get authFailureOrSuccess;
  @override
  Option<Either<AttendeeFormFailure, Unit>>
      get authFailureRemoveAttendeeOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$InvitationFormStateImplCopyWith<_$InvitationFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
