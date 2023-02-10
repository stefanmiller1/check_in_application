// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_payment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StripePaymentWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentWatcherEventCopyWith<$Res> {
  factory $StripePaymentWatcherEventCopyWith(StripePaymentWatcherEvent value,
          $Res Function(StripePaymentWatcherEvent) then) =
      _$StripePaymentWatcherEventCopyWithImpl<$Res, StripePaymentWatcherEvent>;
}

/// @nodoc
class _$StripePaymentWatcherEventCopyWithImpl<$Res,
        $Val extends StripePaymentWatcherEvent>
    implements $StripePaymentWatcherEventCopyWith<$Res> {
  _$StripePaymentWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchAllPaymentMethodsCopyWith<$Res> {
  factory _$$_WatchAllPaymentMethodsCopyWith(_$_WatchAllPaymentMethods value,
          $Res Function(_$_WatchAllPaymentMethods) then) =
      __$$_WatchAllPaymentMethodsCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$_WatchAllPaymentMethodsCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$_WatchAllPaymentMethods>
    implements _$$_WatchAllPaymentMethodsCopyWith<$Res> {
  __$$_WatchAllPaymentMethodsCopyWithImpl(_$_WatchAllPaymentMethods _value,
      $Res Function(_$_WatchAllPaymentMethods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_WatchAllPaymentMethods(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllPaymentMethods implements _WatchAllPaymentMethods {
  const _$_WatchAllPaymentMethods(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.watchAllPaymentMethods(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllPaymentMethods &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAllPaymentMethodsCopyWith<_$_WatchAllPaymentMethods> get copyWith =>
      __$$_WatchAllPaymentMethodsCopyWithImpl<_$_WatchAllPaymentMethods>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) {
    return watchAllPaymentMethods(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) {
    return watchAllPaymentMethods?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (watchAllPaymentMethods != null) {
      return watchAllPaymentMethods(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) {
    return watchAllPaymentMethods(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) {
    return watchAllPaymentMethods?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (watchAllPaymentMethods != null) {
      return watchAllPaymentMethods(this);
    }
    return orElse();
  }
}

abstract class _WatchAllPaymentMethods implements StripePaymentWatcherEvent {
  const factory _WatchAllPaymentMethods(final String customerId) =
      _$_WatchAllPaymentMethods;

  String get customerId;
  @JsonKey(ignore: true)
  _$$_WatchAllPaymentMethodsCopyWith<_$_WatchAllPaymentMethods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentMethodsReceivedCopyWith<$Res> {
  factory _$$_PaymentMethodsReceivedCopyWith(_$_PaymentMethodsReceived value,
          $Res Function(_$_PaymentMethodsReceived) then) =
      __$$_PaymentMethodsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PaymentMethodValueFailure, List<CardItem>> failedItems});
}

/// @nodoc
class __$$_PaymentMethodsReceivedCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$_PaymentMethodsReceived>
    implements _$$_PaymentMethodsReceivedCopyWith<$Res> {
  __$$_PaymentMethodsReceivedCopyWithImpl(_$_PaymentMethodsReceived _value,
      $Res Function(_$_PaymentMethodsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$_PaymentMethodsReceived(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<PaymentMethodValueFailure, List<CardItem>>,
    ));
  }
}

/// @nodoc

class _$_PaymentMethodsReceived implements _PaymentMethodsReceived {
  const _$_PaymentMethodsReceived(this.failedItems);

  @override
  final Either<PaymentMethodValueFailure, List<CardItem>> failedItems;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.paymentMethodsReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodsReceived &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodsReceivedCopyWith<_$_PaymentMethodsReceived> get copyWith =>
      __$$_PaymentMethodsReceivedCopyWithImpl<_$_PaymentMethodsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) {
    return paymentMethodsReceived(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) {
    return paymentMethodsReceived?.call(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (paymentMethodsReceived != null) {
      return paymentMethodsReceived(failedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) {
    return paymentMethodsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) {
    return paymentMethodsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (paymentMethodsReceived != null) {
      return paymentMethodsReceived(this);
    }
    return orElse();
  }
}

abstract class _PaymentMethodsReceived implements StripePaymentWatcherEvent {
  const factory _PaymentMethodsReceived(
          final Either<PaymentMethodValueFailure, List<CardItem>> failedItems) =
      _$_PaymentMethodsReceived;

  Either<PaymentMethodValueFailure, List<CardItem>> get failedItems;
  @JsonKey(ignore: true)
  _$$_PaymentMethodsReceivedCopyWith<_$_PaymentMethodsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchAllPaymentIntentHistoryCopyWith<$Res> {
  factory _$$_WatchAllPaymentIntentHistoryCopyWith(
          _$_WatchAllPaymentIntentHistory value,
          $Res Function(_$_WatchAllPaymentIntentHistory) then) =
      __$$_WatchAllPaymentIntentHistoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$_WatchAllPaymentIntentHistoryCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$_WatchAllPaymentIntentHistory>
    implements _$$_WatchAllPaymentIntentHistoryCopyWith<$Res> {
  __$$_WatchAllPaymentIntentHistoryCopyWithImpl(
      _$_WatchAllPaymentIntentHistory _value,
      $Res Function(_$_WatchAllPaymentIntentHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_WatchAllPaymentIntentHistory(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchAllPaymentIntentHistory implements _WatchAllPaymentIntentHistory {
  const _$_WatchAllPaymentIntentHistory(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.watchAllPaymentIntentHistory(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchAllPaymentIntentHistory &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchAllPaymentIntentHistoryCopyWith<_$_WatchAllPaymentIntentHistory>
      get copyWith => __$$_WatchAllPaymentIntentHistoryCopyWithImpl<
          _$_WatchAllPaymentIntentHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) {
    return watchAllPaymentIntentHistory(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) {
    return watchAllPaymentIntentHistory?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (watchAllPaymentIntentHistory != null) {
      return watchAllPaymentIntentHistory(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) {
    return watchAllPaymentIntentHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) {
    return watchAllPaymentIntentHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (watchAllPaymentIntentHistory != null) {
      return watchAllPaymentIntentHistory(this);
    }
    return orElse();
  }
}

abstract class _WatchAllPaymentIntentHistory
    implements StripePaymentWatcherEvent {
  const factory _WatchAllPaymentIntentHistory(final String customerId) =
      _$_WatchAllPaymentIntentHistory;

  String get customerId;
  @JsonKey(ignore: true)
  _$$_WatchAllPaymentIntentHistoryCopyWith<_$_WatchAllPaymentIntentHistory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_paymentIntentHistoryReceivedCopyWith<$Res> {
  factory _$$_paymentIntentHistoryReceivedCopyWith(
          _$_paymentIntentHistoryReceived value,
          $Res Function(_$_paymentIntentHistoryReceived) then) =
      __$$_paymentIntentHistoryReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems});
}

/// @nodoc
class __$$_paymentIntentHistoryReceivedCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$_paymentIntentHistoryReceived>
    implements _$$_paymentIntentHistoryReceivedCopyWith<$Res> {
  __$$_paymentIntentHistoryReceivedCopyWithImpl(
      _$_paymentIntentHistoryReceived _value,
      $Res Function(_$_paymentIntentHistoryReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$_paymentIntentHistoryReceived(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<PaymentMethodValueFailure, List<PaymentIntent>>,
    ));
  }
}

/// @nodoc

class _$_paymentIntentHistoryReceived implements _paymentIntentHistoryReceived {
  const _$_paymentIntentHistoryReceived(this.failedItems);

  @override
  final Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.paymentIntentHistoryReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_paymentIntentHistoryReceived &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_paymentIntentHistoryReceivedCopyWith<_$_paymentIntentHistoryReceived>
      get copyWith => __$$_paymentIntentHistoryReceivedCopyWithImpl<
          _$_paymentIntentHistoryReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) {
    return paymentIntentHistoryReceived(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) {
    return paymentIntentHistoryReceived?.call(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (paymentIntentHistoryReceived != null) {
      return paymentIntentHistoryReceived(failedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) {
    return paymentIntentHistoryReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) {
    return paymentIntentHistoryReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (paymentIntentHistoryReceived != null) {
      return paymentIntentHistoryReceived(this);
    }
    return orElse();
  }
}

abstract class _paymentIntentHistoryReceived
    implements StripePaymentWatcherEvent {
  const factory _paymentIntentHistoryReceived(
      final Either<PaymentMethodValueFailure, List<PaymentIntent>>
          failedItems) = _$_paymentIntentHistoryReceived;

  Either<PaymentMethodValueFailure, List<PaymentIntent>> get failedItems;
  @JsonKey(ignore: true)
  _$$_paymentIntentHistoryReceivedCopyWith<_$_paymentIntentHistoryReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchAllPayoutHistoryCopyWith<$Res> {
  factory _$$_WatchAllPayoutHistoryCopyWith(_$_WatchAllPayoutHistory value,
          $Res Function(_$_WatchAllPayoutHistory) then) =
      __$$_WatchAllPayoutHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllPayoutHistoryCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$_WatchAllPayoutHistory>
    implements _$$_WatchAllPayoutHistoryCopyWith<$Res> {
  __$$_WatchAllPayoutHistoryCopyWithImpl(_$_WatchAllPayoutHistory _value,
      $Res Function(_$_WatchAllPayoutHistory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchAllPayoutHistory implements _WatchAllPayoutHistory {
  const _$_WatchAllPayoutHistory();

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.watchAllPayoutHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllPayoutHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) {
    return watchAllPayoutHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) {
    return watchAllPayoutHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (watchAllPayoutHistory != null) {
      return watchAllPayoutHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) {
    return watchAllPayoutHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) {
    return watchAllPayoutHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (watchAllPayoutHistory != null) {
      return watchAllPayoutHistory(this);
    }
    return orElse();
  }
}

abstract class _WatchAllPayoutHistory implements StripePaymentWatcherEvent {
  const factory _WatchAllPayoutHistory() = _$_WatchAllPayoutHistory;
}

/// @nodoc
abstract class _$$_PayoutHistoryReceivedCopyWith<$Res> {
  factory _$$_PayoutHistoryReceivedCopyWith(_$_PayoutHistoryReceived value,
          $Res Function(_$_PayoutHistoryReceived) then) =
      __$$_PayoutHistoryReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems});
}

/// @nodoc
class __$$_PayoutHistoryReceivedCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$_PayoutHistoryReceived>
    implements _$$_PayoutHistoryReceivedCopyWith<$Res> {
  __$$_PayoutHistoryReceivedCopyWithImpl(_$_PayoutHistoryReceived _value,
      $Res Function(_$_PayoutHistoryReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$_PayoutHistoryReceived(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<PaymentMethodValueFailure, List<PayoutModel>>,
    ));
  }
}

/// @nodoc

class _$_PayoutHistoryReceived implements _PayoutHistoryReceived {
  const _$_PayoutHistoryReceived(this.failedItems);

  @override
  final Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.payoutHistoryReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayoutHistoryReceived &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayoutHistoryReceivedCopyWith<_$_PayoutHistoryReceived> get copyWith =>
      __$$_PayoutHistoryReceivedCopyWithImpl<_$_PayoutHistoryReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) watchAllPaymentMethods,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)
        paymentMethodsReceived,
    required TResult Function(String customerId) watchAllPaymentIntentHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)
        paymentIntentHistoryReceived,
    required TResult Function() watchAllPayoutHistory,
    required TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)
        payoutHistoryReceived,
  }) {
    return payoutHistoryReceived(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? watchAllPaymentMethods,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult? Function(String customerId)? watchAllPaymentIntentHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult? Function()? watchAllPayoutHistory,
    TResult? Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
  }) {
    return payoutHistoryReceived?.call(failedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? watchAllPaymentMethods,
    TResult Function(
            Either<PaymentMethodValueFailure, List<CardItem>> failedItems)?
        paymentMethodsReceived,
    TResult Function(String customerId)? watchAllPaymentIntentHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems)?
        paymentIntentHistoryReceived,
    TResult Function()? watchAllPayoutHistory,
    TResult Function(
            Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems)?
        payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (payoutHistoryReceived != null) {
      return payoutHistoryReceived(failedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllPaymentMethods value)
        watchAllPaymentMethods,
    required TResult Function(_PaymentMethodsReceived value)
        paymentMethodsReceived,
    required TResult Function(_WatchAllPaymentIntentHistory value)
        watchAllPaymentIntentHistory,
    required TResult Function(_paymentIntentHistoryReceived value)
        paymentIntentHistoryReceived,
    required TResult Function(_WatchAllPayoutHistory value)
        watchAllPayoutHistory,
    required TResult Function(_PayoutHistoryReceived value)
        payoutHistoryReceived,
  }) {
    return payoutHistoryReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult? Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult? Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult? Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult? Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult? Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
  }) {
    return payoutHistoryReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllPaymentMethods value)? watchAllPaymentMethods,
    TResult Function(_PaymentMethodsReceived value)? paymentMethodsReceived,
    TResult Function(_WatchAllPaymentIntentHistory value)?
        watchAllPaymentIntentHistory,
    TResult Function(_paymentIntentHistoryReceived value)?
        paymentIntentHistoryReceived,
    TResult Function(_WatchAllPayoutHistory value)? watchAllPayoutHistory,
    TResult Function(_PayoutHistoryReceived value)? payoutHistoryReceived,
    required TResult orElse(),
  }) {
    if (payoutHistoryReceived != null) {
      return payoutHistoryReceived(this);
    }
    return orElse();
  }
}

abstract class _PayoutHistoryReceived implements StripePaymentWatcherEvent {
  const factory _PayoutHistoryReceived(
      final Either<PaymentMethodValueFailure, List<PayoutModel>>
          failedItems) = _$_PayoutHistoryReceived;

  Either<PaymentMethodValueFailure, List<PayoutModel>> get failedItems;
  @JsonKey(ignore: true)
  _$$_PayoutHistoryReceivedCopyWith<_$_PayoutHistoryReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StripePaymentWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentWatcherStateCopyWith<$Res> {
  factory $StripePaymentWatcherStateCopyWith(StripePaymentWatcherState value,
          $Res Function(StripePaymentWatcherState) then) =
      _$StripePaymentWatcherStateCopyWithImpl<$Res, StripePaymentWatcherState>;
}

/// @nodoc
class _$StripePaymentWatcherStateCopyWithImpl<$Res,
        $Val extends StripePaymentWatcherState>
    implements $StripePaymentWatcherStateCopyWith<$Res> {
  _$StripePaymentWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StripePaymentWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StripePaymentWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements StripePaymentWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadAllPaymentMethodsSuccessCopyWith<$Res> {
  factory _$$_LoadAllPaymentMethodsSuccessCopyWith(
          _$_LoadAllPaymentMethodsSuccess value,
          $Res Function(_$_LoadAllPaymentMethodsSuccess) then) =
      __$$_LoadAllPaymentMethodsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CardItem> cards});
}

/// @nodoc
class __$$_LoadAllPaymentMethodsSuccessCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$_LoadAllPaymentMethodsSuccess>
    implements _$$_LoadAllPaymentMethodsSuccessCopyWith<$Res> {
  __$$_LoadAllPaymentMethodsSuccessCopyWithImpl(
      _$_LoadAllPaymentMethodsSuccess _value,
      $Res Function(_$_LoadAllPaymentMethodsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$_LoadAllPaymentMethodsSuccess(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardItem>,
    ));
  }
}

/// @nodoc

class _$_LoadAllPaymentMethodsSuccess implements _LoadAllPaymentMethodsSuccess {
  const _$_LoadAllPaymentMethodsSuccess(final List<CardItem> cards)
      : _cards = cards;

  final List<CardItem> _cards;
  @override
  List<CardItem> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPaymentMethodsSuccess(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAllPaymentMethodsSuccess &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAllPaymentMethodsSuccessCopyWith<_$_LoadAllPaymentMethodsSuccess>
      get copyWith => __$$_LoadAllPaymentMethodsSuccessCopyWithImpl<
          _$_LoadAllPaymentMethodsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsSuccess(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsSuccess?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentMethodsSuccess != null) {
      return loadAllPaymentMethodsSuccess(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentMethodsSuccess != null) {
      return loadAllPaymentMethodsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAllPaymentMethodsSuccess
    implements StripePaymentWatcherState {
  const factory _LoadAllPaymentMethodsSuccess(final List<CardItem> cards) =
      _$_LoadAllPaymentMethodsSuccess;

  List<CardItem> get cards;
  @JsonKey(ignore: true)
  _$$_LoadAllPaymentMethodsSuccessCopyWith<_$_LoadAllPaymentMethodsSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadAllPaymentMethodsFailureCopyWith<$Res> {
  factory _$$_LoadAllPaymentMethodsFailureCopyWith(
          _$_LoadAllPaymentMethodsFailure value,
          $Res Function(_$_LoadAllPaymentMethodsFailure) then) =
      __$$_LoadAllPaymentMethodsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodValueFailure<dynamic> failure});

  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$_LoadAllPaymentMethodsFailureCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$_LoadAllPaymentMethodsFailure>
    implements _$$_LoadAllPaymentMethodsFailureCopyWith<$Res> {
  __$$_LoadAllPaymentMethodsFailureCopyWithImpl(
      _$_LoadAllPaymentMethodsFailure _value,
      $Res Function(_$_LoadAllPaymentMethodsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadAllPaymentMethodsFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PaymentMethodValueFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure {
    return $PaymentMethodValueFailureCopyWith<dynamic, $Res>(_value.failure,
        (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadAllPaymentMethodsFailure implements _LoadAllPaymentMethodsFailure {
  const _$_LoadAllPaymentMethodsFailure(this.failure);

  @override
  final PaymentMethodValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPaymentMethodsFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAllPaymentMethodsFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAllPaymentMethodsFailureCopyWith<_$_LoadAllPaymentMethodsFailure>
      get copyWith => __$$_LoadAllPaymentMethodsFailureCopyWithImpl<
          _$_LoadAllPaymentMethodsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentMethodsFailure != null) {
      return loadAllPaymentMethodsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadAllPaymentMethodsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentMethodsFailure != null) {
      return loadAllPaymentMethodsFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAllPaymentMethodsFailure
    implements StripePaymentWatcherState {
  const factory _LoadAllPaymentMethodsFailure(
          final PaymentMethodValueFailure<dynamic> failure) =
      _$_LoadAllPaymentMethodsFailure;

  PaymentMethodValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$_LoadAllPaymentMethodsFailureCopyWith<_$_LoadAllPaymentMethodsFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadAllPaymentIntentsSuccessCopyWith<$Res> {
  factory _$$_LoadAllPaymentIntentsSuccessCopyWith(
          _$_LoadAllPaymentIntentsSuccess value,
          $Res Function(_$_LoadAllPaymentIntentsSuccess) then) =
      __$$_LoadAllPaymentIntentsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentIntent> paymentIntent});
}

/// @nodoc
class __$$_LoadAllPaymentIntentsSuccessCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$_LoadAllPaymentIntentsSuccess>
    implements _$$_LoadAllPaymentIntentsSuccessCopyWith<$Res> {
  __$$_LoadAllPaymentIntentsSuccessCopyWithImpl(
      _$_LoadAllPaymentIntentsSuccess _value,
      $Res Function(_$_LoadAllPaymentIntentsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIntent = null,
  }) {
    return _then(_$_LoadAllPaymentIntentsSuccess(
      null == paymentIntent
          ? _value._paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as List<PaymentIntent>,
    ));
  }
}

/// @nodoc

class _$_LoadAllPaymentIntentsSuccess implements _LoadAllPaymentIntentsSuccess {
  const _$_LoadAllPaymentIntentsSuccess(final List<PaymentIntent> paymentIntent)
      : _paymentIntent = paymentIntent;

  final List<PaymentIntent> _paymentIntent;
  @override
  List<PaymentIntent> get paymentIntent {
    if (_paymentIntent is EqualUnmodifiableListView) return _paymentIntent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentIntent);
  }

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPaymentIntentsSuccess(paymentIntent: $paymentIntent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAllPaymentIntentsSuccess &&
            const DeepCollectionEquality()
                .equals(other._paymentIntent, _paymentIntent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentIntent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAllPaymentIntentsSuccessCopyWith<_$_LoadAllPaymentIntentsSuccess>
      get copyWith => __$$_LoadAllPaymentIntentsSuccessCopyWithImpl<
          _$_LoadAllPaymentIntentsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsSuccess(paymentIntent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsSuccess?.call(paymentIntent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentIntentsSuccess != null) {
      return loadAllPaymentIntentsSuccess(paymentIntent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentIntentsSuccess != null) {
      return loadAllPaymentIntentsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAllPaymentIntentsSuccess
    implements StripePaymentWatcherState {
  const factory _LoadAllPaymentIntentsSuccess(
          final List<PaymentIntent> paymentIntent) =
      _$_LoadAllPaymentIntentsSuccess;

  List<PaymentIntent> get paymentIntent;
  @JsonKey(ignore: true)
  _$$_LoadAllPaymentIntentsSuccessCopyWith<_$_LoadAllPaymentIntentsSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadAllPaymentIntentsFailureCopyWith<$Res> {
  factory _$$_LoadAllPaymentIntentsFailureCopyWith(
          _$_LoadAllPaymentIntentsFailure value,
          $Res Function(_$_LoadAllPaymentIntentsFailure) then) =
      __$$_LoadAllPaymentIntentsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodValueFailure<dynamic> failure});

  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$_LoadAllPaymentIntentsFailureCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$_LoadAllPaymentIntentsFailure>
    implements _$$_LoadAllPaymentIntentsFailureCopyWith<$Res> {
  __$$_LoadAllPaymentIntentsFailureCopyWithImpl(
      _$_LoadAllPaymentIntentsFailure _value,
      $Res Function(_$_LoadAllPaymentIntentsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadAllPaymentIntentsFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PaymentMethodValueFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure {
    return $PaymentMethodValueFailureCopyWith<dynamic, $Res>(_value.failure,
        (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadAllPaymentIntentsFailure implements _LoadAllPaymentIntentsFailure {
  const _$_LoadAllPaymentIntentsFailure(this.failure);

  @override
  final PaymentMethodValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPaymentIntentsFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAllPaymentIntentsFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAllPaymentIntentsFailureCopyWith<_$_LoadAllPaymentIntentsFailure>
      get copyWith => __$$_LoadAllPaymentIntentsFailureCopyWithImpl<
          _$_LoadAllPaymentIntentsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentIntentsFailure != null) {
      return loadAllPaymentIntentsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadAllPaymentIntentsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPaymentIntentsFailure != null) {
      return loadAllPaymentIntentsFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAllPaymentIntentsFailure
    implements StripePaymentWatcherState {
  const factory _LoadAllPaymentIntentsFailure(
          final PaymentMethodValueFailure<dynamic> failure) =
      _$_LoadAllPaymentIntentsFailure;

  PaymentMethodValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$_LoadAllPaymentIntentsFailureCopyWith<_$_LoadAllPaymentIntentsFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadAllPayoutsSuccessCopyWith<$Res> {
  factory _$$_LoadAllPayoutsSuccessCopyWith(_$_LoadAllPayoutsSuccess value,
          $Res Function(_$_LoadAllPayoutsSuccess) then) =
      __$$_LoadAllPayoutsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PayoutModel> payoutModel});
}

/// @nodoc
class __$$_LoadAllPayoutsSuccessCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$_LoadAllPayoutsSuccess>
    implements _$$_LoadAllPayoutsSuccessCopyWith<$Res> {
  __$$_LoadAllPayoutsSuccessCopyWithImpl(_$_LoadAllPayoutsSuccess _value,
      $Res Function(_$_LoadAllPayoutsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payoutModel = null,
  }) {
    return _then(_$_LoadAllPayoutsSuccess(
      null == payoutModel
          ? _value._payoutModel
          : payoutModel // ignore: cast_nullable_to_non_nullable
              as List<PayoutModel>,
    ));
  }
}

/// @nodoc

class _$_LoadAllPayoutsSuccess implements _LoadAllPayoutsSuccess {
  const _$_LoadAllPayoutsSuccess(final List<PayoutModel> payoutModel)
      : _payoutModel = payoutModel;

  final List<PayoutModel> _payoutModel;
  @override
  List<PayoutModel> get payoutModel {
    if (_payoutModel is EqualUnmodifiableListView) return _payoutModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payoutModel);
  }

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPayoutsSuccess(payoutModel: $payoutModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAllPayoutsSuccess &&
            const DeepCollectionEquality()
                .equals(other._payoutModel, _payoutModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_payoutModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAllPayoutsSuccessCopyWith<_$_LoadAllPayoutsSuccess> get copyWith =>
      __$$_LoadAllPayoutsSuccessCopyWithImpl<_$_LoadAllPayoutsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsSuccess(payoutModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsSuccess?.call(payoutModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPayoutsSuccess != null) {
      return loadAllPayoutsSuccess(payoutModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPayoutsSuccess != null) {
      return loadAllPayoutsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadAllPayoutsSuccess implements StripePaymentWatcherState {
  const factory _LoadAllPayoutsSuccess(final List<PayoutModel> payoutModel) =
      _$_LoadAllPayoutsSuccess;

  List<PayoutModel> get payoutModel;
  @JsonKey(ignore: true)
  _$$_LoadAllPayoutsSuccessCopyWith<_$_LoadAllPayoutsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadAllPayoutsFailureCopyWith<$Res> {
  factory _$$_LoadAllPayoutsFailureCopyWith(_$_LoadAllPayoutsFailure value,
          $Res Function(_$_LoadAllPayoutsFailure) then) =
      __$$_LoadAllPayoutsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodValueFailure<dynamic> failure});

  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$_LoadAllPayoutsFailureCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$_LoadAllPayoutsFailure>
    implements _$$_LoadAllPayoutsFailureCopyWith<$Res> {
  __$$_LoadAllPayoutsFailureCopyWithImpl(_$_LoadAllPayoutsFailure _value,
      $Res Function(_$_LoadAllPayoutsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadAllPayoutsFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PaymentMethodValueFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure {
    return $PaymentMethodValueFailureCopyWith<dynamic, $Res>(_value.failure,
        (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadAllPayoutsFailure implements _LoadAllPayoutsFailure {
  const _$_LoadAllPayoutsFailure(this.failure);

  @override
  final PaymentMethodValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPayoutsFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadAllPayoutsFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadAllPayoutsFailureCopyWith<_$_LoadAllPayoutsFailure> get copyWith =>
      __$$_LoadAllPayoutsFailureCopyWithImpl<_$_LoadAllPayoutsFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<CardItem> cards)
        loadAllPaymentMethodsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentMethodsFailure,
    required TResult Function(List<PaymentIntent> paymentIntent)
        loadAllPaymentIntentsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPaymentIntentsFailure,
    required TResult Function(List<PayoutModel> payoutModel)
        loadAllPayoutsSuccess,
    required TResult Function(PaymentMethodValueFailure<dynamic> failure)
        loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult? Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult? Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult? Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<CardItem> cards)? loadAllPaymentMethodsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentMethodsFailure,
    TResult Function(List<PaymentIntent> paymentIntent)?
        loadAllPaymentIntentsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPaymentIntentsFailure,
    TResult Function(List<PayoutModel> payoutModel)? loadAllPayoutsSuccess,
    TResult Function(PaymentMethodValueFailure<dynamic> failure)?
        loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPayoutsFailure != null) {
      return loadAllPayoutsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadAllPaymentMethodsSuccess value)
        loadAllPaymentMethodsSuccess,
    required TResult Function(_LoadAllPaymentMethodsFailure value)
        loadAllPaymentMethodsFailure,
    required TResult Function(_LoadAllPaymentIntentsSuccess value)
        loadAllPaymentIntentsSuccess,
    required TResult Function(_LoadAllPaymentIntentsFailure value)
        loadAllPaymentIntentsFailure,
    required TResult Function(_LoadAllPayoutsSuccess value)
        loadAllPayoutsSuccess,
    required TResult Function(_LoadAllPayoutsFailure value)
        loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult? Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult? Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult? Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult? Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult? Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
  }) {
    return loadAllPayoutsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadAllPaymentMethodsSuccess value)?
        loadAllPaymentMethodsSuccess,
    TResult Function(_LoadAllPaymentMethodsFailure value)?
        loadAllPaymentMethodsFailure,
    TResult Function(_LoadAllPaymentIntentsSuccess value)?
        loadAllPaymentIntentsSuccess,
    TResult Function(_LoadAllPaymentIntentsFailure value)?
        loadAllPaymentIntentsFailure,
    TResult Function(_LoadAllPayoutsSuccess value)? loadAllPayoutsSuccess,
    TResult Function(_LoadAllPayoutsFailure value)? loadAllPayoutsFailure,
    required TResult orElse(),
  }) {
    if (loadAllPayoutsFailure != null) {
      return loadAllPayoutsFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadAllPayoutsFailure implements StripePaymentWatcherState {
  const factory _LoadAllPayoutsFailure(
          final PaymentMethodValueFailure<dynamic> failure) =
      _$_LoadAllPayoutsFailure;

  PaymentMethodValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$_LoadAllPayoutsFailureCopyWith<_$_LoadAllPayoutsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
