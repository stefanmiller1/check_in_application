part of check_in_application;

@injectable
class UpdateVendorMerchProfileBloc extends Bloc<UpdateVendorMerchProfileEvent, UpdateVendorMerchProfileState> {


  final facade.MVAuthFacade _mvAuthFacade;

  UpdateVendorMerchProfileBloc(this._mvAuthFacade) : super(UpdateVendorMerchProfileState.initial());

  @override
  Stream<UpdateVendorMerchProfileState> mapEventToState(
      UpdateVendorMerchProfileEvent event) async* {

    yield* event.map(
        initializedVendorMerchantProfile: (e) async* {
            yield e.initialProfile.fold(
                () => state,
                (profile) => state.copyWith(
                  profile: profile,
                  isEditingProfile: false,
                  authFailureOrSuccessOption: none()
            )
          );
        },

        isSubmitting: (e) async* {
          // yield state.copyWith(
          //   isSubmitting: e.submit
          // );
        },

        brandNameDidChange: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                brandName: e.brandName,
            ),
            isEditingProfile: true,
          );
        },

        descriptionDidChange: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                backgroundInfo: e.description,
            ),
            isEditingProfile: true,
          );
        },

        profileImageChanged: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                  uriImage: e.profileImage
              ),
              isEditingProfile: true,
            );
        },

        websiteURLChanged: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                websiteLink: e.instStr,
            ),
            isEditingProfile: true,
          );
        },

        instagramContactChanged: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                instagramLink: e.instStr,
            ),
            isEditingProfile: true,
          );
        },

        stripeBusinessIDChanged: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                  stripeBusinessID: e.busStr,
              ),
              isEditingProfile: true,
            );
        },

        stripeHSTRegistrationNumberChanged: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                stripeHSTRegistrationNumber: e.hstStr,
            ),
            isEditingProfile: true,
          );
        },

        stripeBusinessAddress: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                stripeBusinessAddress: e.businessAdd,
            ),
            isEditingProfile: true,
          );
        },

        typesDidChange: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                type: e.types,
            ),
            isEditingProfile: true,
          );
        },

        isLookingDidChange: (e) async* {
          yield state.copyWith(
            profile: state.profile.copyWith(
                isLookingForWork: e.lookingBool,
            ),
            isEditingProfile: true,
          );
        },

        isPrivateProfileDidChange: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                  isPrivate: e.isPrivateBool
              ),
              isEditingProfile: true,
            );
        },

        saveVendorProfileFinished: (e) async* {
          Either<ProfileValueFailure, Unit> failureOrSuccess;

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none()
          );

          if (!vendorProfileIsValid(state.profile)) {
            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(left(const ProfileValueFailure.profileServerError(serverResponse: 'please fill out all items with a * beside the title')))
            );
            return;
          }


          failureOrSuccess = await _mvAuthFacade.createUpdateMerchantVendor(merchProfileItem: state.profile);
          // : left(const ProfileValueFailure.profileServerError(serverResponse: 'could not save - please try again later'));

          print('ffaiile ${failureOrSuccess}');

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );

        },

        deleteVendorProfileFinished: (e) async* {
          Either<ProfileValueFailure, Unit> failureOrSuccess;

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _mvAuthFacade.deleteMerchantVendorAccount(profile: state.profile);

          yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );

        },
    );
  }


}