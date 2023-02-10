part of check_in_application;

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.mobileAuthCheckRequested() = MobileAuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}


