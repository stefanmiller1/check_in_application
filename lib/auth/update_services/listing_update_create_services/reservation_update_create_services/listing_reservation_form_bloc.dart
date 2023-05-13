part of check_in_application;

@injectable
class ReservationFormBloc extends Bloc<ReservationFormEvent, ReservationFormState> {

  final facade.RUpdaterFacade _reservationFormFacade;
  final facade.SStripeFacade _stripeFacade;

  ReservationFormBloc(this._reservationFormFacade, this._stripeFacade) : super(ReservationFormState.initial());

  @override
  Stream<ReservationFormState> mapEventToState(
      ReservationFormEvent event) async* {

    yield* event.map(

      initializedReservation: (e) async* {
          yield e.initialBooking.fold(
                  () => state,
                  (booking) => state.copyWith(
                      newFacilityBooking: booking,
                      listing: e.initListing.fold(
                          () => state.listing,
                          (listing) => listing,
                      ),
                      authFailureOrSuccessOption: none()
            ),
          );
        },

      initialSelectedSpaceDetailChanged: (e) async* {

      },

      updateBookingItemList: (e) async* {
        yield state.copyWith(
          newFacilityBooking: ReservationItem(
              reservationId: state.newFacilityBooking.reservationId,
              reservationOwnerId: state.newFacilityBooking.reservationOwnerId,
              instanceId: state.newFacilityBooking.instanceId,
              reservationAffiliates: state.newFacilityBooking.reservationAffiliates,
              reservationCost: completeTotalPriceWithCurrency(getTotalPriceDouble(e.slotItem, state.newFacilityBooking.cancelledSlotItem ?? []) + getTotalPriceDouble(e.slotItem, state.newFacilityBooking.cancelledSlotItem ?? [])*CICOReservationPercentageFee + getTotalPriceDouble(e.slotItem, state.newFacilityBooking.cancelledSlotItem ?? [])*CICOTaxesFee, e.currency),
              reservationSlotItem: e.slotItem,
              cancelledSlotItem: state.newFacilityBooking.cancelledSlotItem,
              reservationState: state.newFacilityBooking.reservationState,
              customFieldRuleSetting: state.newFacilityBooking.customFieldRuleSetting,
              checkInSetting: state.newFacilityBooking.checkInSetting,
              dateCreated: state.newFacilityBooking.dateCreated,
              paymentIntentId: state.newFacilityBooking.paymentIntentId,
              paymentStatus: state.newFacilityBooking.paymentStatus,
          )
        );
      },

      updateCancellationItemList: (e) async* {
        yield state.copyWith(
          newFacilityBooking: ReservationItem(
            reservationId: state.newFacilityBooking.reservationId,
            reservationOwnerId: state.newFacilityBooking.reservationOwnerId,
            instanceId: state.newFacilityBooking.instanceId,
            reservationAffiliates: state.newFacilityBooking.reservationAffiliates,
            reservationCost: completeTotalPriceWithCurrency(getTotalPriceDouble(e.slotItem, state.newFacilityBooking.cancelledSlotItem ?? []) + getTotalPriceDouble(e.slotItem, state.newFacilityBooking.cancelledSlotItem ?? [])*CICOReservationPercentageFee + getTotalPriceDouble(e.slotItem, state.newFacilityBooking.cancelledSlotItem ?? [])*CICOTaxesFee, e.currency),
            reservationSlotItem: state.newFacilityBooking.reservationSlotItem,
            cancelledSlotItem: e.slotItem,
            reservationState: state.newFacilityBooking.reservationState,
            customFieldRuleSetting: state.newFacilityBooking.customFieldRuleSetting,
            checkInSetting: state.newFacilityBooking.checkInSetting,
            dateCreated: state.newFacilityBooking.dateCreated,
            paymentIntentId: state.newFacilityBooking.paymentIntentId,
            paymentStatus: state.newFacilityBooking.paymentStatus,
          )
        );
      },

      updateCustomRules: (e) async* {
          yield state.copyWith(
            newFacilityBooking: ReservationItem(
              reservationId: state.newFacilityBooking.reservationId,
              reservationOwnerId: state.newFacilityBooking.reservationOwnerId,
              instanceId: state.newFacilityBooking.instanceId,
              reservationAffiliates: state.newFacilityBooking.reservationAffiliates,
              reservationCost: state.newFacilityBooking.reservationCost,
              reservationSlotItem: state.newFacilityBooking.reservationSlotItem,
              cancelledSlotItem: state.newFacilityBooking.cancelledSlotItem,
              reservationState: state.newFacilityBooking.reservationState,
              customFieldRuleSetting: e.rules,
              checkInSetting: state.newFacilityBooking.checkInSetting,
              dateCreated: state.newFacilityBooking.dateCreated,
              paymentIntentId: state.newFacilityBooking.paymentIntentId,
              paymentStatus: state.newFacilityBooking.paymentStatus,
            )
          );
      },

      updateBookingAffiliates: (e) async* {
        yield state.copyWith(
            newFacilityBooking: ReservationItem(
              reservationId: state.newFacilityBooking.reservationId,
              reservationOwnerId: state.newFacilityBooking.reservationOwnerId,
              instanceId: state.newFacilityBooking.instanceId,
              reservationAffiliates: e.activityId,
              reservationCost: state.newFacilityBooking.reservationCost,
              reservationSlotItem: state.newFacilityBooking.reservationSlotItem,
              cancelledSlotItem: state.newFacilityBooking.cancelledSlotItem,
              reservationState: state.newFacilityBooking.reservationState,
              customFieldRuleSetting: state.newFacilityBooking.customFieldRuleSetting,
              checkInSetting: state.newFacilityBooking.checkInSetting,
              dateCreated: state.newFacilityBooking.dateCreated,
              paymentIntentId: state.newFacilityBooking.paymentIntentId,
              paymentStatus: state.newFacilityBooking.paymentStatus,
          )
        );
      },

      isTermsConditionsChanged: (e) async* {
         yield state.copyWith(
             isTermsConditionsAccepted: e.terms
         );
      },

      isSavingCardDetails: (e) async* {
        yield state.copyWith(
            isSavingCard: e.save
        );
      },

      selectedActivityTypeChanged: (e) async* {
        yield state.copyWith(
          selectedActivityType: e.activityType
        );
      },


      selectedDateChanged: (e) async* {
        yield state.copyWith(
          selectedDate: e.date
        );
      },

      spaceDetailChanged: (e) async* {
          yield state.copyWith(
            currentSelectedSpace: e.spaceOption
          );
      },

      selectedSizeOptionChanged: (e) async* {
          yield state.copyWith(
            currentSelectedSpaceOption: e.spaceSizeOption
          );
      },

      selectedIntervalChanged: (e) async* {
          yield state.copyWith(
              // selectedSlotInterval: e.intervalInt
          );
      },


      cardItemChanged: (e) async* {
          yield state.copyWith(
            cardItem: e.cardItem
          );
      },

      isFinishedConfirmPaymentIntent: (e) async* {
        Either<ReservationFormFailure, Unit> failureOrSuccess;
        Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          authPaymentFailureOrSuccessOption: none(),
        );

        // failurePaymentClientFailureOrSuccess = state.isSubmitting ? left(PaymentMethodValueFailure.paymentServerError()) : await _stripeFacade.confirmExistingPaymentIntent(paymentIntentId: e.paymentIntentId);
        // failureOrSuccess = await failurePaymentClientFailureOrSuccess.fold(
        //         (l) => left(ReservationFormFailure.reservationServerError()),
        //         (paymentIntent) => _reservationFormFacade.createReservationForm(reservationForm: state.newFacilityBooking, paymentIntentId: paymentIntent.stringItemOne)
        // );
        //
        //
        // yield state.copyWith(
        //     authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
        //     authFailureOrSuccessOption: optionOf(failureOrSuccess),
        //     isSubmitting: false
        // );
      },

      createPaymentIntentForBooking: (e) async* {
        Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;
        Either<ReservationFormFailure, Unit> failureOrSuccess;

        final isInstanceValid = state.newFacilityBooking.instanceId.isValid();
        final isValid = state.newFacilityBooking.reservationId.isValid();

        if (isInstanceValid && isValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
            authPaymentFailureOrSuccessOption: none(),
          );

          if (isAllDatesValid(state.newFacilityBooking.reservationSlotItem)) {
            failureOrSuccess = left(ReservationFormFailure.datesNoLongerAvailable(currentRes: invalidReservationItems(state.newFacilityBooking.reservationSlotItem)));
            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
            );
            return;
          }

          // failurePaymentClientFailureOrSuccess = state.isSubmitting ?
          // left(PaymentMethodValueFailure.couldNotRetrievePaymentMethod()) :
          // await _stripeFacade.processAndConfirmPaymentAsDirectCharge(
          //     userProfile: e.profile,
          //     reservationItem: state.newFacilityBooking,
          //     amount: e.amount,
          //     currency: e.currency,
          //     paymentMethod: e.paymentMethod);
          //
          //
          // yield state.copyWith(
          //     isSubmitting: false,
          //     authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
          // );
        }
      },

      createReservationFormForBooking: (e) async* {

        Either<ReservationFormFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await state.authPaymentFailureOrSuccessOption.fold(
                () => left(const ReservationFormFailure.reservationServerError()),
                (r) => r.fold(
                        (l) =>  left(const ReservationFormFailure.reservationServerError()),
                        (r) => _reservationFormFacade.createReservationForm(
                            reservationForm: state.newFacilityBooking,
                            listing: state.listing,
                            paymentIntentId: r.stringItemTwo)
                )
        );

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess)
        );

      },


      isFinishedCreatingBooking: (e) async* {
          Either<ReservationFormFailure, Unit> failureOrSuccess;
          Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;

          final isInstanceValid = state.newFacilityBooking.instanceId.isValid();
          final isValid = state.newFacilityBooking.reservationId.isValid();


          if (isInstanceValid && isValid) {
            yield state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
                authPaymentFailureOrSuccessOption: none(),
            );

            if (isAllDatesValid(state.newFacilityBooking.reservationSlotItem)) {
              failureOrSuccess = left(ReservationFormFailure.datesNoLongerAvailable(currentRes: invalidReservationItems(state.newFacilityBooking.reservationSlotItem)));
              yield state.copyWith(
                  isSubmitting: false,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess)
              );
              return;
            }


            failurePaymentClientFailureOrSuccess = await _stripeFacade.processAndConfirmPaymentAsDirectCharge(
                userProfile: e.profile,
                reservationItem: state.newFacilityBooking,
                amount: e.amount,
                currency: e.currency,
                paymentMethod: e.paymentMethod);

            failureOrSuccess = await failurePaymentClientFailureOrSuccess.fold(
                    (l) => left(const ReservationFormFailure.waitingForPaymentConfirmation()),
                    (r) => _reservationFormFacade.createReservationForm(
                        reservationForm: state.newFacilityBooking,
                        listing: state.listing,
                        paymentIntentId: r.stringItemTwo)
            );


            yield state.copyWith(
                authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
                isSubmitting: false
          );
        }
      },


      isFinishedCreatingBookingMobile: (e) async* {
        Either<ReservationFormFailure, Unit> failureOrSuccess;
        Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;


        final isInstanceValid = state.newFacilityBooking.instanceId.isValid();
        final isValid = state.newFacilityBooking.reservationId.isValid();

        if (isInstanceValid && isValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
            authPaymentFailureOrSuccessOption: none(),
          );

          if (isAllDatesValid(state.newFacilityBooking.reservationSlotItem)) {
            failureOrSuccess = left(ReservationFormFailure.datesNoLongerAvailable(currentRes: invalidReservationItems(state.newFacilityBooking.reservationSlotItem)));
            yield state.copyWith(
                isSubmitting: false,
                authPaymentFailureOrSuccessOption: none(),
                authFailureOrSuccessOption: optionOf(failureOrSuccess)
            );
            return;
          }

          failurePaymentClientFailureOrSuccess = state.isSubmitting ? left(PaymentMethodValueFailure.couldNotRetrievePaymentMethod()) : await _stripeFacade.processAndConfirmPaymentAsDirectCharge(
              userProfile: e.profile,
              reservationItem: state.newFacilityBooking,
              amount: e.amount,
              currency: e.currency,
              paymentMethod: e.paymentMethod);


          yield state.copyWith(
              authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
              authFailureOrSuccessOption: none(),
              isSubmitting: false
          );

        }
      },



      isFinishedReservationCancelRefund: (e) async* {
        Either<ReservationFormFailure, Unit> failureOrSuccess;
        Either<PaymentMethodValueFailure, StringStringItems> paymentClientFailureOrSuccess;

        final isValid = state.newFacilityBooking.reservationId.isValid();

        if (e.reasonResponse.isNotEmpty && isValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
            authPaymentFailureOrSuccessOption: none(),
          );

          // paymentClientFailureOrSuccess = state.isSubmitting ?
          // left(PaymentMethodValueFailure.paymentServerError()) :
          // await _stripeFacade.refundExistingStripePayment(paymentIntent: state.newFacilityBooking.paymentIntentId, refundAmount: e.amount);
          //
          // failureOrSuccess = await paymentClientFailureOrSuccess.fold(
          //         (l) => left(ReservationFormFailure.reservationServerError()),
          //         (r) => _reservationFormFacade.cancelReservationForm(cancelRequest: ReservationCancelRequest(
          //             cancellationType: e.cancelType,
          //             stripeRefundId: r.stringItemOne,
          //             cancellationResponse: e.reasonResponse),
          //           reservationForm: state.newFacilityBooking
          //   )
          // );
          //
          // yield state.copyWith(
          //     authPaymentFailureOrSuccessOption: optionOf(paymentClientFailureOrSuccess),
          //     authFailureOrSuccessOption: optionOf(failureOrSuccess),
          //     isSubmitting: false
          // );
        }
      },


      isFinishedChangeEditsRequest: (e) async* {
        Either<ReservationFormFailure, Unit> failureOrSuccess;

        final isInstanceValid = state.newFacilityBooking.instanceId.isValid();
        final isValid = state.newFacilityBooking.reservationId.isValid();

        if (isInstanceValid && isValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          if (isAllDatesValid(state.newFacilityBooking.reservationSlotItem)) {
            failureOrSuccess = left(ReservationFormFailure.datesNoLongerAvailable(currentRes: invalidReservationItems(state.newFacilityBooking.reservationSlotItem)));
            yield state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: optionOf(failureOrSuccess)
            );
            return;
          }


          failureOrSuccess = state.isSubmitting ? left(ReservationFormFailure.reservationServerError()) : await _reservationFormFacade.updateReservationFormRequest(reservationForm: state.newFacilityBooking);


          yield state.copyWith(
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
              isSubmitting: false
          );
        }
      },
    );



  }
}