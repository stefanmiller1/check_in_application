part of 'stripe_payment_watcher_bloc.dart';

@freezed
class StripePaymentWatcherEvent with _$StripePaymentWatcherEvent {

  const factory StripePaymentWatcherEvent.watchAllPaymentMethods(String customerId) = _WatchAllPaymentMethods;
  const factory StripePaymentWatcherEvent.paymentMethodsReceived(Either<PaymentMethodValueFailure, List<CardItem>> failedItems) = _PaymentMethodsReceived;

  const factory StripePaymentWatcherEvent.watchAllPaymentIntentHistory(String customerId) = _WatchAllPaymentIntentHistory;
  const factory StripePaymentWatcherEvent.paymentIntentHistoryReceived(Either<PaymentMethodValueFailure, List<PaymentIntent>> failedItems) = _paymentIntentHistoryReceived;

  const factory StripePaymentWatcherEvent.watchAllPayoutHistory() = _WatchAllPayoutHistory;
  const factory StripePaymentWatcherEvent.payoutHistoryReceived(Either<PaymentMethodValueFailure, List<PayoutModel>> failedItems) = _PayoutHistoryReceived;

}