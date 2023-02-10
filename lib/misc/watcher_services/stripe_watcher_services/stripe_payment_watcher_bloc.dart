import 'dart:async';

import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_facade/check_in_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stripe_payment_watcher_event.dart';
part 'stripe_payment_watcher_state.dart';
part 'stripe_payment_watcher_bloc.freezed.dart';

@injectable
class StripePaymentWatcherBloc extends Bloc<StripePaymentWatcherEvent, StripePaymentWatcherState> {

  final SStripeWatcherFacade _stripeWFacade;

  StripePaymentWatcherBloc(this._stripeWFacade) : super(StripePaymentWatcherState.initial());

  StreamSubscription<Either<PaymentMethodValueFailure, List<CardItem>>>? _paymentMethodsSubscription;
  StreamSubscription<Either<PaymentMethodValueFailure, List<PaymentIntent>>>? _paymentIntentSubscription;
  StreamSubscription<Either<PaymentMethodValueFailure, List<PayoutModel>>>? _payoutHistorySubscription;

  @override
  Stream<StripePaymentWatcherState> mapEventToState(
      StripePaymentWatcherEvent event
      ) async* {

    yield* event.map(

        watchAllPaymentMethods: (e) async* {
          yield const StripePaymentWatcherState.loadInProgress();
          await _paymentMethodsSubscription?.cancel();

          _paymentMethodsSubscription = _stripeWFacade.watchCustomerPaymentMethod(customerId: e.customerId).listen((event) {
            return add(StripePaymentWatcherEvent.paymentMethodsReceived(event));
          });
        },

        paymentMethodsReceived: (e) async* {

          yield e.failedItems.fold(
                  (f) => StripePaymentWatcherState.loadAllPaymentMethodsFailure(f),
                  (r) => StripePaymentWatcherState.loadAllPaymentMethodsSuccess(r)
          );
        },

        watchAllPaymentIntentHistory: (e) async* {
          yield const StripePaymentWatcherState.loadInProgress();
          await _paymentIntentSubscription?.cancel();

          _paymentIntentSubscription = _stripeWFacade.watchCustomerPaymentIntents(customerId: e.customerId).listen((event) {
              return add(StripePaymentWatcherEvent.paymentIntentHistoryReceived(event));
          });
        },


        paymentIntentHistoryReceived: (e) async* {

          yield e.failedItems.fold(
                  (f) => StripePaymentWatcherState.loadAllPaymentIntentsFailure(f),
                  (r) => StripePaymentWatcherState.loadAllPaymentIntentsSuccess(r)
          );
        },


        watchAllPayoutHistory: (e) async*  {
          yield const StripePaymentWatcherState.loadInProgress();
          await _payoutHistorySubscription?.cancel();

          _payoutHistorySubscription = _stripeWFacade.watchPayoutHistory().listen((event) {
            return add(StripePaymentWatcherEvent.payoutHistoryReceived(event));
          });
        },

        payoutHistoryReceived: (e) async* {
            yield e.failedItems.fold(
                    (f) => StripePaymentWatcherState.loadAllPayoutsFailure(f),
                    (r) => StripePaymentWatcherState.loadAllPayoutsSuccess(r)
            );
        }

    );

  }
}