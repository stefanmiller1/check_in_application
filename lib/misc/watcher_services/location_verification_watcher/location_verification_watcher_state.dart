part of check_in_application;

@freezed
class LocationVerificationWatcherState with _$LocationVerificationWatcherState {

  const factory LocationVerificationWatcherState.initial() = _LocationInitial;
  const factory LocationVerificationWatcherState.loadVerificationInProgress() = _LoadVerificationInProgress;
  const factory LocationVerificationWatcherState.loadVerificationSuccess(LocationVerificationType isVerified) = _LoadVerificationSuccess;
  const factory LocationVerificationWatcherState.loadFailure(AuthFailure failure) = _LocationLoadFailure;

}