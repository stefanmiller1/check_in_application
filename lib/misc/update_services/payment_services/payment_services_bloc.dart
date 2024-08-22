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
                  userProfile: UserProfileModel(
                    userId: state.userProfile!.userId,
                    legalName: state.userProfile!.legalName,
                    legalSurname: state.userProfile!.legalSurname,
                    age: state.userProfile!.age,
                    gender: state.userProfile!.gender,
                    dateOfBirth: state.userProfile!.dateOfBirth,
                    emailAddress: state.userProfile!.emailAddress,
                    userAddress: state.userProfile!.userAddress,
                    photoUri: state.userProfile!.photoUri,
                    photoIdUri: state.userProfile!.photoIdUri,
                    photoSelfieUri: state.userProfile!.photoSelfieUri,
                    profileImage: state.userProfile!.profileImage,
                    contactPhones: state.userProfile!.contactPhones,
                    emergencyContact: state.userProfile!.emergencyContact,
                    isEmailAuth: state.userProfile!.isEmailAuth,
                    isPhoneAuth: state.userProfile!.isPhoneAuth,
                    isVerified: state.userProfile!.isVerified,
                    identificationState: state.userProfile!.identificationState,
                    joinedDate: state.userProfile!.joinedDate,
                    stripeAccountId: state.userProfile!.stripeAccountId,
                    stripeCustomerId: state.userProfile!.stripeCustomerId,
                    defaultPaymentMethod: e.cardId,
                    stripeAccountDetailsSubmitted: state.userProfile!.stripeAccountDetailsSubmitted
                ),
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

