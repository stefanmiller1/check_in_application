// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendee_manager_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendeeManagerWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeManagerWatcherEventCopyWith<$Res> {
  factory $AttendeeManagerWatcherEventCopyWith(
          AttendeeManagerWatcherEvent value,
          $Res Function(AttendeeManagerWatcherEvent) then) =
      _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
          AttendeeManagerWatcherEvent>;
}

/// @nodoc
class _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        $Val extends AttendeeManagerWatcherEvent>
    implements $AttendeeManagerWatcherEventCopyWith<$Res> {
  _$AttendeeManagerWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$watchAttendanceByTypeImplCopyWith<$Res> {
  factory _$$watchAttendanceByTypeImplCopyWith(
          _$watchAttendanceByTypeImpl value,
          $Res Function(_$watchAttendanceByTypeImpl) then) =
      __$$watchAttendanceByTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String attendanceType, String activityId});
}

/// @nodoc
class __$$watchAttendanceByTypeImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$watchAttendanceByTypeImpl>
    implements _$$watchAttendanceByTypeImplCopyWith<$Res> {
  __$$watchAttendanceByTypeImplCopyWithImpl(_$watchAttendanceByTypeImpl _value,
      $Res Function(_$watchAttendanceByTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceType = null,
    Object? activityId = null,
  }) {
    return _then(_$watchAttendanceByTypeImpl(
      null == attendanceType
          ? _value.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String,
      null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$watchAttendanceByTypeImpl implements _watchAttendanceByType {
  const _$watchAttendanceByTypeImpl(this.attendanceType, this.activityId);

  @override
  final String attendanceType;
  @override
  final String activityId;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.watchAllAttendanceByType(attendanceType: $attendanceType, activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$watchAttendanceByTypeImpl &&
            (identical(other.attendanceType, attendanceType) ||
                other.attendanceType == attendanceType) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceType, activityId);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$watchAttendanceByTypeImplCopyWith<_$watchAttendanceByTypeImpl>
      get copyWith => __$$watchAttendanceByTypeImplCopyWithImpl<
          _$watchAttendanceByTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendanceByType(attendanceType, activityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendanceByType?.call(attendanceType, activityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAllAttendanceByType != null) {
      return watchAllAttendanceByType(attendanceType, activityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendanceByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendanceByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAllAttendanceByType != null) {
      return watchAllAttendanceByType(this);
    }
    return orElse();
  }
}

abstract class _watchAttendanceByType implements AttendeeManagerWatcherEvent {
  const factory _watchAttendanceByType(
          final String attendanceType, final String activityId) =
      _$watchAttendanceByTypeImpl;

  String get attendanceType;
  String get activityId;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$watchAttendanceByTypeImplCopyWith<_$watchAttendanceByTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllAttendanceReceivedByTypeImplCopyWith<$Res> {
  factory _$$AllAttendanceReceivedByTypeImplCopyWith(
          _$AllAttendanceReceivedByTypeImpl value,
          $Res Function(_$AllAttendanceReceivedByTypeImpl) then) =
      __$$AllAttendanceReceivedByTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AttendeeFormFailure, List<AttendeeItem>> failedItems});
}

/// @nodoc
class __$$AllAttendanceReceivedByTypeImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$AllAttendanceReceivedByTypeImpl>
    implements _$$AllAttendanceReceivedByTypeImplCopyWith<$Res> {
  __$$AllAttendanceReceivedByTypeImplCopyWithImpl(
      _$AllAttendanceReceivedByTypeImpl _value,
      $Res Function(_$AllAttendanceReceivedByTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$AllAttendanceReceivedByTypeImpl(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<AttendeeFormFailure, List<AttendeeItem>>,
    ));
  }
}

/// @nodoc

class _$AllAttendanceReceivedByTypeImpl
    implements _AllAttendanceReceivedByType {
  const _$AllAttendanceReceivedByTypeImpl(this.failedItems);

  @override
  final Either<AttendeeFormFailure, List<AttendeeItem>> failedItems;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.allAttendanceReceivedByType(failedItems: $failedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllAttendanceReceivedByTypeImpl &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllAttendanceReceivedByTypeImplCopyWith<_$AllAttendanceReceivedByTypeImpl>
      get copyWith => __$$AllAttendanceReceivedByTypeImplCopyWithImpl<
          _$AllAttendanceReceivedByTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceivedByType(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceivedByType?.call(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (allAttendanceReceivedByType != null) {
      return allAttendanceReceivedByType(failedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceivedByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceivedByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (allAttendanceReceivedByType != null) {
      return allAttendanceReceivedByType(this);
    }
    return orElse();
  }
}

abstract class _AllAttendanceReceivedByType
    implements AttendeeManagerWatcherEvent {
  const factory _AllAttendanceReceivedByType(
          final Either<AttendeeFormFailure, List<AttendeeItem>> failedItems) =
      _$AllAttendanceReceivedByTypeImpl;

  Either<AttendeeFormFailure, List<AttendeeItem>> get failedItems;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllAttendanceReceivedByTypeImplCopyWith<_$AllAttendanceReceivedByTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchAttendanceCountByTypeImplCopyWith<$Res> {
  factory _$$WatchAttendanceCountByTypeImplCopyWith(
          _$WatchAttendanceCountByTypeImpl value,
          $Res Function(_$WatchAttendanceCountByTypeImpl) then) =
      __$$WatchAttendanceCountByTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String attendanceType, String activityId});
}

/// @nodoc
class __$$WatchAttendanceCountByTypeImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$WatchAttendanceCountByTypeImpl>
    implements _$$WatchAttendanceCountByTypeImplCopyWith<$Res> {
  __$$WatchAttendanceCountByTypeImplCopyWithImpl(
      _$WatchAttendanceCountByTypeImpl _value,
      $Res Function(_$WatchAttendanceCountByTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceType = null,
    Object? activityId = null,
  }) {
    return _then(_$WatchAttendanceCountByTypeImpl(
      null == attendanceType
          ? _value.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String,
      null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchAttendanceCountByTypeImpl implements _WatchAttendanceCountByType {
  const _$WatchAttendanceCountByTypeImpl(this.attendanceType, this.activityId);

  @override
  final String attendanceType;
  @override
  final String activityId;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.watchAttendanceCountByType(attendanceType: $attendanceType, activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAttendanceCountByTypeImpl &&
            (identical(other.attendanceType, attendanceType) ||
                other.attendanceType == attendanceType) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceType, activityId);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAttendanceCountByTypeImplCopyWith<_$WatchAttendanceCountByTypeImpl>
      get copyWith => __$$WatchAttendanceCountByTypeImplCopyWithImpl<
          _$WatchAttendanceCountByTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return watchAttendanceCountByType(attendanceType, activityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return watchAttendanceCountByType?.call(attendanceType, activityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAttendanceCountByType != null) {
      return watchAttendanceCountByType(attendanceType, activityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return watchAttendanceCountByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return watchAttendanceCountByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAttendanceCountByType != null) {
      return watchAttendanceCountByType(this);
    }
    return orElse();
  }
}

abstract class _WatchAttendanceCountByType
    implements AttendeeManagerWatcherEvent {
  const factory _WatchAttendanceCountByType(
          final String attendanceType, final String activityId) =
      _$WatchAttendanceCountByTypeImpl;

  String get attendanceType;
  String get activityId;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchAttendanceCountByTypeImplCopyWith<_$WatchAttendanceCountByTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceCountByTypeReceivedImplCopyWith<$Res> {
  factory _$$AttendanceCountByTypeReceivedImplCopyWith(
          _$AttendanceCountByTypeReceivedImpl value,
          $Res Function(_$AttendanceCountByTypeReceivedImpl) then) =
      __$$AttendanceCountByTypeReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AttendeeFormFailure, int> failedItem});
}

/// @nodoc
class __$$AttendanceCountByTypeReceivedImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$AttendanceCountByTypeReceivedImpl>
    implements _$$AttendanceCountByTypeReceivedImplCopyWith<$Res> {
  __$$AttendanceCountByTypeReceivedImplCopyWithImpl(
      _$AttendanceCountByTypeReceivedImpl _value,
      $Res Function(_$AttendanceCountByTypeReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItem = null,
  }) {
    return _then(_$AttendanceCountByTypeReceivedImpl(
      null == failedItem
          ? _value.failedItem
          : failedItem // ignore: cast_nullable_to_non_nullable
              as Either<AttendeeFormFailure, int>,
    ));
  }
}

/// @nodoc

class _$AttendanceCountByTypeReceivedImpl
    implements _AttendanceCountByTypeReceived {
  const _$AttendanceCountByTypeReceivedImpl(this.failedItem);

  @override
  final Either<AttendeeFormFailure, int> failedItem;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.attendanceCountByTypeReceived(failedItem: $failedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceCountByTypeReceivedImpl &&
            (identical(other.failedItem, failedItem) ||
                other.failedItem == failedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItem);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceCountByTypeReceivedImplCopyWith<
          _$AttendanceCountByTypeReceivedImpl>
      get copyWith => __$$AttendanceCountByTypeReceivedImplCopyWithImpl<
          _$AttendanceCountByTypeReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return attendanceCountByTypeReceived(failedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return attendanceCountByTypeReceived?.call(failedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (attendanceCountByTypeReceived != null) {
      return attendanceCountByTypeReceived(failedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return attendanceCountByTypeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return attendanceCountByTypeReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (attendanceCountByTypeReceived != null) {
      return attendanceCountByTypeReceived(this);
    }
    return orElse();
  }
}

abstract class _AttendanceCountByTypeReceived
    implements AttendeeManagerWatcherEvent {
  const factory _AttendanceCountByTypeReceived(
          final Either<AttendeeFormFailure, int> failedItem) =
      _$AttendanceCountByTypeReceivedImpl;

  Either<AttendeeFormFailure, int> get failedItem;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceCountByTypeReceivedImplCopyWith<
          _$AttendanceCountByTypeReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchAllAttendanceImplCopyWith<$Res> {
  factory _$$WatchAllAttendanceImplCopyWith(_$WatchAllAttendanceImpl value,
          $Res Function(_$WatchAllAttendanceImpl) then) =
      __$$WatchAllAttendanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activityId});
}

/// @nodoc
class __$$WatchAllAttendanceImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$WatchAllAttendanceImpl>
    implements _$$WatchAllAttendanceImplCopyWith<$Res> {
  __$$WatchAllAttendanceImplCopyWithImpl(_$WatchAllAttendanceImpl _value,
      $Res Function(_$WatchAllAttendanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
  }) {
    return _then(_$WatchAllAttendanceImpl(
      null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchAllAttendanceImpl implements _WatchAllAttendance {
  const _$WatchAllAttendanceImpl(this.activityId);

  @override
  final String activityId;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.watchAllAttendance(activityId: $activityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllAttendanceImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAllAttendanceImplCopyWith<_$WatchAllAttendanceImpl> get copyWith =>
      __$$WatchAllAttendanceImplCopyWithImpl<_$WatchAllAttendanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendance(activityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendance?.call(activityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAllAttendance != null) {
      return watchAllAttendance(activityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return watchAllAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAllAttendance != null) {
      return watchAllAttendance(this);
    }
    return orElse();
  }
}

abstract class _WatchAllAttendance implements AttendeeManagerWatcherEvent {
  const factory _WatchAllAttendance(final String activityId) =
      _$WatchAllAttendanceImpl;

  String get activityId;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchAllAttendanceImplCopyWith<_$WatchAllAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllAttendanceReceivedImplCopyWith<$Res> {
  factory _$$AllAttendanceReceivedImplCopyWith(
          _$AllAttendanceReceivedImpl value,
          $Res Function(_$AllAttendanceReceivedImpl) then) =
      __$$AllAttendanceReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AttendeeFormFailure, List<AttendeeItem>> failedItems});
}

/// @nodoc
class __$$AllAttendanceReceivedImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$AllAttendanceReceivedImpl>
    implements _$$AllAttendanceReceivedImplCopyWith<$Res> {
  __$$AllAttendanceReceivedImplCopyWithImpl(_$AllAttendanceReceivedImpl _value,
      $Res Function(_$AllAttendanceReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$AllAttendanceReceivedImpl(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<AttendeeFormFailure, List<AttendeeItem>>,
    ));
  }
}

/// @nodoc

class _$AllAttendanceReceivedImpl implements _AllAttendanceReceived {
  const _$AllAttendanceReceivedImpl(this.failedItems);

  @override
  final Either<AttendeeFormFailure, List<AttendeeItem>> failedItems;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.allAttendanceReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllAttendanceReceivedImpl &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllAttendanceReceivedImplCopyWith<_$AllAttendanceReceivedImpl>
      get copyWith => __$$AllAttendanceReceivedImplCopyWithImpl<
          _$AllAttendanceReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceived(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceived?.call(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (allAttendanceReceived != null) {
      return allAttendanceReceived(failedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return allAttendanceReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (allAttendanceReceived != null) {
      return allAttendanceReceived(this);
    }
    return orElse();
  }
}

abstract class _AllAttendanceReceived implements AttendeeManagerWatcherEvent {
  const factory _AllAttendanceReceived(
          final Either<AttendeeFormFailure, List<AttendeeItem>> failedItems) =
      _$AllAttendanceReceivedImpl;

  Either<AttendeeFormFailure, List<AttendeeItem>> get failedItems;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllAttendanceReceivedImplCopyWith<_$AllAttendanceReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchAttendeeItemImplCopyWith<$Res> {
  factory _$$WatchAttendeeItemImplCopyWith(_$WatchAttendeeItemImpl value,
          $Res Function(_$WatchAttendeeItemImpl) then) =
      __$$WatchAttendeeItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activityId, String attendeeId});
}

/// @nodoc
class __$$WatchAttendeeItemImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$WatchAttendeeItemImpl>
    implements _$$WatchAttendeeItemImplCopyWith<$Res> {
  __$$WatchAttendeeItemImplCopyWithImpl(_$WatchAttendeeItemImpl _value,
      $Res Function(_$WatchAttendeeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? attendeeId = null,
  }) {
    return _then(_$WatchAttendeeItemImpl(
      null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      null == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchAttendeeItemImpl implements _WatchAttendeeItem {
  const _$WatchAttendeeItemImpl(this.activityId, this.attendeeId);

  @override
  final String activityId;
  @override
  final String attendeeId;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.watchAttendeeItem(activityId: $activityId, attendeeId: $attendeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAttendeeItemImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.attendeeId, attendeeId) ||
                other.attendeeId == attendeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityId, attendeeId);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAttendeeItemImplCopyWith<_$WatchAttendeeItemImpl> get copyWith =>
      __$$WatchAttendeeItemImplCopyWithImpl<_$WatchAttendeeItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return watchAttendeeItem(activityId, attendeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return watchAttendeeItem?.call(activityId, attendeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAttendeeItem != null) {
      return watchAttendeeItem(activityId, attendeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return watchAttendeeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return watchAttendeeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchAttendeeItem != null) {
      return watchAttendeeItem(this);
    }
    return orElse();
  }
}

abstract class _WatchAttendeeItem implements AttendeeManagerWatcherEvent {
  const factory _WatchAttendeeItem(
          final String activityId, final String attendeeId) =
      _$WatchAttendeeItemImpl;

  String get activityId;
  String get attendeeId;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchAttendeeItemImplCopyWith<_$WatchAttendeeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendeeItemReceivedImplCopyWith<$Res> {
  factory _$$AttendeeItemReceivedImplCopyWith(_$AttendeeItemReceivedImpl value,
          $Res Function(_$AttendeeItemReceivedImpl) then) =
      __$$AttendeeItemReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AttendeeFormFailure, AttendeeItem> failedItem});
}

/// @nodoc
class __$$AttendeeItemReceivedImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$AttendeeItemReceivedImpl>
    implements _$$AttendeeItemReceivedImplCopyWith<$Res> {
  __$$AttendeeItemReceivedImplCopyWithImpl(_$AttendeeItemReceivedImpl _value,
      $Res Function(_$AttendeeItemReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItem = null,
  }) {
    return _then(_$AttendeeItemReceivedImpl(
      null == failedItem
          ? _value.failedItem
          : failedItem // ignore: cast_nullable_to_non_nullable
              as Either<AttendeeFormFailure, AttendeeItem>,
    ));
  }
}

/// @nodoc

class _$AttendeeItemReceivedImpl implements _AttendeeItemReceived {
  const _$AttendeeItemReceivedImpl(this.failedItem);

  @override
  final Either<AttendeeFormFailure, AttendeeItem> failedItem;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.attendeeItemReceived(failedItem: $failedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeItemReceivedImpl &&
            (identical(other.failedItem, failedItem) ||
                other.failedItem == failedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItem);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeItemReceivedImplCopyWith<_$AttendeeItemReceivedImpl>
      get copyWith =>
          __$$AttendeeItemReceivedImplCopyWithImpl<_$AttendeeItemReceivedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return attendeeItemReceived(failedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return attendeeItemReceived?.call(failedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (attendeeItemReceived != null) {
      return attendeeItemReceived(failedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return attendeeItemReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return attendeeItemReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (attendeeItemReceived != null) {
      return attendeeItemReceived(this);
    }
    return orElse();
  }
}

abstract class _AttendeeItemReceived implements AttendeeManagerWatcherEvent {
  const factory _AttendeeItemReceived(
          final Either<AttendeeFormFailure, AttendeeItem> failedItem) =
      _$AttendeeItemReceivedImpl;

  Either<AttendeeFormFailure, AttendeeItem> get failedItem;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeItemReceivedImplCopyWith<_$AttendeeItemReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchCurrentUsersResAttendanceImplCopyWith<$Res> {
  factory _$$WatchCurrentUsersResAttendanceImplCopyWith(
          _$WatchCurrentUsersResAttendanceImpl value,
          $Res Function(_$WatchCurrentUsersResAttendanceImpl) then) =
      __$$WatchCurrentUsersResAttendanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UniqueId userId, ContactStatus status, AttendeeType type, int limit});
}

/// @nodoc
class __$$WatchCurrentUsersResAttendanceImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$WatchCurrentUsersResAttendanceImpl>
    implements _$$WatchCurrentUsersResAttendanceImplCopyWith<$Res> {
  __$$WatchCurrentUsersResAttendanceImplCopyWithImpl(
      _$WatchCurrentUsersResAttendanceImpl _value,
      $Res Function(_$WatchCurrentUsersResAttendanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
    Object? type = null,
    Object? limit = null,
  }) {
    return _then(_$WatchCurrentUsersResAttendanceImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactStatus,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AttendeeType,
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WatchCurrentUsersResAttendanceImpl
    implements _WatchCurrentUsersResAttendance {
  const _$WatchCurrentUsersResAttendanceImpl(
      this.userId, this.status, this.type, this.limit);

  @override
  final UniqueId userId;
  @override
  final ContactStatus status;
  @override
  final AttendeeType type;
  @override
  final int limit;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.watchCurrentUsersResAttendance(userId: $userId, status: $status, type: $type, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchCurrentUsersResAttendanceImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, status, type, limit);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchCurrentUsersResAttendanceImplCopyWith<
          _$WatchCurrentUsersResAttendanceImpl>
      get copyWith => __$$WatchCurrentUsersResAttendanceImplCopyWithImpl<
          _$WatchCurrentUsersResAttendanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return watchCurrentUsersResAttendance(userId, status, type, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return watchCurrentUsersResAttendance?.call(userId, status, type, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchCurrentUsersResAttendance != null) {
      return watchCurrentUsersResAttendance(userId, status, type, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return watchCurrentUsersResAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return watchCurrentUsersResAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (watchCurrentUsersResAttendance != null) {
      return watchCurrentUsersResAttendance(this);
    }
    return orElse();
  }
}

abstract class _WatchCurrentUsersResAttendance
    implements AttendeeManagerWatcherEvent {
  const factory _WatchCurrentUsersResAttendance(
      final UniqueId userId,
      final ContactStatus status,
      final AttendeeType type,
      final int limit) = _$WatchCurrentUsersResAttendanceImpl;

  UniqueId get userId;
  ContactStatus get status;
  AttendeeType get type;
  int get limit;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchCurrentUsersResAttendanceImplCopyWith<
          _$WatchCurrentUsersResAttendanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentUserAttendanceReceivedImplCopyWith<$Res> {
  factory _$$CurrentUserAttendanceReceivedImplCopyWith(
          _$CurrentUserAttendanceReceivedImpl value,
          $Res Function(_$CurrentUserAttendanceReceivedImpl) then) =
      __$$CurrentUserAttendanceReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AttendeeFormFailure, List<AttendeeItem>> failedItems});
}

/// @nodoc
class __$$CurrentUserAttendanceReceivedImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherEventCopyWithImpl<$Res,
        _$CurrentUserAttendanceReceivedImpl>
    implements _$$CurrentUserAttendanceReceivedImplCopyWith<$Res> {
  __$$CurrentUserAttendanceReceivedImplCopyWithImpl(
      _$CurrentUserAttendanceReceivedImpl _value,
      $Res Function(_$CurrentUserAttendanceReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$CurrentUserAttendanceReceivedImpl(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<AttendeeFormFailure, List<AttendeeItem>>,
    ));
  }
}

/// @nodoc

class _$CurrentUserAttendanceReceivedImpl
    implements _CurrentUserAttendanceReceived {
  const _$CurrentUserAttendanceReceivedImpl(this.failedItems);

  @override
  final Either<AttendeeFormFailure, List<AttendeeItem>> failedItems;

  @override
  String toString() {
    return 'AttendeeManagerWatcherEvent.currentUserAttendanceReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserAttendanceReceivedImpl &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserAttendanceReceivedImplCopyWith<
          _$CurrentUserAttendanceReceivedImpl>
      get copyWith => __$$CurrentUserAttendanceReceivedImplCopyWithImpl<
          _$CurrentUserAttendanceReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String attendanceType, String activityId)
        watchAllAttendanceByType,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceivedByType,
    required TResult Function(String attendanceType, String activityId)
        watchAttendanceCountByType,
    required TResult Function(Either<AttendeeFormFailure, int> failedItem)
        attendanceCountByTypeReceived,
    required TResult Function(String activityId) watchAllAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        allAttendanceReceived,
    required TResult Function(String activityId, String attendeeId)
        watchAttendeeItem,
    required TResult Function(
            Either<AttendeeFormFailure, AttendeeItem> failedItem)
        attendeeItemReceived,
    required TResult Function(
            UniqueId userId, ContactStatus status, AttendeeType type, int limit)
        watchCurrentUsersResAttendance,
    required TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)
        currentUserAttendanceReceived,
  }) {
    return currentUserAttendanceReceived(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult? Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult? Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult? Function(String activityId)? watchAllAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult? Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult? Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult? Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult? Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
  }) {
    return currentUserAttendanceReceived?.call(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String attendanceType, String activityId)?
        watchAllAttendanceByType,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceivedByType,
    TResult Function(String attendanceType, String activityId)?
        watchAttendanceCountByType,
    TResult Function(Either<AttendeeFormFailure, int> failedItem)?
        attendanceCountByTypeReceived,
    TResult Function(String activityId)? watchAllAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        allAttendanceReceived,
    TResult Function(String activityId, String attendeeId)? watchAttendeeItem,
    TResult Function(Either<AttendeeFormFailure, AttendeeItem> failedItem)?
        attendeeItemReceived,
    TResult Function(UniqueId userId, ContactStatus status, AttendeeType type,
            int limit)?
        watchCurrentUsersResAttendance,
    TResult Function(
            Either<AttendeeFormFailure, List<AttendeeItem>> failedItems)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (currentUserAttendanceReceived != null) {
      return currentUserAttendanceReceived(failedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_watchAttendanceByType value)
        watchAllAttendanceByType,
    required TResult Function(_AllAttendanceReceivedByType value)
        allAttendanceReceivedByType,
    required TResult Function(_WatchAttendanceCountByType value)
        watchAttendanceCountByType,
    required TResult Function(_AttendanceCountByTypeReceived value)
        attendanceCountByTypeReceived,
    required TResult Function(_WatchAllAttendance value) watchAllAttendance,
    required TResult Function(_AllAttendanceReceived value)
        allAttendanceReceived,
    required TResult Function(_WatchAttendeeItem value) watchAttendeeItem,
    required TResult Function(_AttendeeItemReceived value) attendeeItemReceived,
    required TResult Function(_WatchCurrentUsersResAttendance value)
        watchCurrentUsersResAttendance,
    required TResult Function(_CurrentUserAttendanceReceived value)
        currentUserAttendanceReceived,
  }) {
    return currentUserAttendanceReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult? Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult? Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult? Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult? Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult? Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult? Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult? Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult? Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult? Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
  }) {
    return currentUserAttendanceReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_watchAttendanceByType value)? watchAllAttendanceByType,
    TResult Function(_AllAttendanceReceivedByType value)?
        allAttendanceReceivedByType,
    TResult Function(_WatchAttendanceCountByType value)?
        watchAttendanceCountByType,
    TResult Function(_AttendanceCountByTypeReceived value)?
        attendanceCountByTypeReceived,
    TResult Function(_WatchAllAttendance value)? watchAllAttendance,
    TResult Function(_AllAttendanceReceived value)? allAttendanceReceived,
    TResult Function(_WatchAttendeeItem value)? watchAttendeeItem,
    TResult Function(_AttendeeItemReceived value)? attendeeItemReceived,
    TResult Function(_WatchCurrentUsersResAttendance value)?
        watchCurrentUsersResAttendance,
    TResult Function(_CurrentUserAttendanceReceived value)?
        currentUserAttendanceReceived,
    required TResult orElse(),
  }) {
    if (currentUserAttendanceReceived != null) {
      return currentUserAttendanceReceived(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserAttendanceReceived
    implements AttendeeManagerWatcherEvent {
  const factory _CurrentUserAttendanceReceived(
          final Either<AttendeeFormFailure, List<AttendeeItem>> failedItems) =
      _$CurrentUserAttendanceReceivedImpl;

  Either<AttendeeFormFailure, List<AttendeeItem>> get failedItems;

  /// Create a copy of AttendeeManagerWatcherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentUserAttendanceReceivedImplCopyWith<
          _$CurrentUserAttendanceReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendeeManagerWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeManagerWatcherStateCopyWith<$Res> {
  factory $AttendeeManagerWatcherStateCopyWith(
          AttendeeManagerWatcherState value,
          $Res Function(AttendeeManagerWatcherState) then) =
      _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
          AttendeeManagerWatcherState>;
}

/// @nodoc
class _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        $Val extends AttendeeManagerWatcherState>
    implements $AttendeeManagerWatcherStateCopyWith<$Res> {
  _$AttendeeManagerWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AttInitialImplCopyWith<$Res> {
  factory _$$AttInitialImplCopyWith(
          _$AttInitialImpl value, $Res Function(_$AttInitialImpl) then) =
      __$$AttInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttInitialImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res, _$AttInitialImpl>
    implements _$$AttInitialImplCopyWith<$Res> {
  __$$AttInitialImplCopyWithImpl(
      _$AttInitialImpl _value, $Res Function(_$AttInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttInitialImpl implements _AttInitial {
  const _$AttInitialImpl();

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.attInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AttInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return attInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return attInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (attInitial != null) {
      return attInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return attInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return attInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (attInitial != null) {
      return attInitial(this);
    }
    return orElse();
  }
}

abstract class _AttInitial implements AttendeeManagerWatcherState {
  const factory _AttInitial() = _$AttInitialImpl;
}

/// @nodoc
abstract class _$$AttLoadInProgressImplCopyWith<$Res> {
  factory _$$AttLoadInProgressImplCopyWith(_$AttLoadInProgressImpl value,
          $Res Function(_$AttLoadInProgressImpl) then) =
      __$$AttLoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttLoadInProgressImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$AttLoadInProgressImpl>
    implements _$$AttLoadInProgressImplCopyWith<$Res> {
  __$$AttLoadInProgressImplCopyWithImpl(_$AttLoadInProgressImpl _value,
      $Res Function(_$AttLoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttLoadInProgressImpl implements _AttLoadInProgress {
  const _$AttLoadInProgressImpl();

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.attLoadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AttLoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return attLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return attLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (attLoadInProgress != null) {
      return attLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return attLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return attLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (attLoadInProgress != null) {
      return attLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _AttLoadInProgress implements AttendeeManagerWatcherState {
  const factory _AttLoadInProgress() = _$AttLoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadAllAttendanceSuccessImplCopyWith<$Res> {
  factory _$$LoadAllAttendanceSuccessImplCopyWith(
          _$LoadAllAttendanceSuccessImpl value,
          $Res Function(_$LoadAllAttendanceSuccessImpl) then) =
      __$$LoadAllAttendanceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AttendeeItem> item});
}

/// @nodoc
class __$$LoadAllAttendanceSuccessImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAllAttendanceSuccessImpl>
    implements _$$LoadAllAttendanceSuccessImplCopyWith<$Res> {
  __$$LoadAllAttendanceSuccessImplCopyWithImpl(
      _$LoadAllAttendanceSuccessImpl _value,
      $Res Function(_$LoadAllAttendanceSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$LoadAllAttendanceSuccessImpl(
      null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<AttendeeItem>,
    ));
  }
}

/// @nodoc

class _$LoadAllAttendanceSuccessImpl implements _LoadAllAttendanceSuccess {
  const _$LoadAllAttendanceSuccessImpl(final List<AttendeeItem> item)
      : _item = item;

  final List<AttendeeItem> _item;
  @override
  List<AttendeeItem> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAllAttendanceSuccess(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllAttendanceSuccessImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllAttendanceSuccessImplCopyWith<_$LoadAllAttendanceSuccessImpl>
      get copyWith => __$$LoadAllAttendanceSuccessImplCopyWithImpl<
          _$LoadAllAttendanceSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceSuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceSuccess != null) {
      return loadAllAttendanceSuccess(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceSuccess != null) {
      return loadAllAttendanceSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAllAttendanceSuccess
    implements AttendeeManagerWatcherState {
  const factory _LoadAllAttendanceSuccess(final List<AttendeeItem> item) =
      _$LoadAllAttendanceSuccessImpl;

  List<AttendeeItem> get item;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAllAttendanceSuccessImplCopyWith<_$LoadAllAttendanceSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllAttendanceFailureImplCopyWith<$Res> {
  factory _$$LoadAllAttendanceFailureImplCopyWith(
          _$LoadAllAttendanceFailureImpl value,
          $Res Function(_$LoadAllAttendanceFailureImpl) then) =
      __$$LoadAllAttendanceFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendeeFormFailure<dynamic> failure});

  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAllAttendanceFailureImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAllAttendanceFailureImpl>
    implements _$$LoadAllAttendanceFailureImplCopyWith<$Res> {
  __$$LoadAllAttendanceFailureImplCopyWithImpl(
      _$LoadAllAttendanceFailureImpl _value,
      $Res Function(_$LoadAllAttendanceFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAllAttendanceFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AttendeeFormFailure<dynamic>,
    ));
  }

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure {
    return $AttendeeFormFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadAllAttendanceFailureImpl implements _LoadAllAttendanceFailure {
  const _$LoadAllAttendanceFailureImpl(this.failure);

  @override
  final AttendeeFormFailure<dynamic> failure;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAllAttendanceFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllAttendanceFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllAttendanceFailureImplCopyWith<_$LoadAllAttendanceFailureImpl>
      get copyWith => __$$LoadAllAttendanceFailureImplCopyWithImpl<
          _$LoadAllAttendanceFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceFailure != null) {
      return loadAllAttendanceFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceFailure != null) {
      return loadAllAttendanceFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAllAttendanceFailure
    implements AttendeeManagerWatcherState {
  const factory _LoadAllAttendanceFailure(
          final AttendeeFormFailure<dynamic> failure) =
      _$LoadAllAttendanceFailureImpl;

  AttendeeFormFailure<dynamic> get failure;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAllAttendanceFailureImplCopyWith<_$LoadAllAttendanceFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAttendanceCountByTypeSuccessImplCopyWith<$Res> {
  factory _$$LoadAttendanceCountByTypeSuccessImplCopyWith(
          _$LoadAttendanceCountByTypeSuccessImpl value,
          $Res Function(_$LoadAttendanceCountByTypeSuccessImpl) then) =
      __$$LoadAttendanceCountByTypeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int item});
}

/// @nodoc
class __$$LoadAttendanceCountByTypeSuccessImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAttendanceCountByTypeSuccessImpl>
    implements _$$LoadAttendanceCountByTypeSuccessImplCopyWith<$Res> {
  __$$LoadAttendanceCountByTypeSuccessImplCopyWithImpl(
      _$LoadAttendanceCountByTypeSuccessImpl _value,
      $Res Function(_$LoadAttendanceCountByTypeSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$LoadAttendanceCountByTypeSuccessImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadAttendanceCountByTypeSuccessImpl
    implements _LoadAttendanceCountByTypeSuccess {
  const _$LoadAttendanceCountByTypeSuccessImpl(this.item);

  @override
  final int item;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAttendanceCountByTypeSuccess(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAttendanceCountByTypeSuccessImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAttendanceCountByTypeSuccessImplCopyWith<
          _$LoadAttendanceCountByTypeSuccessImpl>
      get copyWith => __$$LoadAttendanceCountByTypeSuccessImplCopyWithImpl<
          _$LoadAttendanceCountByTypeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeSuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendanceCountByTypeSuccess != null) {
      return loadAttendanceCountByTypeSuccess(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendanceCountByTypeSuccess != null) {
      return loadAttendanceCountByTypeSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAttendanceCountByTypeSuccess
    implements AttendeeManagerWatcherState {
  const factory _LoadAttendanceCountByTypeSuccess(final int item) =
      _$LoadAttendanceCountByTypeSuccessImpl;

  int get item;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAttendanceCountByTypeSuccessImplCopyWith<
          _$LoadAttendanceCountByTypeSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAttendanceCountByTypeFailureImplCopyWith<$Res> {
  factory _$$LoadAttendanceCountByTypeFailureImplCopyWith(
          _$LoadAttendanceCountByTypeFailureImpl value,
          $Res Function(_$LoadAttendanceCountByTypeFailureImpl) then) =
      __$$LoadAttendanceCountByTypeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendeeFormFailure<dynamic> failure});

  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAttendanceCountByTypeFailureImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAttendanceCountByTypeFailureImpl>
    implements _$$LoadAttendanceCountByTypeFailureImplCopyWith<$Res> {
  __$$LoadAttendanceCountByTypeFailureImplCopyWithImpl(
      _$LoadAttendanceCountByTypeFailureImpl _value,
      $Res Function(_$LoadAttendanceCountByTypeFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAttendanceCountByTypeFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AttendeeFormFailure<dynamic>,
    ));
  }

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure {
    return $AttendeeFormFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadAttendanceCountByTypeFailureImpl
    implements _LoadAttendanceCountByTypeFailure {
  const _$LoadAttendanceCountByTypeFailureImpl(this.failure);

  @override
  final AttendeeFormFailure<dynamic> failure;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAttendanceCountByTypeFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAttendanceCountByTypeFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAttendanceCountByTypeFailureImplCopyWith<
          _$LoadAttendanceCountByTypeFailureImpl>
      get copyWith => __$$LoadAttendanceCountByTypeFailureImplCopyWithImpl<
          _$LoadAttendanceCountByTypeFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendanceCountByTypeFailure != null) {
      return loadAttendanceCountByTypeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendanceCountByTypeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendanceCountByTypeFailure != null) {
      return loadAttendanceCountByTypeFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAttendanceCountByTypeFailure
    implements AttendeeManagerWatcherState {
  const factory _LoadAttendanceCountByTypeFailure(
          final AttendeeFormFailure<dynamic> failure) =
      _$LoadAttendanceCountByTypeFailureImpl;

  AttendeeFormFailure<dynamic> get failure;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAttendanceCountByTypeFailureImplCopyWith<
          _$LoadAttendanceCountByTypeFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllAttendanceActivitySuccessImplCopyWith<$Res> {
  factory _$$LoadAllAttendanceActivitySuccessImplCopyWith(
          _$LoadAllAttendanceActivitySuccessImpl value,
          $Res Function(_$LoadAllAttendanceActivitySuccessImpl) then) =
      __$$LoadAllAttendanceActivitySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AttendeeItem> item});
}

/// @nodoc
class __$$LoadAllAttendanceActivitySuccessImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAllAttendanceActivitySuccessImpl>
    implements _$$LoadAllAttendanceActivitySuccessImplCopyWith<$Res> {
  __$$LoadAllAttendanceActivitySuccessImplCopyWithImpl(
      _$LoadAllAttendanceActivitySuccessImpl _value,
      $Res Function(_$LoadAllAttendanceActivitySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$LoadAllAttendanceActivitySuccessImpl(
      null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<AttendeeItem>,
    ));
  }
}

/// @nodoc

class _$LoadAllAttendanceActivitySuccessImpl
    implements _LoadAllAttendanceActivitySuccess {
  const _$LoadAllAttendanceActivitySuccessImpl(final List<AttendeeItem> item)
      : _item = item;

  final List<AttendeeItem> _item;
  @override
  List<AttendeeItem> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAllAttendanceActivitySuccess(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllAttendanceActivitySuccessImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllAttendanceActivitySuccessImplCopyWith<
          _$LoadAllAttendanceActivitySuccessImpl>
      get copyWith => __$$LoadAllAttendanceActivitySuccessImplCopyWithImpl<
          _$LoadAllAttendanceActivitySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivitySuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivitySuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceActivitySuccess != null) {
      return loadAllAttendanceActivitySuccess(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivitySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivitySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceActivitySuccess != null) {
      return loadAllAttendanceActivitySuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAllAttendanceActivitySuccess
    implements AttendeeManagerWatcherState {
  const factory _LoadAllAttendanceActivitySuccess(
      final List<AttendeeItem> item) = _$LoadAllAttendanceActivitySuccessImpl;

  List<AttendeeItem> get item;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAllAttendanceActivitySuccessImplCopyWith<
          _$LoadAllAttendanceActivitySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllAttendanceActivityFailureImplCopyWith<$Res> {
  factory _$$LoadAllAttendanceActivityFailureImplCopyWith(
          _$LoadAllAttendanceActivityFailureImpl value,
          $Res Function(_$LoadAllAttendanceActivityFailureImpl) then) =
      __$$LoadAllAttendanceActivityFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendeeFormFailure<dynamic> failure});

  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAllAttendanceActivityFailureImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAllAttendanceActivityFailureImpl>
    implements _$$LoadAllAttendanceActivityFailureImplCopyWith<$Res> {
  __$$LoadAllAttendanceActivityFailureImplCopyWithImpl(
      _$LoadAllAttendanceActivityFailureImpl _value,
      $Res Function(_$LoadAllAttendanceActivityFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAllAttendanceActivityFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AttendeeFormFailure<dynamic>,
    ));
  }

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure {
    return $AttendeeFormFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadAllAttendanceActivityFailureImpl
    implements _LoadAllAttendanceActivityFailure {
  const _$LoadAllAttendanceActivityFailureImpl(this.failure);

  @override
  final AttendeeFormFailure<dynamic> failure;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAllAttendanceActivityFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllAttendanceActivityFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllAttendanceActivityFailureImplCopyWith<
          _$LoadAllAttendanceActivityFailureImpl>
      get copyWith => __$$LoadAllAttendanceActivityFailureImplCopyWithImpl<
          _$LoadAllAttendanceActivityFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivityFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivityFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceActivityFailure != null) {
      return loadAllAttendanceActivityFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivityFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAllAttendanceActivityFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAllAttendanceActivityFailure != null) {
      return loadAllAttendanceActivityFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAllAttendanceActivityFailure
    implements AttendeeManagerWatcherState {
  const factory _LoadAllAttendanceActivityFailure(
          final AttendeeFormFailure<dynamic> failure) =
      _$LoadAllAttendanceActivityFailureImpl;

  AttendeeFormFailure<dynamic> get failure;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAllAttendanceActivityFailureImplCopyWith<
          _$LoadAllAttendanceActivityFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAttendeeItemSuccessImplCopyWith<$Res> {
  factory _$$LoadAttendeeItemSuccessImplCopyWith(
          _$LoadAttendeeItemSuccessImpl value,
          $Res Function(_$LoadAttendeeItemSuccessImpl) then) =
      __$$LoadAttendeeItemSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendeeItem item});

  $AttendeeItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$LoadAttendeeItemSuccessImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAttendeeItemSuccessImpl>
    implements _$$LoadAttendeeItemSuccessImplCopyWith<$Res> {
  __$$LoadAttendeeItemSuccessImplCopyWithImpl(
      _$LoadAttendeeItemSuccessImpl _value,
      $Res Function(_$LoadAttendeeItemSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$LoadAttendeeItemSuccessImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as AttendeeItem,
    ));
  }

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeItemCopyWith<$Res> get item {
    return $AttendeeItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$LoadAttendeeItemSuccessImpl implements _LoadAttendeeItemSuccess {
  const _$LoadAttendeeItemSuccessImpl(this.item);

  @override
  final AttendeeItem item;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAttendeeItemSuccess(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAttendeeItemSuccessImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAttendeeItemSuccessImplCopyWith<_$LoadAttendeeItemSuccessImpl>
      get copyWith => __$$LoadAttendeeItemSuccessImplCopyWithImpl<
          _$LoadAttendeeItemSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemSuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendeeItemSuccess != null) {
      return loadAttendeeItemSuccess(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendeeItemSuccess != null) {
      return loadAttendeeItemSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAttendeeItemSuccess implements AttendeeManagerWatcherState {
  const factory _LoadAttendeeItemSuccess(final AttendeeItem item) =
      _$LoadAttendeeItemSuccessImpl;

  AttendeeItem get item;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAttendeeItemSuccessImplCopyWith<_$LoadAttendeeItemSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAttendeeItemFailureImplCopyWith<$Res> {
  factory _$$LoadAttendeeItemFailureImplCopyWith(
          _$LoadAttendeeItemFailureImpl value,
          $Res Function(_$LoadAttendeeItemFailureImpl) then) =
      __$$LoadAttendeeItemFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendeeFormFailure<dynamic> failure});

  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAttendeeItemFailureImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadAttendeeItemFailureImpl>
    implements _$$LoadAttendeeItemFailureImplCopyWith<$Res> {
  __$$LoadAttendeeItemFailureImplCopyWithImpl(
      _$LoadAttendeeItemFailureImpl _value,
      $Res Function(_$LoadAttendeeItemFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAttendeeItemFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AttendeeFormFailure<dynamic>,
    ));
  }

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure {
    return $AttendeeFormFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadAttendeeItemFailureImpl implements _LoadAttendeeItemFailure {
  const _$LoadAttendeeItemFailureImpl(this.failure);

  @override
  final AttendeeFormFailure<dynamic> failure;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadAttendeeItemFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAttendeeItemFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAttendeeItemFailureImplCopyWith<_$LoadAttendeeItemFailureImpl>
      get copyWith => __$$LoadAttendeeItemFailureImplCopyWithImpl<
          _$LoadAttendeeItemFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendeeItemFailure != null) {
      return loadAttendeeItemFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadAttendeeItemFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadAttendeeItemFailure != null) {
      return loadAttendeeItemFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAttendeeItemFailure implements AttendeeManagerWatcherState {
  const factory _LoadAttendeeItemFailure(
          final AttendeeFormFailure<dynamic> failure) =
      _$LoadAttendeeItemFailureImpl;

  AttendeeFormFailure<dynamic> get failure;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAttendeeItemFailureImplCopyWith<_$LoadAttendeeItemFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCurrentUserAttendancesSuccessImplCopyWith<$Res> {
  factory _$$LoadCurrentUserAttendancesSuccessImplCopyWith(
          _$LoadCurrentUserAttendancesSuccessImpl value,
          $Res Function(_$LoadCurrentUserAttendancesSuccessImpl) then) =
      __$$LoadCurrentUserAttendancesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AttendeeItem> item});
}

/// @nodoc
class __$$LoadCurrentUserAttendancesSuccessImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadCurrentUserAttendancesSuccessImpl>
    implements _$$LoadCurrentUserAttendancesSuccessImplCopyWith<$Res> {
  __$$LoadCurrentUserAttendancesSuccessImplCopyWithImpl(
      _$LoadCurrentUserAttendancesSuccessImpl _value,
      $Res Function(_$LoadCurrentUserAttendancesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$LoadCurrentUserAttendancesSuccessImpl(
      null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<AttendeeItem>,
    ));
  }
}

/// @nodoc

class _$LoadCurrentUserAttendancesSuccessImpl
    implements _LoadCurrentUserAttendancesSuccess {
  const _$LoadCurrentUserAttendancesSuccessImpl(final List<AttendeeItem> item)
      : _item = item;

  final List<AttendeeItem> _item;
  @override
  List<AttendeeItem> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadCurrentUserAttendancesSuccess(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentUserAttendancesSuccessImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentUserAttendancesSuccessImplCopyWith<
          _$LoadCurrentUserAttendancesSuccessImpl>
      get copyWith => __$$LoadCurrentUserAttendancesSuccessImplCopyWithImpl<
          _$LoadCurrentUserAttendancesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesSuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadCurrentUserAttendancesSuccess != null) {
      return loadCurrentUserAttendancesSuccess(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadCurrentUserAttendancesSuccess != null) {
      return loadCurrentUserAttendancesSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentUserAttendancesSuccess
    implements AttendeeManagerWatcherState {
  const factory _LoadCurrentUserAttendancesSuccess(
      final List<AttendeeItem> item) = _$LoadCurrentUserAttendancesSuccessImpl;

  List<AttendeeItem> get item;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCurrentUserAttendancesSuccessImplCopyWith<
          _$LoadCurrentUserAttendancesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCurrentUserAttendancesFailureImplCopyWith<$Res> {
  factory _$$LoadCurrentUserAttendancesFailureImplCopyWith(
          _$LoadCurrentUserAttendancesFailureImpl value,
          $Res Function(_$LoadCurrentUserAttendancesFailureImpl) then) =
      __$$LoadCurrentUserAttendancesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendeeFormFailure<dynamic> failure});

  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadCurrentUserAttendancesFailureImplCopyWithImpl<$Res>
    extends _$AttendeeManagerWatcherStateCopyWithImpl<$Res,
        _$LoadCurrentUserAttendancesFailureImpl>
    implements _$$LoadCurrentUserAttendancesFailureImplCopyWith<$Res> {
  __$$LoadCurrentUserAttendancesFailureImplCopyWithImpl(
      _$LoadCurrentUserAttendancesFailureImpl _value,
      $Res Function(_$LoadCurrentUserAttendancesFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadCurrentUserAttendancesFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AttendeeFormFailure<dynamic>,
    ));
  }

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeFormFailureCopyWith<dynamic, $Res> get failure {
    return $AttendeeFormFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadCurrentUserAttendancesFailureImpl
    implements _LoadCurrentUserAttendancesFailure {
  const _$LoadCurrentUserAttendancesFailureImpl(this.failure);

  @override
  final AttendeeFormFailure<dynamic> failure;

  @override
  String toString() {
    return 'AttendeeManagerWatcherState.loadCurrentUserAttendancesFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentUserAttendancesFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentUserAttendancesFailureImplCopyWith<
          _$LoadCurrentUserAttendancesFailureImpl>
      get copyWith => __$$LoadCurrentUserAttendancesFailureImplCopyWithImpl<
          _$LoadCurrentUserAttendancesFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attInitial,
    required TResult Function() attLoadInProgress,
    required TResult Function(List<AttendeeItem> item) loadAllAttendanceSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceFailure,
    required TResult Function(int item) loadAttendanceCountByTypeSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendanceCountByTypeFailure,
    required TResult Function(List<AttendeeItem> item)
        loadAllAttendanceActivitySuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAllAttendanceActivityFailure,
    required TResult Function(AttendeeItem item) loadAttendeeItemSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadAttendeeItemFailure,
    required TResult Function(List<AttendeeItem> item)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(AttendeeFormFailure<dynamic> failure)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attInitial,
    TResult? Function()? attLoadInProgress,
    TResult? Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult? Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult? Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult? Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attInitial,
    TResult Function()? attLoadInProgress,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceFailure,
    TResult Function(int item)? loadAttendanceCountByTypeSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendanceCountByTypeFailure,
    TResult Function(List<AttendeeItem> item)? loadAllAttendanceActivitySuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAllAttendanceActivityFailure,
    TResult Function(AttendeeItem item)? loadAttendeeItemSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadAttendeeItemFailure,
    TResult Function(List<AttendeeItem> item)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(AttendeeFormFailure<dynamic> failure)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadCurrentUserAttendancesFailure != null) {
      return loadCurrentUserAttendancesFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttInitial value) attInitial,
    required TResult Function(_AttLoadInProgress value) attLoadInProgress,
    required TResult Function(_LoadAllAttendanceSuccess value)
        loadAllAttendanceSuccess,
    required TResult Function(_LoadAllAttendanceFailure value)
        loadAllAttendanceFailure,
    required TResult Function(_LoadAttendanceCountByTypeSuccess value)
        loadAttendanceCountByTypeSuccess,
    required TResult Function(_LoadAttendanceCountByTypeFailure value)
        loadAttendanceCountByTypeFailure,
    required TResult Function(_LoadAllAttendanceActivitySuccess value)
        loadAllAttendanceActivitySuccess,
    required TResult Function(_LoadAllAttendanceActivityFailure value)
        loadAllAttendanceActivityFailure,
    required TResult Function(_LoadAttendeeItemSuccess value)
        loadAttendeeItemSuccess,
    required TResult Function(_LoadAttendeeItemFailure value)
        loadAttendeeItemFailure,
    required TResult Function(_LoadCurrentUserAttendancesSuccess value)
        loadCurrentUserAttendancesSuccess,
    required TResult Function(_LoadCurrentUserAttendancesFailure value)
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttInitial value)? attInitial,
    TResult? Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult? Function(_LoadAllAttendanceSuccess value)?
        loadAllAttendanceSuccess,
    TResult? Function(_LoadAllAttendanceFailure value)?
        loadAllAttendanceFailure,
    TResult? Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult? Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult? Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult? Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult? Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult? Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult? Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult? Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
  }) {
    return loadCurrentUserAttendancesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttInitial value)? attInitial,
    TResult Function(_AttLoadInProgress value)? attLoadInProgress,
    TResult Function(_LoadAllAttendanceSuccess value)? loadAllAttendanceSuccess,
    TResult Function(_LoadAllAttendanceFailure value)? loadAllAttendanceFailure,
    TResult Function(_LoadAttendanceCountByTypeSuccess value)?
        loadAttendanceCountByTypeSuccess,
    TResult Function(_LoadAttendanceCountByTypeFailure value)?
        loadAttendanceCountByTypeFailure,
    TResult Function(_LoadAllAttendanceActivitySuccess value)?
        loadAllAttendanceActivitySuccess,
    TResult Function(_LoadAllAttendanceActivityFailure value)?
        loadAllAttendanceActivityFailure,
    TResult Function(_LoadAttendeeItemSuccess value)? loadAttendeeItemSuccess,
    TResult Function(_LoadAttendeeItemFailure value)? loadAttendeeItemFailure,
    TResult Function(_LoadCurrentUserAttendancesSuccess value)?
        loadCurrentUserAttendancesSuccess,
    TResult Function(_LoadCurrentUserAttendancesFailure value)?
        loadCurrentUserAttendancesFailure,
    required TResult orElse(),
  }) {
    if (loadCurrentUserAttendancesFailure != null) {
      return loadCurrentUserAttendancesFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentUserAttendancesFailure
    implements AttendeeManagerWatcherState {
  const factory _LoadCurrentUserAttendancesFailure(
          final AttendeeFormFailure<dynamic> failure) =
      _$LoadCurrentUserAttendancesFailureImpl;

  AttendeeFormFailure<dynamic> get failure;

  /// Create a copy of AttendeeManagerWatcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCurrentUserAttendancesFailureImplCopyWith<
          _$LoadCurrentUserAttendancesFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
