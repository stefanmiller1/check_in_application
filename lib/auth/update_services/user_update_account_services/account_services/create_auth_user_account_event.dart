part of check_in_application;

@freezed
class CreateAuthUserAccountEvent with _$CreateAuthUserAccountEvent {

  const factory CreateAuthUserAccountEvent.initialized(Option<UserProfileModel> initialUserProfile) = _Initialized;

  const factory CreateAuthUserAccountEvent.firstLastLegalNameChanged(String legalNameStr) = FirstLastLegalNameChanged;
  const factory CreateAuthUserAccountEvent.lastNameChanged(String lastNameStr) = _LastNameChanged;
  const factory CreateAuthUserAccountEvent.emailChanged(String emailStr) = EmailChanged;

  const factory CreateAuthUserAccountEvent.updateFirstTimeSignIn() = _UpdateFirstTimeSignIn;

  const factory CreateAuthUserAccountEvent.privacyTermsChanged(bool privacyBool) = PrivacyTermsBool;

  const factory CreateAuthUserAccountEvent.loginPasswordChanged(String passwordStr) = LoginPasswordChanged;
  const factory CreateAuthUserAccountEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory CreateAuthUserAccountEvent.passwordConfirmChanged(String passwordStr) = PasswordConfirmChanged;

  const factory CreateAuthUserAccountEvent.registerWithEmailAndPassword() = RegisterWithEmailAndPassword;

  const factory CreateAuthUserAccountEvent.signInPressed() = SignInPressed;
  const factory CreateAuthUserAccountEvent.signInWithApplePressed() = SignInWithApplePressed;
  const factory CreateAuthUserAccountEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory CreateAuthUserAccountEvent.signInWithPhoneNumberPressed(String phoneNumber) = SignInWithPhoneNumberPressed;
  const factory CreateAuthUserAccountEvent.verifyOtp(String otp) = VerifyOtp;
  const factory CreateAuthUserAccountEvent.authenticateWithOtp(String otp) = AuthenticateWithOtp;
  const factory CreateAuthUserAccountEvent.requestVerificationCode(String phoneNumber) = RequestVerificationCode;
  const factory CreateAuthUserAccountEvent.forgotPasswordPressed() = ForgotPasswordPressed;



}