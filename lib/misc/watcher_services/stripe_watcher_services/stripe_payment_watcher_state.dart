part of 'stripe_payment_watcher_bloc.dart';

@freezed
class StripePaymentWatcherState with _$StripePaymentWatcherState {

  const factory StripePaymentWatcherState.initial() = _Initial;
  const factory StripePaymentWatcherState.loadInProgress() = _LoadInProgress;

  const factory StripePaymentWatcherState.loadAllPaymentMethodsSuccess(List<CardItem> cards) = _LoadAllPaymentMethodsSuccess;
  const factory StripePaymentWatcherState.loadAllPaymentMethodsFailure(PaymentMethodValueFailure failure) = _LoadAllPaymentMethodsFailure;

  const factory StripePaymentWatcherState.loadAllPaymentIntentsSuccess(List<PaymentIntent> paymentIntent) = _LoadAllPaymentIntentsSuccess;
  const factory StripePaymentWatcherState.loadAllPaymentIntentsFailure(PaymentMethodValueFailure failure) = _LoadAllPaymentIntentsFailure;

  const factory StripePaymentWatcherState.loadAllPayoutsSuccess(List<PayoutModel> payoutModel) = _LoadAllPayoutsSuccess;
  const factory StripePaymentWatcherState.loadAllPayoutsFailure(PaymentMethodValueFailure failure) = _LoadAllPayoutsFailure;

}