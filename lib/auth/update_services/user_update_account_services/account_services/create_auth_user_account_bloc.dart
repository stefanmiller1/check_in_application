part of check_in_application;

@injectable
class CreateAuthUserAccountBloc extends Bloc<CreateAuthUserAccountEvent, CreateAuthUserAccountState> {
  final facade.IAuthFacade _authFacade;

  CreateAuthUserAccountBloc(this._authFacade) : super(CreateAuthUserAccountState.initial());

  @override
  Stream<CreateAuthUserAccountState> mapEventToState(
      CreateAuthUserAccountEvent event)
      async* {
          yield* event.map(
              initialized: (e) async* {
                yield e.initialUserProfile.fold(
                        () => state,
                    (profile) => state.copyWith(
                      user: profile,
                      isSubmitting: false
                   )
                );
              },

              firstLastLegalNameChanged: (e) async* {
                yield state.copyWith(
                  user: state.user.copyWith(
                    legalName: FirstLastName(e.legalNameStr),
                  ),
                  authFailureOrSuccessOption: none()
                );
              },

              lastNameChanged: (e) async* {
                yield state.copyWith(
                  user: state.user.copyWith(
                      legalSurname: FirstLastName(e.lastNameStr),
                    ),
                  authFailureOrSuccessOption: none()
                );
              },

              emailChanged: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                  user: state.user.copyWith(
                      emailAddress: EmailAddress(e.emailStr),
                    ),
                  authFailureOrSuccessOption: none()
                );



                // if (EmailAddress(e.emailStr).isValid()) {
                //   failureOrSuccess = await _authFacade.validateEmailRegisterer(email: EmailAddress(e.emailStr));
                //   yield state.copyWith(
                //       authEmailFailOrSuccessOption: optionOf(failureOrSuccess)
                //   );
                // }
              },


              privacyTermsChanged: (e) async* {
                yield state.copyWith(
                    privacyAndTerms: e.privacyBool,
                    authFailureOrSuccessOption: none()
                );
              },



              loginPasswordChanged: (e) async* {
                yield state.copyWith(
                  loginPassword: e.passwordStr,
                  authFailureOrSuccessOption: none()
                );
              },

              passwordChanged: (e) async* {
                yield state.copyWith(
                  password: Password(e.passwordStr),
                  authFailureOrSuccessOption: none(),
                );
              },

              passwordConfirmChanged: (e) async* {
                yield state.copyWith(
                  passwordCheck: e.passwordStr,
                  passwordConfirmation: PasswordConfirmation(state.password, e.passwordStr),
                  authFailureOrSuccessOption: none(),
                );
              },


              registerWithEmailAndPassword: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                final isNameValid = state.user.legalName.isValid();
                final isEmailValid = state.user.emailAddress.isValid();
                final isTermsValid = state.privacyAndTerms;
                final isPassValid = state.password.isValid();
                final isPassCheckValid  = state.passwordConfirmation.isValid();


                if (isEmailValid) {
                  failureOrSuccess = await _authFacade.validateEmailRegisterer(email: state.user.emailAddress);
                  yield state.copyWith(
                      authEmailFailOrSuccessOption: optionOf(failureOrSuccess)
                  );
                }


                if (isNameValid && isEmailValid && isTermsValid && isPassValid && isPassCheckValid) {
                  yield state.copyWith(
                    isSubmitting: true,
                    authEmailFailOrSuccessOption: none(),
                  );

                  failureOrSuccess = state.isSubmitting ? left(AuthFailure.serverError()) : await _authFacade.createAuthUserProfile(profile: state.user, password: state.password);

                  yield state.copyWith(
                    authEmailFailOrSuccessOption: optionOf(failureOrSuccess),
                  );

                }

                yield state.copyWith(
                  showErrorMessages: AutovalidateMode.always,
                  isSubmitting: false
                );

              },


              signInWithApplePressed: (e) async* {
                Either<AuthFailure, bool> failureOrSuccess;

                yield state.copyWith(
                    isSubmitting: true,
                    authFailureOrSuccessOption: none()
                );

                failureOrSuccess = await _authFacade.signInWithApple();

                yield state.copyWith(
                    isSubmitting: false,
                    authFailureOrSuccessOption: optionOf(failureOrSuccess)
                );

              },

              signInWithGooglePressed: (e) async* {
                Either<AuthFailure, bool> failureOrSuccess;

                yield state.copyWith(
                    isSubmitting: true,
                    authFailureOrSuccessOption: none()
                );

                failureOrSuccess = await _authFacade.signInWithGoogle();

                yield state.copyWith(
                    isSubmitting: false,
                    authFailureOrSuccessOption: optionOf(failureOrSuccess)
                );

              },

              signInWithPhoneNumberPressed: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

              },

              verifyOtp: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

              },

              authenticateWithOtp: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

              },

              requestVerificationCode: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

              },

              updateFirstTimeSignIn: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                yield state.copyWith(
                    authEmailFailOrSuccessOption: none()
                );

                failureOrSuccess = await _authFacade.updateFirstTimeSignIn();

                yield state.copyWith(
                    authEmailFailOrSuccessOption: optionOf(failureOrSuccess),
                );

              },

              signInPressed: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                  final isEmailIsValid = state.user.emailAddress.isValid();
                  final isPassValid = state.loginPassword.isNotEmpty;

                  if (isEmailIsValid && isPassValid) {
                    yield state.copyWith(
                        isSubmitting: true,
                        authEmailFailOrSuccessOption: none()
                    );

                    failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
                        emailAddress: state.user.emailAddress,
                        password: state.loginPassword);

                    yield state.copyWith(
                      authEmailFailOrSuccessOption: optionOf(failureOrSuccess),
                    );
                  }

                  yield state.copyWith(
                    showErrorMessages: AutovalidateMode.always,
                    authEmailFailOrSuccessOption: none(),
                    isSubmitting: false
                  );
              },


              forgotPasswordPressed: (e) async* {
                Either<AuthFailure, Unit> failureOrSuccess;

                final isEmailValid = state.user.emailAddress.isValid();

                if (isEmailValid) {
                  yield state.copyWith(
                    isSubmitting: true,
                      authEmailFailOrSuccessOption: none()
                  );

                  failureOrSuccess = state.isSubmitting ? await _authFacade.sendPasswordResetEmail(email: state.user.emailAddress.getOrCrash()) : left(AuthFailure.serverError());

                  yield state.copyWith(
                      authEmailFailOrSuccessOption: optionOf(failureOrSuccess)
                  );
                }

                yield state.copyWith(
                  showErrorMessages: AutovalidateMode.always,
                  isSubmitting: false
                );
              },



          );
        }



}