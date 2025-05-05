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
          yield e.initialReservation.fold(
          () => state,
          (reservation) => state.copyWith(
              reservationItem: reservation,
              authFailureOrSuccessPublishOption: none(),
              authFailureOrSuccessSavingOption: none()
            ),
          );
        },

      isSavingReservation: (e) async* {
        yield state.copyWith(
          isSaving: !state.isSaving
        );  
      },

      didChangeReservationFormStatus: (e) async* {
          yield state.copyWith(
            reservationItem: state.reservationItem.copyWith(
              formStatus: e.status
            ),
          isEditingForm: true,
        );
      },

      didChangeReservationIsPrivate: (e) async* {
          yield state.copyWith(
            reservationItem: state.reservationItem.copyWith(
              isPrivate: e.isPrivate
          )
        );
      },

      didChangeFacilityId: (e) async* {
        yield state.copyWith(
          reservationItem: state.reservationItem.copyWith(
            instanceId: e.facilityId
          ),
          isEditingForm: true
        );

  
      },

      didChangeLinkedCircles: (e) async* {
          yield state.copyWith(
              reservationItem: state.reservationItem.copyWith(
                linkedCircles: e.linkedCircles
          )
        );
      },

  
      didChangeReservationSlotItems: (e) async* {
        yield state.copyWith(
          reservationItem: state.reservationItem.copyWith(
            reservationSlotItem: e.slotItem,
            reservationCost: completeTotalPriceWithCurrency(getListingTotalPriceDouble(e.slotItem, state.reservationItem.cancelledSlotItem ?? []) + getListingTotalPriceDouble(e.slotItem, state.reservationItem.cancelledSlotItem ?? [])*CICOBuyerPercentageFee + getListingTotalPriceDouble(e.slotItem, state.reservationItem.cancelledSlotItem ?? [])*CICOTaxesFee, e.currency)
          ),
          isEditingForm: true
        );
        
      },

      didChangeReservationCheckInSettings: (e) async* {
        yield state.copyWith(
            reservationItem: state.reservationItem.copyWith(
                checkInSetting: e.checkInSettings
          ),
          isEditingForm: true
        );
      },

      didChangeReservationCustomRules: (e) async* {
        yield state.copyWith(
            reservationItem: state.reservationItem.copyWith(
                customFieldRuleSetting: e.customRules
          ),
          isEditingForm: true
        );
      },


      didChangeReservationAffiliates: (e) async* {
        yield state.copyWith(
            reservationItem: state.reservationItem.copyWith(
                reservationAffiliates: e.affiliates 
          ),
          isEditingForm: true
        );
      },

      isTermsConditionsChanged: (e) async* {
         yield state.copyWith(
             isTermsConditionsAccepted: e.terms
         );
      },

      didFinishPublishingReservation: (e) async* {
          Either<ReservationFormFailure, Unit> failureOrSuccess;
          
          yield state.copyWith(
            isPublishing: true,
            authFailureOrSuccessPublishOption: none(),
          );

      
      if (state.reservationItem.instanceId.isValid()) {
        failureOrSuccess = await _reservationFormFacade.createReservationForm(
              reservationForm: state.reservationItem.copyWith(
                formStatus: FormStatus.published,
                reservationState: ReservationSlotState.confirmed,
              ),
              listingForm: e.facility,
              activityForm: e.activityForm,
              paymentIntentId: ''
          );

          yield state.copyWith(
            isPublishing: false,
            showErrorMessages: AutovalidateMode.disabled,
            authFailureOrSuccessPublishOption: optionOf(failureOrSuccess)
          );
      } else {
        yield state.copyWith(
            isPublishing: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrSuccessPublishOption: optionOf(left(ReservationFormFailure.reservationServerError(failed: 'Unable to Publish Reservation - Please try again later.')))
          );
      }
          

      },

      didFinishSavingReservation: (e) async* {
          Either<ReservationFormFailure, Unit> failureOrSuccess;
          
          yield state.copyWith(
          isSaving: true,
          authFailureOrSuccessSavingOption: none()
        );

        failureOrSuccess = await _reservationFormFacade.createReservationForm(
            reservationForm: state.reservationItem,
            listingForm: e.facility,
            activityForm: e.activityForm,
            paymentIntentId: ''
        );

        yield state.copyWith(
          isSaving: false,
          authFailureOrSuccessSavingOption: optionOf(failureOrSuccess)
        );

      },

      isFinishedCreatingReservationWeb: (e) async* {
        Either<ReservationFormFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isPublishing: true,
          authFailureOrSuccessPublishOption: none()
        );

        failureOrSuccess = await _reservationFormFacade.createReservationForm(
            reservationForm: state.reservationItem,
            listingForm: null,
            activityForm: null,
            paymentIntentId: e.paymentIntentId
        );

        yield state.copyWith(
          isPublishing: false,
          authFailureOrSuccessPublishOption: optionOf(failureOrSuccess)
        );
      },

      isFinishedCreatingReservation: (e) async* {
          Either<ReservationFormFailure, Unit> failureOrSuccess;
          Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;

          final isInstanceValid = state.reservationItem.instanceId.isValid();
          final isValid = state.reservationItem.reservationId.isValid();

          if (isInstanceValid && isValid) {
            yield state.copyWith(
                isPublishing: true,
                authFailureOrSuccessPublishOption: none(),
                authPaymentFailureOrSuccessOption: none(),
            );

            if (isAllDatesValid(state.reservationItem.reservationSlotItem)) {
              failureOrSuccess = left(ReservationFormFailure.datesNoLongerAvailable(currentRes: invalidReservationItems(state.reservationItem.reservationSlotItem)));
              yield state.copyWith(
                  isPublishing: false,
                  authFailureOrSuccessPublishOption: optionOf(failureOrSuccess)
              );
              return;
            }

            if (e.amount == 0) {

              failureOrSuccess = await _reservationFormFacade.createReservationForm(
                  reservationForm: state.reservationItem,
                  listingForm: null,
                  activityForm: null,
                  paymentIntentId: ''
              );

              yield state.copyWith(
                  authPaymentFailureOrSuccessOption: none(),
                  authFailureOrSuccessPublishOption: optionOf(failureOrSuccess),
                  isPublishing: false
              );

            } else {

            failurePaymentClientFailureOrSuccess = await _stripeFacade.processAndConfirmPaymentAsDirectCharge(
                userProfile: e.profile,
                reservationId: state.reservationItem.reservationId,
                listingId: state.reservationItem.instanceId,
                listingOwnerStripeId: '',
                amount: e.amount.toString(),
                currency: e.currency,
                paymentMethod: e.paymentMethod,
                description: 'Reservation to be made for a specific Listing posted on CICO.'
            );


            failureOrSuccess = await failurePaymentClientFailureOrSuccess.fold(
                    (l) => left(const ReservationFormFailure.waitingForPaymentConfirmation()),
                    (r) => _reservationFormFacade.createReservationForm(
                      reservationForm: state.reservationItem,
                      listingForm: null,
                      activityForm: null,
                      paymentIntentId: r.stringItemTwo
              )
            );


                yield state.copyWith(
                    authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
                    authFailureOrSuccessPublishOption: optionOf(failureOrSuccess),
                    isPublishing: false
            );
          }
        }
      }, 
      
      
      

      // isFinishedReservationCancelRefund: (e) async* {
      //   Either<ReservationFormFailure, Unit> failureOrSuccess;
      //   Either<PaymentMethodValueFailure, List<StripeRefundModel>> authRefundFailureOrSuccessOption;

      //   final isValid = state.reservationItem.reservationId.isValid();

      //   if (e.reasonResponse.isNotEmpty && isValid) {
      //     yield state.copyWith(
      //       isPublishing: true,
      //       authFailureOrSuccessOption: none(),
      //       authRefundFailureOrSuccessOption: none(),
      //     );

      //     authRefundFailureOrSuccessOption = state.isPublishing ?
      //     left(PaymentMethodValueFailure.paymentServerError()) :
      //     await _stripeFacade.refundExistingStripePayment(
      //         payments:  [PaymentIntent(id: state.reservationItem.paymentIntentId)],
      //         refundAmount: e.amount
      //     );

      //     failureOrSuccess = await authRefundFailureOrSuccessOption.fold(
      //             (l) => left(ReservationFormFailure.reservationServerError()),
      //             (r) => _reservationFormFacade.cancelReservationForm(cancelRequest: ReservationCancelRequest(
      //                 cancellationType: e.cancelType,
      //                 stripeRefundId: r.first.id ?? '',
      //                 cancellationResponse: e.reasonResponse),
      //               reservationForm: state.reservationItem
      //       )
      //     );

      //     yield state.copyWith(
      //         authRefundFailureOrSuccessOption: optionOf(authRefundFailureOrSuccessOption),
      //         authFailureOrSuccessOption: optionOf(failureOrSuccess),
      //         isPublishing: false
      //     );
      //   }
      // },


      // isFinishedChangeEditsRequest: (e) async* {
      //   Either<ReservationFormFailure, Unit> failureOrSuccess;

      //   final isInstanceValid = state.reservationItem.instanceId.isValid();
      //   final isValid = state.reservationItem.reservationId.isValid();

      //   if (isInstanceValid && isValid) {
      //     yield state.copyWith(
      //       isPublishing: true,
      //       authFailureOrSuccessOption: none(),
      //     );

      //     if (isAllDatesValid(state.reservationItem.reservationSlotItem)) {
      //       failureOrSuccess = left(ReservationFormFailure.datesNoLongerAvailable(currentRes: invalidReservationItems(state.reservationItem.reservationSlotItem)));
      //       yield state.copyWith(
      //           isPublishing: false,
      //           authFailureOrSuccessOption: optionOf(failureOrSuccess)
      //       );
      //       return;
      //     }


      //     failureOrSuccess = state.isPublishing ? left(ReservationFormFailure.reservationServerError()) : await _reservationFormFacade.updateReservationFormRequest(reservationForm: state.reservationItem);


      //     yield state.copyWith(
      //         authFailureOrSuccessOption: optionOf(failureOrSuccess),
      //         isPublishing: false
      //     );
      //   }
      // },

      // didCancelReservation: (e) async* {
      
      // }, 
    );

  }
}