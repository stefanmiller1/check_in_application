part of check_in_application;

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loadInProgress() = _AuthLoadInProgress;
  const factory AuthState.authenticatedUser(User? authUser) = _AuthenticatedMember;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}