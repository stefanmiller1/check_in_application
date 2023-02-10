part of check_in_application;

@injectable
class LocationVerificationWatcherBloc extends Bloc<LocationVerificationWatcherEvent, LocationVerificationWatcherState> {
  final facade.MMiscFacade _miscFacade;

  LocationVerificationWatcherBloc(this._miscFacade) : super(const LocationVerificationWatcherState.initial());

  StreamSubscription<Either<AuthFailure, LocationVerificationType>>? _verifiedSubscription;

  @override
  Stream<LocationVerificationWatcherState> mapEventToState(LocationVerificationWatcherEvent event) async* {
      yield* event.map(

          watchVerificationStarted: (e) async* {
            yield LocationVerificationWatcherState.loadVerificationInProgress();
            await _verifiedSubscription?.cancel();
            _verifiedSubscription = _miscFacade.getVerificationStatus().listen((failure) {
               return add(LocationVerificationWatcherEvent.verificationReceived(failure));
            });
          },

          verificationReceived: (e) async* {
            yield e.failedVerification.fold(
                    (f) => LocationVerificationWatcherState.loadFailure(f),
                    (verifiedType) => LocationVerificationWatcherState.loadVerificationSuccess(verifiedType)
        );
      }
    );
   }

}
