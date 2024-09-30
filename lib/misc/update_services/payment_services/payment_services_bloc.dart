part of check_in_application;

@injectable
class PaymentServicesBloc extends Bloc<PaymentServicesEvent, PaymentServicesState> {

  final facade.SStripeFacade _stripeFacade;
  final facade.IAuthFacade _iAuthFacade;

  PaymentServicesBloc(this._stripeFacade, this._iAuthFacade) : super(PaymentServicesState.initial());

  @override
  Stream<PaymentServicesState> mapEventToState(
      PaymentServicesEvent event) async* {

        yield* event.map(
            initializePaymentService: (e) async* {
                yield e.userProfile.fold(
                    () => state,
                    (user) => state.copyWith(
                        userProfile: user,
                        isEditing: false
                    )
                );
            },

            editBoolDidChange: (e) async* {
              yield state.copyWith(
                  isEditing: e.isEditing
              );
            },

            didChangeDefaultPayment: (e) async* {
              yield state.copyWith(
                userProfile: state.userProfile?.copyWith(
                  defaultPaymentMethod: e.cardId
                ),
              );
            },

          profileStripeCompanyName: (e) async* {
            yield state.copyWith(
              userProfile: state.userProfile?.copyWith(
                    stripeCompanyName: e.bussName
                  ),
              isEditing: true,
              failureOrSuccessOption: none()
            );
          },

          profileStripeBusinessIDChanged: (e) async* {
            yield state.copyWith(
                userProfile: state.userProfile?.copyWith(
                    stripeBusinessID: e.busStr
                ),
                isEditing: true,
                failureOrSuccessOption: none()
            );

          },

          profileStripeHSTRegistrationNumberChanged: (e) async* {
            yield state.copyWith(
                userProfile: state.userProfile?.copyWith(
                    stripeHSTRegistrationNumber: e.hstStr
                ),
                isEditing: true,
                failureOrSuccessOption: none()
            );
          },

          profileStripeBusinessAddress: (e) async* {
            yield state.copyWith(
                userProfile: state.userProfile?.copyWith(
                    stripeBusinessAddress: e.businessAdd
                ),
                isEditing: true,
                failureOrSuccessOption: none()
            );
          },


          didDChangePaymentsToDelete: (e) async* {
                yield state.copyWith(
                    cancellationList: e.cardItems
                );
            },

            didUpdateNewPaymentMethod: (e) async* {
              yield state.copyWith(
                cardToken: e.cardToken,
              );
            },

            finishedNewPaymentMethod: (e) async* {
              Either<PaymentMethodValueFailure, Unit> failureOrSuccessOption;
              
              if (state.cardToken != null && state.userProfile != null) {
                yield state.copyWith(
                  failureOrSuccessOption: none(),
                  isSaving: true,
                );

                failureOrSuccessOption = await _stripeFacade.createNewPaymentMethod(userProfile: state.userProfile!, cardToken: state.cardToken!);


                yield state.copyWith(
                  failureOrSuccessOption: optionOf(failureOrSuccessOption),
                  isSaving: false,
                );
              }
            },

            finishedNewDefaultPaymentMethod: (e) async* {
              Either<AuthFailure, Unit> failureOrSuccessOption;

              if (state.userProfile != null) {
              yield state.copyWith(
                  defaultPaymentFailureOrSuccessOption: none(),
                  isSaving: true,
              );

              failureOrSuccessOption = await _iAuthFacade.updateDefaultPaymentMethod(profile: state.userProfile!);

                yield state.copyWith(
                  defaultPaymentFailureOrSuccessOption: optionOf(failureOrSuccessOption),
                  isSaving: false,
                );
              }
            },

            finishedDeleteSelectedPayments: (e) async* {
                  Either<PaymentMethodValueFailure, Unit> failureOrSuccessOption;

                  if (state.cancellationList?.isNotEmpty ?? false && state.userProfile != null) {
                    print('not empty');
                      yield state.copyWith(
                        failureOrSuccessOption: none(),
                        isSaving: true,
                      );

                    failureOrSuccessOption = await _stripeFacade.deletePaymentMethod(userProfile: state.userProfile!, cardItem: state.cancellationList ?? []);

                    yield state.copyWith(
                      failureOrSuccessOption: optionOf(failureOrSuccessOption),
                      isSaving: false,
                    );

                }
              },

              finishedNewStripePayoutMethod: (e) async* {
                  Either<AuthFailure, Unit> failureOrSuccess;

                  yield state.copyWith(
                      isSaving: true,
                      defaultPaymentFailureOrSuccessOption: none()
                  );

                  failureOrSuccess = await _stripeFacade.createOnBoardingStripeAccountLink(profile: e.profile);

                  yield state.copyWith(
                      isSaving: false,
                      defaultPaymentFailureOrSuccessOption: optionOf(failureOrSuccess)
                  );
              },


              presentStripePayoutAccount: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                    isSaving: true,
                    defaultPaymentFailureOrSuccessOption: none()
                );

                failureOrSuccess = await _stripeFacade.presentStripeAccountWithLoginLink(profile: e.profile);

                yield state.copyWith(
                    isSaving: false,
                    defaultPaymentFailureOrSuccessOption: optionOf(failureOrSuccess)
                );
              },

              finishedUpdateStripePayoutAccount: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                    isSaving: true,
                    defaultPaymentFailureOrSuccessOption: none()
                );

                failureOrSuccess = await _stripeFacade.updateStripeAccountSettingsLink(profile: e.profile);

                yield state.copyWith(
                    isSaving: false,
                    defaultPaymentFailureOrSuccessOption: optionOf(failureOrSuccess)
                );
              },

              finishedDeletePayoutAccount: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                    isSaving: true,
                    defaultPaymentFailureOrSuccessOption: none()
                );

                failureOrSuccess = await _stripeFacade.deleteStripeConnectAccountLink(profile: e.profile);

                yield state.copyWith(
                    isSaving: false,
                    defaultPaymentFailureOrSuccessOption: optionOf(failureOrSuccess)
                );
              },

    );
  }
  
}

