part of check_in_application;

@injectable
class CommunityManagerWatcherBloc extends Bloc<CommunityManagerWatcherEvent, CommunityManagerWatcherState> {

  final facade.CAuthWatcherFacade _cAuthFacade;

  CommunityManagerWatcherBloc(this._cAuthFacade) : super(CommunityManagerWatcherState.communityInitial());

  StreamSubscription<Either<ProfileValueFailure, List<UniqueId>>>? _communityLinkedResStreamSubscription;
  // StreamSubscription<Either<CommunityProfileFailure, CommunityProfileItem>>? _currentCommunityStreamSubscription;
  // StreamSubscription<Either<CommunityProfileFailure, List<CommunityProfileItem>>>? _createdCommunitiesStreamSubscription;


  @override
  Stream<CommunityManagerWatcherState> mapEventToState(
      CommunityManagerWatcherEvent event
      ) async* {

    yield* event.map(

        watchReservationLinkedCommunity: (e) async* {
          yield const CommunityManagerWatcherState.communityLoadInProgress();

          await _communityLinkedResStreamSubscription?.cancel();
          _communityLinkedResStreamSubscription = _cAuthFacade.watchLinkedReservationCirclesCommunities(reservationId: e.reservationId).listen((event) {
            return add(CommunityManagerWatcherEvent.reservationLinkedCommunitiesReceived(event));
          });
        },

        reservationLinkedCommunitiesReceived: (e) async* {
          yield e.failedItems.fold(
              (f) => CommunityManagerWatcherState.loadReservationLinkedCommunitiesFailure(f),
              (r) => CommunityManagerWatcherState.loadReservationLinkedCommunitiesSuccess(r)
          );
        },

    );
  }



}