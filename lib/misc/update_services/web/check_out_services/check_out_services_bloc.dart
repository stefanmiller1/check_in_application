part of check_in_application;

@injectable
class CheckOutServicesBloc extends Bloc<CheckOutServicesEvent, CheckOutServicesState> {

  final facade.SStripeFacade _stripeFacade;

  CheckOutServicesBloc(this._stripeFacade) : super(CheckOutServicesState.initial());

  @override
  Stream<CheckOutServicesState> mapEventToState(
      CheckOutServicesEvent event) async* {

    yield* event.map(

        initializeCheckOutService: (e) async* {
              yield e.initReservation.fold(
                  () => state,
                  (reservation) => state.copyWith(
                      reservationItem: reservation,
                      listingOwner: e.initListingOwner.fold(
                          () => state.listingOwner,
                          (listingOwner) => listingOwner
              )
            ),
          );

          if (e.cardItemsNotAvailable) {
            Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;

            yield state.copyWith(
              isSubmitting: true,
              authPaymentFailureOrSuccessOption: none(),
            );

            failurePaymentClientFailureOrSuccess = await _stripeFacade.processAndConfirmPaymentAsDirectCharge(
                userProfile: e.profile,
                reservationId: state.reservationItem.reservationId,
                listingId: state.reservationItem.instanceId,
                listingOwnerStripeId: state.listingOwner.stripeAccountId,
                amount: e.amount,
                currency: e.currency,
                paymentMethod: null,
                description: e.description
            );

            yield state.copyWith(
              isSubmitting: false,
              authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
            );
          }

        },

        createPaymentIntent: (e) async* {
          Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;

          yield state.copyWith(
            isSubmitting: true,
            authPaymentFailureOrSuccessOption: none(),
          );

          failurePaymentClientFailureOrSuccess = await _stripeFacade.processAndConfirmPaymentAsDirectCharge(
              userProfile: e.profile,
              reservationId: state.reservationItem.reservationId,
              listingId: state.reservationItem.instanceId,
              listingOwnerStripeId: state.listingOwner.stripeAccountId,
              amount: e.amount,
              currency: e.currency,
              paymentMethod: e.paymentMethod,
              description: e.description
          );

          yield state.copyWith(
            isSubmitting: false,
            authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
          );
        },



        confirmPaymentIntent: (e) async* {
          Either<PaymentMethodValueFailure, StringStringItems> failureConfirmationFailureOrSuccess;

          yield state.copyWith(
            isSubmitting: true,
            authPaymentConfirmationFailureOrSuccessOption: none(),
          );

          failureConfirmationFailureOrSuccess = state.isSubmitting ? left(PaymentMethodValueFailure.paymentServerError()) : await _stripeFacade.confirmExistingPaymentIntent(paymentIntentId: e.paymentId);

          yield state.copyWith(
              authPaymentConfirmationFailureOrSuccessOption: optionOf(failureConfirmationFailureOrSuccess),
              isSubmitting: false
          );

        },

        isFinishedPaymentIntent: (e) async* {

      },
    );
  }
}