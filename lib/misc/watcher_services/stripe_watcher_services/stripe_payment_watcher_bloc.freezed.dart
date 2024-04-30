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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$WatchAllPaymentMethodsImplCopyWith<$Res> {
  factory _$$WatchAllPaymentMethodsImplCopyWith(
          _$WatchAllPaymentMethodsImpl value,
          $Res Function(_$WatchAllPaymentMethodsImpl) then) =
      __$$WatchAllPaymentMethodsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$WatchAllPaymentMethodsImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$WatchAllPaymentMethodsImpl>
    implements _$$WatchAllPaymentMethodsImplCopyWith<$Res> {
  __$$WatchAllPaymentMethodsImplCopyWithImpl(
      _$WatchAllPaymentMethodsImpl _value,
      $Res Function(_$WatchAllPaymentMethodsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$WatchAllPaymentMethodsImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchAllPaymentMethodsImpl implements _WatchAllPaymentMethods {
  const _$WatchAllPaymentMethodsImpl(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.watchAllPaymentMethods(customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllPaymentMethodsImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAllPaymentMethodsImplCopyWith<_$WatchAllPaymentMethodsImpl>
      get copyWith => __$$WatchAllPaymentMethodsImplCopyWithImpl<
          _$WatchAllPaymentMethodsImpl>(this, _$identity);

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
      _$WatchAllPaymentMethodsImpl;

  String get customerId;
  @JsonKey(ignore: true)
  _$$WatchAllPaymentMethodsImplCopyWith<_$WatchAllPaymentMethodsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentMethodsReceivedImplCopyWith<$Res> {
  factory _$$PaymentMethodsReceivedImplCopyWith(
          _$PaymentMethodsReceivedImpl value,
          $Res Function(_$PaymentMethodsReceivedImpl) then) =
      __$$PaymentMethodsReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PaymentMethodValueFailure, List<CardItem>> failedItems});
}

/// @nodoc
class __$$PaymentMethodsReceivedImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$PaymentMethodsReceivedImpl>
    implements _$$PaymentMethodsReceivedImplCopyWith<$Res> {
  __$$PaymentMethodsReceivedImplCopyWithImpl(
      _$PaymentMethodsReceivedImpl _value,
      $Res Function(_$PaymentMethodsReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$PaymentMethodsReceivedImpl(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<PaymentMethodValueFailure, List<CardItem>>,
    ));
  }
}

/// @nodoc

class _$PaymentMethodsReceivedImpl implements _PaymentMethodsReceived {
  const _$PaymentMethodsReceivedImpl(this.failedItems);

  @override
  final Either<PaymentMethodValueFailure, List<CardItem>> failedItems;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.paymentMethodsReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodsReceivedImpl &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodsReceivedImplCopyWith<_$PaymentMethodsReceivedImpl>
      get copyWith => __$$PaymentMethodsReceivedImplCopyWithImpl<
          _$PaymentMethodsReceivedImpl>(this, _$identity);

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
      _$PaymentMethodsReceivedImpl;

  Either<PaymentMethodValueFailure, List<CardItem>> get failedItems;
  @JsonKey(ignore: true)
  _$$PaymentMethodsReceivedImplCopyWith<_$PaymentMethodsReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchAllPaymentIntentHistoryImplCopyWith<$Res> {
  factory _$$WatchAllPaymentIntentHistoryImplCopyWith(
          _$WatchAllPaymentIntentHistoryImpl value,
          $Res Function(_$WatchAllPaymentIntentHistoryImpl) then) =
      __$$WatchAllPaymentIntentHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$WatchAllPaymentIntentHistoryImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$WatchAllPaymentIntentHistoryImpl>
    implements _$$WatchAllPaymentIntentHistoryImplCopyWith<$Res> {
  __$$WatchAllPaymentIntentHistoryImplCopyWithImpl(
      _$WatchAllPaymentIntentHistoryImpl _value,
      $Res Function(_$WatchAllPaymentIntentHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$WatchAllPaymentIntentHistoryImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchAllPaymentIntentHistoryImpl
    implements _WatchAllPaymentIntentHistory {
  const _$WatchAllPaymentIntentHistoryImpl(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.watchAllPaymentIntentHistory(customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllPaymentIntentHistoryImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchAllPaymentIntentHistoryImplCopyWith<
          _$WatchAllPaymentIntentHistoryImpl>
      get copyWith => __$$WatchAllPaymentIntentHistoryImplCopyWithImpl<
          _$WatchAllPaymentIntentHistoryImpl>(this, _$identity);

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
      _$WatchAllPaymentIntentHistoryImpl;

  String get customerId;
  @JsonKey(ignore: true)
  _$$WatchAllPaymentIntentHistoryImplCopyWith<
          _$WatchAllPaymentIntentHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$paymentIntentHistoryReceivedImplCopyWith<$Res> {
  factory _$$paymentIntentHistoryReceivedImplCopyWith(
          _$paymentIntentHistoryReceivedImpl value,
          $Res Function(_$paymentIntentHistoryReceivedImpl) then) =
      __$$paymentIntentHistoryReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems});
}

/// @nodoc
class __$$paymentIntentHistoryReceivedImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$paymentIntentHistoryReceivedImpl>
    implements _$$paymentIntentHistoryReceivedImplCopyWith<$Res> {
  __$$paymentIntentHistoryReceivedImplCopyWithImpl(
      _$paymentIntentHistoryReceivedImpl _value,
      $Res Function(_$paymentIntentHistoryReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$paymentIntentHistoryReceivedImpl(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<PaymentMethodValueFailure, List<PaymentIntent>>,
    ));
  }
}

/// @nodoc

class _$paymentIntentHistoryReceivedImpl
    implements _paymentIntentHistoryReceived {
  const _$paymentIntentHistoryReceivedImpl(this.failedItems);

  @override
  final Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.paymentIntentHistoryReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$paymentIntentHistoryReceivedImpl &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$paymentIntentHistoryReceivedImplCopyWith<
          _$paymentIntentHistoryReceivedImpl>
      get copyWith => __$$paymentIntentHistoryReceivedImplCopyWithImpl<
          _$paymentIntentHistoryReceivedImpl>(this, _$identity);

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
          failedItems) = _$paymentIntentHistoryReceivedImpl;

  Either<PaymentMethodValueFailure, List<PaymentIntent>> get failedItems;
  @JsonKey(ignore: true)
  _$$paymentIntentHistoryReceivedImplCopyWith<
          _$paymentIntentHistoryReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchAllPayoutHistoryImplCopyWith<$Res> {
  factory _$$WatchAllPayoutHistoryImplCopyWith(
          _$WatchAllPayoutHistoryImpl value,
          $Res Function(_$WatchAllPayoutHistoryImpl) then) =
      __$$WatchAllPayoutHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllPayoutHistoryImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$WatchAllPayoutHistoryImpl>
    implements _$$WatchAllPayoutHistoryImplCopyWith<$Res> {
  __$$WatchAllPayoutHistoryImplCopyWithImpl(_$WatchAllPayoutHistoryImpl _value,
      $Res Function(_$WatchAllPayoutHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchAllPayoutHistoryImpl implements _WatchAllPayoutHistory {
  const _$WatchAllPayoutHistoryImpl();

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.watchAllPayoutHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchAllPayoutHistoryImpl);
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
  const factory _WatchAllPayoutHistory() = _$WatchAllPayoutHistoryImpl;
}

/// @nodoc
abstract class _$$PayoutHistoryReceivedImplCopyWith<$Res> {
  factory _$$PayoutHistoryReceivedImplCopyWith(
          _$PayoutHistoryReceivedImpl value,
          $Res Function(_$PayoutHistoryReceivedImpl) then) =
      __$$PayoutHistoryReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems});
}

/// @nodoc
class __$$PayoutHistoryReceivedImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherEventCopyWithImpl<$Res,
        _$PayoutHistoryReceivedImpl>
    implements _$$PayoutHistoryReceivedImplCopyWith<$Res> {
  __$$PayoutHistoryReceivedImplCopyWithImpl(_$PayoutHistoryReceivedImpl _value,
      $Res Function(_$PayoutHistoryReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedItems = null,
  }) {
    return _then(_$PayoutHistoryReceivedImpl(
      null == failedItems
          ? _value.failedItems
          : failedItems // ignore: cast_nullable_to_non_nullable
              as Either<PaymentMethodValueFailure, List<PayoutModel>>,
    ));
  }
}

/// @nodoc

class _$PayoutHistoryReceivedImpl implements _PayoutHistoryReceived {
  const _$PayoutHistoryReceivedImpl(this.failedItems);

  @override
  final Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems;

  @override
  String toString() {
    return 'StripePaymentWatcherEvent.payoutHistoryReceived(failedItems: $failedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutHistoryReceivedImpl &&
            (identical(other.failedItems, failedItems) ||
                other.failedItems == failedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutHistoryReceivedImplCopyWith<_$PayoutHistoryReceivedImpl>
      get copyWith => __$$PayoutHistoryReceivedImplCopyWithImpl<
          _$PayoutHistoryReceivedImpl>(this, _$identity);

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
          failedItems) = _$PayoutHistoryReceivedImpl;

  Either<PaymentMethodValueFailure, List<PayoutModel>> get failedItems;
  @JsonKey(ignore: true)
  _$$PayoutHistoryReceivedImplCopyWith<_$PayoutHistoryReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StripePaymentWatcherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
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
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadAllPaymentMethodsSuccessImplCopyWith<$Res> {
  factory _$$LoadAllPaymentMethodsSuccessImplCopyWith(
          _$LoadAllPaymentMethodsSuccessImpl value,
          $Res Function(_$LoadAllPaymentMethodsSuccessImpl) then) =
      __$$LoadAllPaymentMethodsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CardItem> cards});
}

/// @nodoc
class __$$LoadAllPaymentMethodsSuccessImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$LoadAllPaymentMethodsSuccessImpl>
    implements _$$LoadAllPaymentMethodsSuccessImplCopyWith<$Res> {
  __$$LoadAllPaymentMethodsSuccessImplCopyWithImpl(
      _$LoadAllPaymentMethodsSuccessImpl _value,
      $Res Function(_$LoadAllPaymentMethodsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$LoadAllPaymentMethodsSuccessImpl(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardItem>,
    ));
  }
}

/// @nodoc

class _$LoadAllPaymentMethodsSuccessImpl
    implements _LoadAllPaymentMethodsSuccess {
  const _$LoadAllPaymentMethodsSuccessImpl(final List<CardItem> cards)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllPaymentMethodsSuccessImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllPaymentMethodsSuccessImplCopyWith<
          _$LoadAllPaymentMethodsSuccessImpl>
      get copyWith => __$$LoadAllPaymentMethodsSuccessImplCopyWithImpl<
          _$LoadAllPaymentMethodsSuccessImpl>(this, _$identity);

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
      _$LoadAllPaymentMethodsSuccessImpl;

  List<CardItem> get cards;
  @JsonKey(ignore: true)
  _$$LoadAllPaymentMethodsSuccessImplCopyWith<
          _$LoadAllPaymentMethodsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllPaymentMethodsFailureImplCopyWith<$Res> {
  factory _$$LoadAllPaymentMethodsFailureImplCopyWith(
          _$LoadAllPaymentMethodsFailureImpl value,
          $Res Function(_$LoadAllPaymentMethodsFailureImpl) then) =
      __$$LoadAllPaymentMethodsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodValueFailure<dynamic> failure});

  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAllPaymentMethodsFailureImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$LoadAllPaymentMethodsFailureImpl>
    implements _$$LoadAllPaymentMethodsFailureImplCopyWith<$Res> {
  __$$LoadAllPaymentMethodsFailureImplCopyWithImpl(
      _$LoadAllPaymentMethodsFailureImpl _value,
      $Res Function(_$LoadAllPaymentMethodsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAllPaymentMethodsFailureImpl(
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

class _$LoadAllPaymentMethodsFailureImpl
    implements _LoadAllPaymentMethodsFailure {
  const _$LoadAllPaymentMethodsFailureImpl(this.failure);

  @override
  final PaymentMethodValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPaymentMethodsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllPaymentMethodsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllPaymentMethodsFailureImplCopyWith<
          _$LoadAllPaymentMethodsFailureImpl>
      get copyWith => __$$LoadAllPaymentMethodsFailureImplCopyWithImpl<
          _$LoadAllPaymentMethodsFailureImpl>(this, _$identity);

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
      _$LoadAllPaymentMethodsFailureImpl;

  PaymentMethodValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$LoadAllPaymentMethodsFailureImplCopyWith<
          _$LoadAllPaymentMethodsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllPaymentIntentsSuccessImplCopyWith<$Res> {
  factory _$$LoadAllPaymentIntentsSuccessImplCopyWith(
          _$LoadAllPaymentIntentsSuccessImpl value,
          $Res Function(_$LoadAllPaymentIntentsSuccessImpl) then) =
      __$$LoadAllPaymentIntentsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaymentIntent> paymentIntent});
}

/// @nodoc
class __$$LoadAllPaymentIntentsSuccessImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$LoadAllPaymentIntentsSuccessImpl>
    implements _$$LoadAllPaymentIntentsSuccessImplCopyWith<$Res> {
  __$$LoadAllPaymentIntentsSuccessImplCopyWithImpl(
      _$LoadAllPaymentIntentsSuccessImpl _value,
      $Res Function(_$LoadAllPaymentIntentsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIntent = null,
  }) {
    return _then(_$LoadAllPaymentIntentsSuccessImpl(
      null == paymentIntent
          ? _value._paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as List<PaymentIntent>,
    ));
  }
}

/// @nodoc

class _$LoadAllPaymentIntentsSuccessImpl
    implements _LoadAllPaymentIntentsSuccess {
  const _$LoadAllPaymentIntentsSuccessImpl(
      final List<PaymentIntent> paymentIntent)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllPaymentIntentsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentIntent, _paymentIntent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentIntent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllPaymentIntentsSuccessImplCopyWith<
          _$LoadAllPaymentIntentsSuccessImpl>
      get copyWith => __$$LoadAllPaymentIntentsSuccessImplCopyWithImpl<
          _$LoadAllPaymentIntentsSuccessImpl>(this, _$identity);

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
      _$LoadAllPaymentIntentsSuccessImpl;

  List<PaymentIntent> get paymentIntent;
  @JsonKey(ignore: true)
  _$$LoadAllPaymentIntentsSuccessImplCopyWith<
          _$LoadAllPaymentIntentsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllPaymentIntentsFailureImplCopyWith<$Res> {
  factory _$$LoadAllPaymentIntentsFailureImplCopyWith(
          _$LoadAllPaymentIntentsFailureImpl value,
          $Res Function(_$LoadAllPaymentIntentsFailureImpl) then) =
      __$$LoadAllPaymentIntentsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodValueFailure<dynamic> failure});

  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAllPaymentIntentsFailureImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$LoadAllPaymentIntentsFailureImpl>
    implements _$$LoadAllPaymentIntentsFailureImplCopyWith<$Res> {
  __$$LoadAllPaymentIntentsFailureImplCopyWithImpl(
      _$LoadAllPaymentIntentsFailureImpl _value,
      $Res Function(_$LoadAllPaymentIntentsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAllPaymentIntentsFailureImpl(
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

class _$LoadAllPaymentIntentsFailureImpl
    implements _LoadAllPaymentIntentsFailure {
  const _$LoadAllPaymentIntentsFailureImpl(this.failure);

  @override
  final PaymentMethodValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPaymentIntentsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllPaymentIntentsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllPaymentIntentsFailureImplCopyWith<
          _$LoadAllPaymentIntentsFailureImpl>
      get copyWith => __$$LoadAllPaymentIntentsFailureImplCopyWithImpl<
          _$LoadAllPaymentIntentsFailureImpl>(this, _$identity);

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
      _$LoadAllPaymentIntentsFailureImpl;

  PaymentMethodValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$LoadAllPaymentIntentsFailureImplCopyWith<
          _$LoadAllPaymentIntentsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllPayoutsSuccessImplCopyWith<$Res> {
  factory _$$LoadAllPayoutsSuccessImplCopyWith(
          _$LoadAllPayoutsSuccessImpl value,
          $Res Function(_$LoadAllPayoutsSuccessImpl) then) =
      __$$LoadAllPayoutsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PayoutModel> payoutModel});
}

/// @nodoc
class __$$LoadAllPayoutsSuccessImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$LoadAllPayoutsSuccessImpl>
    implements _$$LoadAllPayoutsSuccessImplCopyWith<$Res> {
  __$$LoadAllPayoutsSuccessImplCopyWithImpl(_$LoadAllPayoutsSuccessImpl _value,
      $Res Function(_$LoadAllPayoutsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payoutModel = null,
  }) {
    return _then(_$LoadAllPayoutsSuccessImpl(
      null == payoutModel
          ? _value._payoutModel
          : payoutModel // ignore: cast_nullable_to_non_nullable
              as List<PayoutModel>,
    ));
  }
}

/// @nodoc

class _$LoadAllPayoutsSuccessImpl implements _LoadAllPayoutsSuccess {
  const _$LoadAllPayoutsSuccessImpl(final List<PayoutModel> payoutModel)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllPayoutsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._payoutModel, _payoutModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_payoutModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllPayoutsSuccessImplCopyWith<_$LoadAllPayoutsSuccessImpl>
      get copyWith => __$$LoadAllPayoutsSuccessImplCopyWithImpl<
          _$LoadAllPayoutsSuccessImpl>(this, _$identity);

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
      _$LoadAllPayoutsSuccessImpl;

  List<PayoutModel> get payoutModel;
  @JsonKey(ignore: true)
  _$$LoadAllPayoutsSuccessImplCopyWith<_$LoadAllPayoutsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllPayoutsFailureImplCopyWith<$Res> {
  factory _$$LoadAllPayoutsFailureImplCopyWith(
          _$LoadAllPayoutsFailureImpl value,
          $Res Function(_$LoadAllPayoutsFailureImpl) then) =
      __$$LoadAllPayoutsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodValueFailure<dynamic> failure});

  $PaymentMethodValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$LoadAllPayoutsFailureImplCopyWithImpl<$Res>
    extends _$StripePaymentWatcherStateCopyWithImpl<$Res,
        _$LoadAllPayoutsFailureImpl>
    implements _$$LoadAllPayoutsFailureImplCopyWith<$Res> {
  __$$LoadAllPayoutsFailureImplCopyWithImpl(_$LoadAllPayoutsFailureImpl _value,
      $Res Function(_$LoadAllPayoutsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadAllPayoutsFailureImpl(
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

class _$LoadAllPayoutsFailureImpl implements _LoadAllPayoutsFailure {
  const _$LoadAllPayoutsFailureImpl(this.failure);

  @override
  final PaymentMethodValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'StripePaymentWatcherState.loadAllPayoutsFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllPayoutsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAllPayoutsFailureImplCopyWith<_$LoadAllPayoutsFailureImpl>
      get copyWith => __$$LoadAllPayoutsFailureImplCopyWithImpl<
          _$LoadAllPayoutsFailureImpl>(this, _$identity);

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
      _$LoadAllPayoutsFailureImpl;

  PaymentMethodValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$LoadAllPayoutsFailureImplCopyWith<_$LoadAllPayoutsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
