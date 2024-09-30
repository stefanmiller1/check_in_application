part of check_in_application;

@injectable
class UserProfileWatcherBloc extends Bloc<UserProfileWatcherEvent, UserProfileWatcherState> {

  final facade.IAuthFacade _authFacade;
  final facade.ATTAuthWatcherFacade _attendeeFacade;

  UserProfileWatcherBloc(this._authFacade, this._attendeeFacade) : super(const UserProfileWatcherState.initial());

  StreamSubscription<Either<AuthFailure, UserProfileModel>>? _userProfileStreamSubscription;
  StreamSubscription<Either<AuthFailure, UserProfileModel>>? _selectedUserProfileStreamSubscription;
  StreamSubscription<Either<AuthFailure, UserProfileModel>>? _userProfileFromEmailSubscription;
  StreamSubscription<Either<AuthFailure, List<UserProfileModel>>>? _allUserProfileStreamSubscription;
  StreamSubscription<Either<AuthFailure, List<ProfileSession>>>? _userProfileSessionStreamSubscription;
  StreamSubscription<Either<AuthFailure, List<UserProfileModel>>>? _allUserProfileFromIdstreamSubscription;

  StreamSubscription<Either<AuthFailure, ProfileNotificationItems>>? _userNotificationStreamSubscription;
  StreamSubscription<Either<AuthFailure, SocialsItem>>? _userSocialsStreamSubscription;
  StreamSubscription<Either<AuthFailure, List<LocationModel>>>? _userLocationsStreamSubscription;
  StreamSubscription<Either<AuthFailure, List<UserProfileModel>>>? _searchUserProfilesStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, List<AttendeeItem>>>? _userAttendingResStreamSubscription;


  @override
  Stream<UserProfileWatcherState> mapEventToState(
      UserProfileWatcherEvent event
      ) async* {

    yield* event.map(

        watchUserProfileStarted: (e) async* {
            yield const UserProfileWatcherState.loadInProgress();
            await _userProfileStreamSubscription?.cancel();

            _userProfileStreamSubscription = _authFacade.watchUserProfile().listen((failedProfile) {
                return add(UserProfileWatcherEvent.userProfileReceived(failedProfile));
            });

        },

        userProfileReceived: (e) async* {
          yield e.failedProfile.fold(
                  (f) => UserProfileWatcherState.loadProfileFailure(f),
                  (r) => UserProfileWatcherState.loadUserProfileSuccess(r)
          );
        },

        userProfileStreamClosed: (e) async* {
          await _userProfileStreamSubscription?.cancel();
          await _selectedUserProfileStreamSubscription?.cancel();
          await _allUserProfileStreamSubscription?.cancel();
        },

        watchSelectedUserProfileStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();
          await _selectedUserProfileStreamSubscription?.cancel();

          _selectedUserProfileStreamSubscription = _authFacade.watchSelectedUserProfile(userId: e.userid).listen((failedProfile) {
              return add(UserProfileWatcherEvent.selectedUserProfileReceived(failedProfile));
          });

        },


        selectedUserProfileReceived: (e) async* {
          yield e.failedProfile.fold(
              (f) => UserProfileWatcherState.loadSelectedProfileFailure(f),
              (r) => UserProfileWatcherState.loadSelectedProfileSuccess(r)
          );
        },


        watchUserNotificationSettingsStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();
          await _userNotificationStreamSubscription?.cancel();

          _userNotificationStreamSubscription = _authFacade.watchUserProfileNotificationSettings(userId: e.userId).listen(
                  (failedNotifications) {
                   return add(UserProfileWatcherEvent.userNotificationSettingsReceived(failedNotifications));
                });

        },


        userNotificationSettingsReceived: (e) async* {
            yield e.failedNotifications.fold(
                    (f) => UserProfileWatcherState.loadNotificationSettingsFailure(f),
                    (r) => UserProfileWatcherState.loadUserProfileNotificationSettingSuccess(r)
                );

        },


      watchUserSocialsSettingStarted: (e) async* {
        yield const UserProfileWatcherState.loadInProgress();
        await _userSocialsStreamSubscription?.cancel();

        _userSocialsStreamSubscription = _authFacade.watchUserProfileSocialsSetting(userId: e.userId).listen((failedSocials) {
          return add(UserProfileWatcherEvent.userSocialsSettingsReceived(failedSocials));
        });
      },

      userSocialsSettingsReceived: (e) async* {
        yield e.failedSocials.fold(
                (f) => UserProfileWatcherState.loadSocialsFailure(f),
                (r) => UserProfileWatcherState.loadUserProfileSocialsSuccess(r)
        );
      },


