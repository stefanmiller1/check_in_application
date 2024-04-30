part of check_in_application;

@injectable
class CircleProfileBloc extends Bloc<CircleProfileEvent, CirceProfileState> {

  CircleProfileBloc() : super(CirceProfileState.initial());

  @override
  Stream<CirceProfileState> mapEventToState(
      CircleProfileEvent event) async* {
        yield* event.map(

            initializeCircleProfile: (e) async* {
              yield e.initialProfile.fold(
                      () => state,
                      (profile) => state.copyWith(
                      profile: profile,
                      isEditingProfile: false,
                      authFailureOrSuccessOption: none()
                  )
              );
            },

            nameChanged: (e) async* {
                yield state.copyWith(
                  profile: state.profile.copyWith(
                      circleName: e.nameChange
                  ),
                isEditingProfile: true,
              );
            },

            profileImageChanged: (e) async* {
              yield state.copyWith(
                profile: state.profile.copyWith(
                  profileImage: e.profileImage
                ),
                isEditingProfile: true,
              );
            },

            instagramContactChanged: (e) async* {
              yield state.copyWith(
                profile: state.profile.copyWith(
                    instagram: e.instStr
                ),
                isEditingProfile: true,
              );
            },

            websiteURLChanged: (e) async* {
              yield state.copyWith(
                profile: state.profile.copyWith(
                    website: e.webStr
                ),
                isEditingProfile: true,
              );
            },

            isPrivateDidChange: (e) async* {
              yield state.copyWith(
                profile: state.profile.copyWith(
                    isPrivate: e.isPrivateBool
                ),
                isEditingProfile: true,
              );
            },

            savedCircleProfileFinished: (e) async* {

            }
      );
  }
}