part of check_in_application;

@injectable
class VendorMerchProfileWatcherBloc extends Bloc<VendorMerchProfileWatcherEvent, VendorMerchProfileWatcherState> {

  final facade.MVAuthWatcherFacade _mvAuthWatcherFacade;

  VendorMerchProfileWatcherBloc(this._mvAuthWatcherFacade) : super(VendorMerchProfileWatcherState.vmInitial());

  StreamSubscription<Either<ProfileValueFailure, EventMerchantVendorProfile>>? _watchEventMerchProfileStreamSubscription;
  StreamSubscription<Either<ProfileValueFailure, List<EventMerchantVendorProfile>>>? _watchCurrentUsersMerchVendorListSubscription;
  StreamSubscription<Either<ProfileValueFailure, List<UniqueId>>>? _watchCurrentPartnersMerchVendorsSubscription;

  @override
  Stream<VendorMerchProfileWatcherState> mapEventToState(
      VendorMerchProfileWatcherEvent event
    ) async* {

    yield* event.map(

        watchEventMerchProfile: (e) async* {
          yield const VendorMerchProfileWatcherState.vmLoadInProgress();

          await _watchEventMerchProfileStreamSubscription?.cancel();
          _watchEventMerchProfileStreamSubscription = _mvAuthWatcherFacade.watchEventMerchProfile(profileId: e.profileId).listen((event) {
            return add(VendorMerchProfileWatcherEvent.eventMerchVenReceived(event));
          });
        },
        eventMerchVenReceived: (e) async* {
          yield e.failedItem.fold(
              (f) => VendorMerchProfileWatcherState.loadMerchVendorProfileFailure(f),
              (r) => VendorMerchProfileWatcherState.loadMerchVendorProfileSuccess(r)
          );
        },


        watchCurrentUsersMerchVendorList: (e) async* {
          yield const VendorMerchProfileWatcherState.vmLoadInProgress();

          await _watchCurrentUsersMerchVendorListSubscription?.cancel();
          _watchCurrentUsersMerchVendorListSubscription = _mvAuthWatcherFacade.watchCurrentUsersMerchVendorList(userId: e.userId).listen((event) {
            return add(VendorMerchProfileWatcherEvent.currentUsersMerchVendorListReceived(event));
          });
        },
        currentUsersMerchVendorListReceived: (e) async* {
          yield e.failedItems.fold(
                  (f) => VendorMerchProfileWatcherState.loadCurrentUserVendorMerchListFailure(f),
                  (r) => VendorMerchProfileWatcherState.loadCurrentUserVendorMerchListSuccess(r)
          );
        },


        watchCurrentPartnersMerchVendors: (e) async* {
          yield const VendorMerchProfileWatcherState.vmLoadInProgress();

          await _watchCurrentPartnersMerchVendorsSubscription?.cancel();
          _watchCurrentPartnersMerchVendorsSubscription = _mvAuthWatcherFacade.watchCurrentPartnersMerchVendors(profileId: e.profileId).listen((event) {
            return add(VendorMerchProfileWatcherEvent.currentPartnersMerchVendorsReceived(event));
          });

        },
        currentPartnersMerchVendorsReceived: (e) async* {
          yield e.failedItems.fold(
                  (f) => VendorMerchProfileWatcherState.loadCurrentPartnersVMFailure(f),
                  (r) => VendorMerchProfileWatcherState.loadCurrentPartnersVMSuccess(r)
          );
        }
    );
  }

}