      watchUserLocationsStarted: (e) async* {
        yield const UserProfileWatcherState.loadInProgress();
        await _userLocationsStreamSubscription?.cancel();

        _userLocationsStreamSubscription = _authFacade.watchUserProfileLocations(userId: e.userId).listen((failedL) {
          return add(UserProfileWatcherEvent.userLocationsReceived(failedL));
        });
      },
      
        userLocationsReceived: (e) async* {
          yield e.failedLocations.fold(
                  (f) => UserProfileWatcherState.loadLocationsFailure(f),
                  (r) => UserProfileWatcherState.loadUserProfileLocationsSuccess(r)
          );
        },


        watchProfileActiveSessionsListStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();
          await _userProfileSessionStreamSubscription?.cancel();

          _userProfileSessionStreamSubscription = _authFacade.watchUserProfileSessionList(userId: e.userId).listen((failedSessions) {
            return add(UserProfileWatcherEvent.profileActiveSessionsListReceived(failedSessions));
          });
        },

        profileActiveSessionsListReceived: (e) async* {
          yield e.failedSessions.fold(
                  (f) => UserProfileWatcherState.loadSessionsFailure(f),
                  (r) => UserProfileWatcherState.loadUserProfileSessionsSuccess(r)
          );
        }, 
      
      
        watchUserAllProfilesStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();
          await _allUserProfileStreamSubscription?.cancel();

          _allUserProfileStreamSubscription = _authFacade.watchAllUserProfiles().listen((event) { 
              return add(UserProfileWatcherEvent.allUserProfileReceived(event));
          });
          
        }, 
      
      
        allUserProfileReceived: (e) async* {
          yield e.failedProfile.fold(
                  (f) => UserProfileWatcherState.loadAllProfilesFailure(f),
                  (r) => UserProfileWatcherState.loadAllUserProfilesSuccess(r)
          );
        },


        watchSearchedProfileStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();
          await _searchUserProfilesStreamSubscription?.cancel();

          _searchUserProfilesStreamSubscription = _authFacade.searchAllUsersFromFirebase(query: e.query).listen((event) {
            return add(UserProfileWatcherEvent.searchedProfileReceived(event));
          });
        },

        searchedProfileReceived: (e) async* {
          yield e.failedQuery.fold(
              (f) => UserProfileWatcherState.loadSearchProfileFailure(f),
              (r) => UserProfileWatcherState.loadSearchedProfileSuccess(r)
          );

        },

        watchProfileEmailsStarted: (e) async* {

        },

        profileFromEmailReceived: (e) async* {
          yield e.failedProfile.fold(
                  (f) => UserProfileWatcherState.loadProfileFromEmailFailure(f),
                  (r) => UserProfileWatcherState.loadProfileFromEmailSuccess(r)
          );
        },


        watchProfileAllAttendingResStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();
          await _userAttendingResStreamSubscription?.cancel();

          _userAttendingResStreamSubscription = _attendeeFacade.watchUserProfileAttending(status: e.status, attendingType: e.attendingType, limit: e.limit, userId: e.userId).listen((event) {
            return add(UserProfileWatcherEvent.profileAllAttendingResReceived(event));
          });
        },

        profileAllAttendingResReceived: (e) async* {
          yield e.failedList.fold(
                  (l) => UserProfileWatcherState.loadProfileAttendingResFailure(l),
                  (r) => UserProfileWatcherState.loadProfileAttendingResSuccess(r)
        );
      },

       watchAllProfileFromUserIdsStarted: (e) async* {
          yield const UserProfileWatcherState.loadInProgress();

          await _allUserProfileFromIdstreamSubscription?.cancel();

          _allUserProfileFromIdstreamSubscription = _authFacade.watchAllUsersFromUserList(userIds: e.userIds).listen((event) {
              return add(UserProfileWatcherEvent.allProfilesFromUserIdsReceived(event));
          });
       },

       allProfilesFromUserIdsReceived: (e) async* {
          yield e.failedItems.fold(
              (f) => UserProfileWatcherState.loadAllProfileFromIdsFailure(f),
              (r) => UserProfileWatcherState.loadAllProfileFromIdsSuccess(r)
          );

       },
    );
  }

  @override
  Future<void> close() {
    _userProfileStreamSubscription?.cancel();
    _selectedUserProfileStreamSubscription?.cancel();
    _userProfileFromEmailSubscription?.cancel();
    _allUserProfileStreamSubscription?.cancel();
    _userProfileSessionStreamSubscription?.cancel();
    _allUserProfileFromIdstreamSubscription?.cancel();

    _userNotificationStreamSubscription?.cancel();
    _userSocialsStreamSubscription?.cancel();
    _userLocationsStreamSubscription?.cancel();
    _searchUserProfilesStreamSubscription?.cancel();
    _userAttendingResStreamSubscription?.cancel();
    return super.close();
  }

}