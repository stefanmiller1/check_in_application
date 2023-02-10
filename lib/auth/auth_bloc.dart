part of check_in_application;

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final facade.IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
      AuthEvent event,
      ) async* {
    yield* event.map(
        authCheckRequested: (e) async* {

          try {

            final prefs = await SharedPreferences.getInstance();
            final userData = prefs.getString('userData');
            final isAuth = await _authFacade.isAuth;

            if (userData != null && isAuth != null && isAuth) {
              yield const AuthState.authenticatedUser(null);
            } else {
              yield const AuthState.unauthenticated();
            }
          } catch (e) {
            yield const AuthState.unauthenticated();
          }

        },

        mobileAuthCheckRequested: (e) async* {

          try {


            final currentUser = await _authFacade.getCurrentUser;

            if (currentUser != null) {
              yield AuthState.authenticatedUser(currentUser);
            } else {
              yield const AuthState.unauthenticated();
            }

          } catch (e) {
            yield const AuthState.unauthenticated();
          }

        },

        signedOut: (e) async* {
          await _authFacade.signOut();
          yield const AuthState.unauthenticated();
        },

    );
  }
}