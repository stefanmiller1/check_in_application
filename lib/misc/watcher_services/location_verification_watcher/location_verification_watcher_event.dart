part of check_in_application;

@freezed
class LocationVerificationWatcherEvent with _$LocationVerificationWatcherEvent {

  const factory LocationVerificationWatcherEvent.watchVerificationStarted() = _WatchVerificationStarted;
  const factory LocationVerificationWatcherEvent.verificationReceived(Either<AuthFailure, LocationVerificationType> failedVerification) = _VerificationReveived;

}