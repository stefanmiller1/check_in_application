part of check_in_application;

@injectable
class UpdateUserProfileAccountBloc extends Bloc<UpdateUserProfileAccountEvent, UpdateUserProfileAccountState> {

  final facade.IAuthFacade _authFacade;

  UpdateUserProfileAccountBloc(this._authFacade) : super(UpdateUserProfileAccountState.initial());

  @override
  Stream<UpdateUserProfileAccountState> mapEventToState(
      UpdateUserProfileAccountEvent event) async* {

      yield* event.map(
          initializedUserProfile: (e) async* {
            yield e.initialProfile.fold(
                    () => state,
                    (profileUser) => state.copyWith(
                      profile: state.profile.copyWith(
                         profileSocials: state.profile.profileSocials,
                         profileUser: profileUser,
                         notificationSettings: state.profile.notificationSettings,
                         profileLocations: state.profile.profileLocations
                ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              ),
            );
          },

        initializedSocialsProfile: (e) async* {
            yield e.initialSocials.fold(
                    () => state,
                    (socials) => state.copyWith(
                      profile: state.profile.copyWith(
                          profileSocials: socials,
                          profileUser: state.profile.profileUser,
                          notificationSettings: state.profile.notificationSettings,
                          profileLocations: state.profile.profileLocations
              ),
              isEditingProfile: false,
              authFailureOrSuccessOption: none(),
            )
          );
        },

        initializedUserFacilityLocationsProfile: (e) async* {
          yield e.initialLocations.fold(
                  () => state,
                  (locations) => state.copyWith(
                  profile: state.profile.copyWith(
                      profileSocials: state.profile.profileSocials,
                      profileUser: state.profile.profileUser,
                      notificationSettings: state.profile.notificationSettings,
                      profileLocations: locations
                  ),
                isEditingProfile: false,
                authFailureOrSuccessOption: none(),
              ),

          );
        },

        initializedNotificationSettingProfile: (e) async* {
          yield e.initialNotificationSettings.fold(
                  () => state,
                  (notifications) => state.copyWith(
                  profile: state.profile.copyWith(
                      profileSocials: state.profile.profileSocials,
                      profileUser: state.profile.profileUser,
                      notificationSettings: notifications,
                      profileLocations: state.profile.profileLocations
                ),
              isEditingProfile: false,
              authFailureOrSuccessOption: none(),
            ),
          );
        },


        firstLastLegalNameChanged: (e) async* {
            yield state.copyWith(
             profile: state.profile.copyWith(
                profileUser: UserProfileModel(
                    userId: state.profile.profileUser.userId,
                    legalName: FirstLastName(e.legalNameStr),
                    legalSurname: state.profile.profileUser.legalSurname,
                    age: state.profile.profileUser.age,
                    gender: state.profile.profileUser.gender,
                    dateOfBirth: state.profile.profileUser.dateOfBirth,
                    emailAddress: state.profile.profileUser.emailAddress,
                    userAddress: state.profile.profileUser.userAddress,
                    photoUri: state.profile.profileUser.photoUri,
                    photoIdUri: state.profile.profileUser.photoIdUri,
                    photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                    profileImage: state.profile.profileUser.profileImage,
                    contactPhones: state.profile.profileUser.contactPhones,
                    emergencyContact: state.profile.profileUser.emergencyContact,
                    isEmailAuth: state.profile.profileUser.isEmailAuth,
                    isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                    isVerified: state.profile.profileUser.isVerified,
                    identificationState: state.profile.profileUser.identificationState,
                    joinedDate: state.profile.profileUser.joinedDate,
                    stripeAccountId: state.profile.profileUser.stripeAccountId,
                    stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                    defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                    stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                ),
             ),
            isEditingProfile: true,
            authFailureOrSuccessOption: none()
            );
          },

        lastNameLegalChanged: (e) async* {
            yield state.copyWith(
                profile: state.profile.copyWith(
                  profileUser: UserProfileModel(
                      userId: state.profile.profileUser.userId,
                      legalName: state.profile.profileUser.legalName,
                      legalSurname: FirstLastName(e.lastNameStr),
                      age: state.profile.profileUser.age,
                      gender: state.profile.profileUser.gender,
                      dateOfBirth: state.profile.profileUser.dateOfBirth,
                      emailAddress: state.profile.profileUser.emailAddress,
                      userAddress: state.profile.profileUser.userAddress,
                      photoUri: state.profile.profileUser.photoUri,
                      photoIdUri: state.profile.profileUser.photoIdUri,
                      photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                      profileImage: state.profile.profileUser.profileImage,
                      contactPhones: state.profile.profileUser.contactPhones,
                      emergencyContact: state.profile.profileUser.emergencyContact,
                      isEmailAuth: state.profile.profileUser.isEmailAuth,
                      isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                      isVerified: state.profile.profileUser.isVerified,
                      identificationState: state.profile.profileUser.identificationState,
                      joinedDate: state.profile.profileUser.joinedDate,
                      stripeAccountId: state.profile.profileUser.stripeAccountId,
                      stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                      defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                      stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                  ),
                ),
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          genderChanged: (e) async* {
              yield state.copyWith(
                  profile: state.profile.copyWith(
                      profileUser: UserProfileModel(
                          userId: state.profile.profileUser.userId,
                          legalName: state.profile.profileUser.legalName,
                          legalSurname: state.profile.profileUser.legalSurname,
                          age: state.profile.profileUser.age,
                          gender: e.genderStr,
                          dateOfBirth: state.profile.profileUser.dateOfBirth,
                          emailAddress: state.profile.profileUser.emailAddress,
                          userAddress: state.profile.profileUser.userAddress,
                          photoUri: state.profile.profileUser.photoUri,
                          photoIdUri: state.profile.profileUser.photoIdUri,
                          photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                          profileImage: state.profile.profileUser.profileImage,
                          contactPhones: state.profile.profileUser.contactPhones,
                          emergencyContact: state.profile.profileUser.emergencyContact,
                          isEmailAuth: state.profile.profileUser.isEmailAuth,
                          isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                          isVerified: state.profile.profileUser.isVerified,
                          identificationState: state.profile.profileUser.identificationState,
                          joinedDate: state.profile.profileUser.joinedDate,
                          stripeAccountId: state.profile.profileUser.stripeAccountId,
                          stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                          defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                          stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                      ),
                  ),
                  isEditingProfile: true,
                  authFailureOrSuccessOption: none()
              );
          },

          birthDateChanged: (e) async* {
              yield state.copyWith(
                  profile: state.profile.copyWith(
                      profileUser: UserProfileModel(
                          userId: state.profile.profileUser.userId,
                          legalName: state.profile.profileUser.legalName,
                          legalSurname: state.profile.profileUser.legalSurname,
                          age: Age(e.dateStr),
                          gender: state.profile.profileUser.gender,
                          dateOfBirth: state.profile.profileUser.dateOfBirth,
                          emailAddress: state.profile.profileUser.emailAddress,
                          userAddress: state.profile.profileUser.userAddress,
                          photoUri: state.profile.profileUser.photoUri,
                          photoIdUri: state.profile.profileUser.photoIdUri,
                          photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                          profileImage: state.profile.profileUser.profileImage,
                          contactPhones: state.profile.profileUser.contactPhones,
                          emergencyContact: state.profile.profileUser.emergencyContact,
                          isEmailAuth: state.profile.profileUser.isEmailAuth,
                          isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                          isVerified: state.profile.profileUser.isVerified,
                          identificationState: state.profile.profileUser.identificationState,
                          joinedDate: state.profile.profileUser.joinedDate,
                          stripeAccountId: state.profile.profileUser.stripeAccountId,
                          stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                          defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                          stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                      ),
                  ),
                  isEditingProfile: true,
                  authFailureOrSuccessOption: none()
              );
          },

          addressChanged: (e) async* {
              yield state.copyWith(
                  profile: state.profile.copyWith(
                      profileUser: UserProfileModel(
                          userId: state.profile.profileUser.userId,
                          legalName: state.profile.profileUser.legalName,
                          legalSurname: state.profile.profileUser.legalSurname,
                          age: state.profile.profileUser.age,
                          gender: state.profile.profileUser.gender,
                          dateOfBirth: state.profile.profileUser.dateOfBirth,
                          emailAddress: state.profile.profileUser.emailAddress,
                          userAddress: ProfileAddress(e.addressStr),
                          photoUri: state.profile.profileUser.photoUri,
                          photoIdUri: state.profile.profileUser.photoIdUri,
                          photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                          profileImage: state.profile.profileUser.profileImage,
                          contactPhones: state.profile.profileUser.contactPhones,
                          emergencyContact: state.profile.profileUser.emergencyContact,
                          isEmailAuth: state.profile.profileUser.isEmailAuth,
                          isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                          isVerified: state.profile.profileUser.isVerified,
                          identificationState: state.profile.profileUser.identificationState,
                          joinedDate: state.profile.profileUser.joinedDate,
                          stripeAccountId: state.profile.profileUser.stripeAccountId,
                          stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                          defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                          stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                      ),
                  ),
                  isEditingProfile: true,
                  authFailureOrSuccessOption: none()
              );
          },

          phoneNumberChanged: (e) async* {
              yield state.copyWith(
                  profile: state.profile.copyWith(
                      profileUser: UserProfileModel(
                          userId: state.profile.profileUser.userId,
                          legalName: state.profile.profileUser.legalName,
                          legalSurname: state.profile.profileUser.legalSurname,
                          age: state.profile.profileUser.age,
                          gender: state.profile.profileUser.gender,
                          dateOfBirth: state.profile.profileUser.dateOfBirth,
                          emailAddress: state.profile.profileUser.emailAddress,
                          userAddress: state.profile.profileUser.userAddress,
                          photoUri: state.profile.profileUser.photoUri,
                          photoIdUri: state.profile.profileUser.photoIdUri,
                          photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                          profileImage: state.profile.profileUser.profileImage,
                          contactPhones: e.phoneNumbers,
                          emergencyContact: state.profile.profileUser.emergencyContact,
                          isEmailAuth: state.profile.profileUser.isEmailAuth,
                          isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                          isVerified: state.profile.profileUser.isVerified,
                          identificationState: state.profile.profileUser.identificationState,
                          joinedDate: state.profile.profileUser.joinedDate,
                          stripeAccountId: state.profile.profileUser.stripeAccountId,
                          stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                          defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                          stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                      ),
                  ),
                  isEditingProfile: true,
                  authFailureOrSuccessOption: none()
              );
          },

          emergencyPhoneChanged: (e) async* {
              yield state.copyWith(
                  profile: state.profile.copyWith(
                      profileUser: UserProfileModel(
                          userId: state.profile.profileUser.userId,
                          legalName: state.profile.profileUser.legalName,
                          legalSurname: state.profile.profileUser.legalSurname,
                          age: state.profile.profileUser.age,
                          gender: state.profile.profileUser.gender,
                          dateOfBirth: state.profile.profileUser.dateOfBirth,
                          emailAddress: state.profile.profileUser.emailAddress,
                          userAddress: state.profile.profileUser.userAddress,
                          photoUri: state.profile.profileUser.photoUri,
                          photoIdUri: state.profile.profileUser.photoIdUri,
                          photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                          profileImage: state.profile.profileUser.profileImage,
                          contactPhones: state.profile.profileUser.contactPhones,
                          emergencyContact: e.phoneNumber,
                          isEmailAuth: state.profile.profileUser.isEmailAuth,
                          isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                          isVerified: state.profile.profileUser.isVerified,
                          identificationState: state.profile.profileUser.identificationState,
                          joinedDate: state.profile.profileUser.joinedDate,
                          stripeAccountId: state.profile.profileUser.stripeAccountId,
                          stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                          defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                          stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                      ),
                  ),
                  isEditingProfile: true,
                  authFailureOrSuccessOption: none()
              );
          },

          imageFilePathChanged: (e) async* {
            yield state.copyWith(
                profileImagePath: e.filePath,
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          imageUrlChanged: (e) async* {
            yield state.copyWith(
                profileImageUrl: e.imageUrl,
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          imageIdFilePathChanged: (e) async* {
            yield state.copyWith(
                photoIdImagePath: e.imageUrl,
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          imageIdUrlChanged: (e) async* {
            yield state.copyWith(
                photoIdImageUrl: e.imageUrl,
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          imageSelfieFilePatheChanged: (e) async* {
            yield state.copyWith(
                photoSelfieImagePath: e.imageUrl,
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          imageSelfieUrlChanged: (e) async* {
            yield state.copyWith(
                photoSelfieImageUrl: e.imageUrl,
                isEditingProfile: true,
                authFailureOrSuccessOption: none()
            );
          },

          isChangingPassword: (e) async* {
            yield state.copyWith(
              isChangingPassword: e.passBool,
              authFailureOrSuccessOption: none()
            );
          },

          newPasswordChanged: (e) async* {
              yield state.copyWith(
                  password: Password(e.passStr),
                  authFailureOrSuccessOption: none()
              );

          },

          passwordConfirmChanged: (e) async* {
              yield state.copyWith(
                  passwordCheck: e.confirmStr,
                  passwordConfirmation: PasswordConfirmation(state.password, e.confirmStr),
                  authFailureOrSuccessOption: none(),
              );
          },


          isEmailVerified: (e) async* {

            yield state.copyWith(
              isEmailVerified: await _authFacade.isEmailVerified ?? false
            );

          },


          instagramContactChanged: (e) async* {
              yield state.copyWith(
                profile: state.profile.copyWith(
                    profileSocials: SocialsItem(
                        instagram: e.instStr,
                        facebook: state.profile.profileSocials.facebook,
                        twitter: state.profile.profileSocials.twitter
                )
              ),
              isEditingProfile: true,
              authFailureOrSuccessOption: none(),
            );
          },


          twitterContactChanged: (e) async* {
            yield state.copyWith(
                profile: state.profile.copyWith(
                    profileSocials: SocialsItem(
                        instagram: state.profile.profileSocials.instagram,
                        facebook: state.profile.profileSocials.facebook,
                        twitter:  e.twitterStr,
                  )
                ),
              isEditingProfile: true,
              authFailureOrSuccessOption: none(),
            );
          },


          fbookContactChanged: (e) async* {
            yield state.copyWith(
                profile: state.profile.copyWith(
                    profileSocials: SocialsItem(
                      instagram: state.profile.profileSocials.instagram,
                      facebook: e.bookStr,
                      twitter: state.profile.profileSocials.twitter,
                  )
                ),
              isEditingProfile: true,
              authFailureOrSuccessOption: none(),
            );
          },


          isAllowedNotifications: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                notificationSettings: ProfileNotificationItems(
                    notificationsAllowed: e.allowBool,
                    emailNotifications: (e.allowBool) ? state.profile.notificationSettings.emailNotifications : false,
                    newsUpdatesNotifications: (e.allowBool) ? state.profile.notificationSettings.newsUpdatesNotifications : false,
                    newFacilitiesNearYouNotifications: (e.allowBool) ? state.profile.notificationSettings.newFacilitiesNearYouNotifications : false,
                    newActivitiesNearYouNotifications: (e.allowBool) ? state.profile.notificationSettings.newActivitiesNearYouNotifications : false,
                ),
              ),
              isEditingProfile: true,
              authFailureOrSuccessOption: none(),
            );
          },


          isAllowedEmailNotifications: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                notificationSettings: ProfileNotificationItems(
                    notificationsAllowed: (state.profile.notificationSettings.notificationsAllowed ?? false) ? state.profile.notificationSettings.notificationsAllowed : true,
                    emailNotifications: e.emailBool,
                    newsUpdatesNotifications: state.profile.notificationSettings.newsUpdatesNotifications,
                    newFacilitiesNearYouNotifications: state.profile.notificationSettings.newFacilitiesNearYouNotifications,
                    newActivitiesNearYouNotifications: state.profile.notificationSettings.newActivitiesNearYouNotifications
                ),
              ),
              isEditingProfile: true,
              authFailureOrSuccessOption: none(),
            );



          },


          isAllowedNewsUpdatesNotifications: (e) async* {
            yield state.copyWith(
                profile: state.profile.copyWith(
                    notificationSettings: ProfileNotificationItems(
                        notificationsAllowed: (state.profile.notificationSettings.notificationsAllowed ?? false) ? state.profile.notificationSettings.notificationsAllowed : true,
                        emailNotifications: state.profile.notificationSettings.emailNotifications,
                        newsUpdatesNotifications: e.newsBool,
                        newFacilitiesNearYouNotifications: state.profile.notificationSettings.newFacilitiesNearYouNotifications,
                        newActivitiesNearYouNotifications: state.profile.notificationSettings.newActivitiesNearYouNotifications
                )
              ),
              isEditingProfile: true,
              authFailureOrSuccessOption: none(),
            );
          },


        ///
        /// BLOC EVENTS FOR LOCATION CHANGES ///
        ///

        isLongTermChanged: (e) async* {
          yield state.copyWith(
            isShortTerm: state.isShortTerm,
            isLongTerm: e.isLong,
            authFailureOrSuccessOption: none(),
          );
        },

        isTemporaryChanged: (e) async* {
            yield state.copyWith(
                isShortTerm: e.isTemp,
                isLongTerm: state.isLongTerm,
                authFailureOrSuccessOption: none(),
            );

        },

        isPrivateChanged: (e) async* {
            yield state.copyWith(
              isPrivate: e.isPrivate,
              isPublic: state.isPublic
            );
        },


        isPublicChanged: (e) async* {
          yield state.copyWith(
              isPrivate: state.isPrivate,
              isPublic: e.isPublic
          );
        },

        locationTypeChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: state.profile.profileLocations.city,
                    provinceState: state.profile.profileLocations.provinceState,
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: e.type,
                  )
              ),
            authFailureOrSuccessOption: none(),
          );
        },

        placeIdChanged: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                profileLocations: LocationModel(
                  ownerId: state.profile.profileLocations.ownerId,
                  placeId: e.placeIdStr,
                  longLat: state.profile.profileLocations.longLat,
                  countryRegion: state.profile.profileLocations.countryRegion,
                  city: state.profile.profileLocations.city,
                  provinceState: state.profile.profileLocations.provinceState,
                  street: state.profile.profileLocations.street,
                  postalCode: state.profile.profileLocations.postalCode,
                  isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                  isUnverified: state.profile.profileLocations.isUnverified,
                  isVerified: state.profile.profileLocations.isVerified,
                  isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                  isCompleted: state.profile.profileLocations.isCompleted,
                  aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                  locationType: state.profile.profileLocations.locationType,
                )
              ),
              isSubmittingAddress: false,
              authFailureOrSuccessOption: none(),
          );
        },

        longLatChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: e.longLatStr,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: state.profile.profileLocations.city,
                    provinceState: state.profile.profileLocations.provinceState,
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
              )
            ),
            authFailureOrSuccessOption: none(),
          );
        },

        countryChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: e.countryStr,
                    city: state.profile.profileLocations.city,
                    provinceState: state.profile.profileLocations.provinceState,
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
                  )
              ),
            authFailureOrSuccessOption: none(),
          );

        },


        cityChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: FacilityLocationCity(e.cityStr),
                    provinceState: state.profile.profileLocations.provinceState,
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
              )
            ),
            authFailureOrSuccessOption: none(),
          );
        },


        provinceStateChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: state.profile.profileLocations.city,
                    provinceState: FacilityLocationStateProvince(e.stateStr, state.profile.profileLocations.countryRegion),
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
              )
            ),
            authFailureOrSuccessOption: none(),
          );
        },


        streetChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: state.profile.profileLocations.city,
                    provinceState: state.profile.profileLocations.provinceState,
                    street: FacilityLocationStreet(e.streetStr),
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
              )
            ),
            isSubmittingAddress: false,
            authFailureOrSuccessOption: none(),
          );
        },


        postalCodeChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: state.profile.profileLocations.city,
                    provinceState: state.profile.profileLocations.provinceState,
                    street: state.profile.profileLocations.street,
                    postalCode: FacilityLocationPostalCode(e.postalStr, state.profile.profileLocations.countryRegion),
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
              )
            ),
            authFailureOrSuccessOption: none(),
          );
        },


        aptNumberChanged: (e) async* {
          yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: state.profile.profileLocations.city,
                    provinceState: state.profile.profileLocations.provinceState,
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    locationType: state.profile.profileLocations.locationType,
                    aptUnitNumber: e.aptStr,
              )
            ),
            authFailureOrSuccessOption: none(),
          );
        },

          isLocationConfirmed: (e) async* {
            yield state.copyWith(
                profile: state.profile.copyWith(
                    profileLocations: LocationModel(
                      ownerId: state.profile.profileLocations.ownerId,
                      placeId: state.profile.profileLocations.placeId,
                      longLat: state.profile.profileLocations.longLat,
                      countryRegion: state.profile.profileLocations.countryRegion,
                      city: state.profile.profileLocations.city,
                      provinceState: state.profile.profileLocations.provinceState,
                      street: state.profile.profileLocations.street,
                      postalCode: state.profile.profileLocations.postalCode,
                      isLocationConfirmed: e.isConfirmedBool,
                      isUnverified: state.profile.profileLocations.isUnverified,
                      isVerified: state.profile.profileLocations.isVerified,
                      isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                      isCompleted: state.profile.profileLocations.isCompleted,
                      aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                      locationType: state.profile.profileLocations.locationType,
                    )
                ),
              authFailureOrSuccessOption: none(),
            );
          },

          locationOwnerChanged: (e) async* {
            yield state.copyWith(
              profile: state.profile.copyWith(
                profileLocations: LocationModel(
                  ownerId: e.ownerStr,
                  placeId: state.profile.profileLocations.placeId,
                  longLat: state.profile.profileLocations.longLat,
                  countryRegion: state.profile.profileLocations.countryRegion,
                  city:  state.profile.profileLocations.city,
                  provinceState: state.profile.profileLocations.provinceState,
                  street: state.profile.profileLocations.street,
                  postalCode: state.profile.profileLocations.postalCode,
                  isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                  isUnverified: state.profile.profileLocations.isUnverified,
                  isVerified: state.profile.profileLocations.isVerified,
                  isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                  isCompleted: state.profile.profileLocations.isCompleted,
                  aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                  locationType: state.profile.profileLocations.locationType,
                ),
              ),
              authFailureOrSuccessOption: none(),
            );
          },

          finishedUpdatingAddressFromGoogle: (e) async* {

            yield state.copyWith(
              profile: state.profile.copyWith(
                  profileLocations: LocationModel(
                    ownerId: state.profile.profileLocations.ownerId,
                    placeId: state.profile.profileLocations.placeId,
                    longLat: state.profile.profileLocations.longLat,
                    countryRegion: state.profile.profileLocations.countryRegion,
                    city: FacilityLocationCity(e.cityStr),
                    provinceState: FacilityLocationStateProvince(e.provinceStr, state.profile.profileLocations.countryRegion),
                    street: state.profile.profileLocations.street,
                    postalCode: state.profile.profileLocations.postalCode,
                    isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                    isUnverified: state.profile.profileLocations.isUnverified,
                    isVerified: state.profile.profileLocations.isVerified,
                    isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                    isCompleted: state.profile.profileLocations.isCompleted,
                    aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                    locationType: state.profile.profileLocations.locationType,
                ),
              ),
              isSubmittingAddress: true,
            );
          },


          finishedUpdatingAddressFromCoordinates: (e) async* {

            yield state.copyWith(
              profile: state.profile.copyWith(
                profileLocations: LocationModel(
                  ownerId: state.profile.profileLocations.ownerId,
                  placeId: state.profile.profileLocations.placeId,
                  longLat: state.profile.profileLocations.longLat,
                  countryRegion: e.countryStr,
                  city: FacilityLocationCity(e.cityStr),
                  provinceState: FacilityLocationStateProvince(e.stateStr, e.countryStr),
                  street: FacilityLocationStreet(e.streetStr),
                  postalCode: FacilityLocationPostalCode(e.postalStr, e.countryStr),
                  isLocationConfirmed: state.profile.profileLocations.isLocationConfirmed,
                  isUnverified: state.profile.profileLocations.isUnverified,
                  isVerified: state.profile.profileLocations.isVerified,
                  isVerifiedAlready: state.profile.profileLocations.isVerifiedAlready,
                  isCompleted: state.profile.profileLocations.isCompleted,
                  aptUnitNumber: state.profile.profileLocations.aptUnitNumber,
                  locationType: state.profile.profileLocations.locationType,

                ),
              ),
              isSubmittingAddress: true,
            );
          },

          didSelectIsSubmitting: (e) async* {
              yield state.copyWith(
                  isSubmitting: e.selectBool
              );
          },


          finishedIdentificationRemoval: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;
            yield state.copyWith(
                profile: state.profile.copyWith(
                  profileUser: UserProfileModel(
                      userId: state.profile.profileUser.userId,
                      legalName: state.profile.profileUser.legalName,
                      legalSurname: state.profile.profileUser.legalSurname,
                      age: state.profile.profileUser.age,
                      gender: state.profile.profileUser.gender,
                      dateOfBirth: state.profile.profileUser.dateOfBirth,
                      emailAddress: state.profile.profileUser.emailAddress,
                      userAddress: state.profile.profileUser.userAddress,
                      photoUri: state.profile.profileUser.photoUri,
                      photoIdUri: state.profile.profileUser.photoIdUri,
                      photoSelfieUri: state.profile.profileUser.photoSelfieUri,
                      profileImage: state.profile.profileUser.profileImage,
                      contactPhones: state.profile.profileUser.contactPhones,
                      emergencyContact: state.profile.profileUser.emergencyContact,
                      isEmailAuth: state.profile.profileUser.isEmailAuth,
                      isPhoneAuth: state.profile.profileUser.isPhoneAuth,
                      isVerified: state.profile.profileUser.isVerified,
                      identificationState: PhotoIdentificationState.noRequest,
                      joinedDate: state.profile.profileUser.joinedDate,
                      stripeAccountId: state.profile.profileUser.stripeAccountId,
                      stripeCustomerId: state.profile.profileUser.stripeCustomerId,
                      defaultPaymentMethod: state.profile.profileUser.defaultPaymentMethod,
                      stripeAccountDetailsSubmitted: state.profile.profileUser.stripeAccountDetailsSubmitted
                  ),
                ),
                authFailureOrSuccessOption: none()
            );

            final isNameValid = state.profile.profileUser.legalName.isValid();
            final isLastNameValid = state.profile.profileUser.legalSurname.isValid();
            final isPhoneValid = (state.profile.profileUser.contactPhones != null) ? state.profile.profileUser.contactPhones!.isValid() : true;
            final isEmergePhoneValid = (state.profile.profileUser.emergencyContact != null) ? state.profile.profileUser.emergencyContact!.isValid() : true;


            if (isNameValid && isLastNameValid && isPhoneValid && isEmergePhoneValid) {

              yield state.copyWith(
                isEditingProfile: false,
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              );

              failureOrSuccess = state.isSubmitting ?
              await _authFacade.updateProfileVerification(profile: state.profile.profileUser) :
              left(AuthFailure.serverError());

              failureOrSuccess.fold(
                  (l) async* {
                    yield state.copyWith(
                      isSubmitting: false,
                      authFailureOrSuccessOption: optionOf(failureOrSuccess),
                    );
                  },
                  (r) async* {
                    yield state.copyWith(
                      isSubmitting: false,
                      authFailureOrSuccessOption: none(),
                  );
                }
              );
            }
            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: none(),
            );
          },

          finishedEmailVerification: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;

            if (!state.isEmailVerified) {
              yield state.copyWith(
                  authFailureOrSuccessOption: none()
              );

              failureOrSuccess = await _authFacade.verifyAccountWithEmail();

              yield state.copyWith(
                  authFailureOrSuccessOption: optionOf(failureOrSuccess)
              );
            }
          },


          finishedUpdatingNotificationSettings: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;

            if (state.isEditingProfile) {
              yield state.copyWith(
                  isSubmitting: true,
                  authFailureOrSuccessOption: none()
              );

             failureOrSuccess = state.isSubmitting ? left(AuthFailure.serverError()) : await _authFacade.updateUserProfileNotifications(settings: state.profile.notificationSettings);

              yield state.copyWith(
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
                showErrorMessages: AutovalidateMode.always,
                isSubmitting: false,
              );
            }
          },


          finishedUpdatingUserProfileSocials: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;

            if (state.isEditingProfile) {

              yield state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none()
              );

              failureOrSuccess = state.isSubmitting ? await _authFacade.updateUserProfileSocials(socials: state.profile.profileSocials) : left(AuthFailure.serverError());


              yield state.copyWith(
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
                showErrorMessages: AutovalidateMode.always,
                isSubmitting: false,
              );
            }
          },



          finishedUpdatingNewPassword: (e) async* {

            Either<AuthFailure, Unit> failureOrSuccess;

            final isPasswordValid = state.password.isValid();
            final passConfirmed = state.passwordConfirmation.isValid();


            if (isPasswordValid && passConfirmed) {
              yield state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              );

              failureOrSuccess = state.isSubmitting ? left(AuthFailure.serverError()) : await _authFacade.updateUserPassword(password: state.password);

              yield state.copyWith(
                  authFailureOrSuccessOption: optionOf(failureOrSuccess));

            }

            yield state.copyWith(
              showErrorMessages: AutovalidateMode.always,
              isSubmitting: false,
            );
          },


          finishedUpdatingUserProfile: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;

            final isNameValid = state.profile.profileUser.legalName.isValid();
            final isLastNameValid = state.profile.profileUser.legalSurname.isValid();
            final isPhoneValid = (state.profile.profileUser.contactPhones != null) ? state.profile.profileUser.contactPhones!.isValid() : true;
            final isEmergePhoneValid = (state.profile.profileUser.emergencyContact != null) ? state.profile.profileUser.emergencyContact!.isValid() : true;

            if (isNameValid && isLastNameValid && isPhoneValid && isEmergePhoneValid && state.isEditingProfile) {
              yield state.copyWith(
                isEditingProfile: false,
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              );

              failureOrSuccess = state.isSubmitting ? await _authFacade.updateUserProfile(
                  profile: state.profile.profileUser,
                  profileImageUrl: state.profileImageUrl,
                  photoIDUrl: state.photoIdImageUrl,
                  photoSelfieUrl: state.photoSelfieImageUrl,
              ) : left(AuthFailure.serverError());

              yield state.copyWith(
              // isEditingProfile: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
                );
              }

              yield state.copyWith(
              showErrorMessages: AutovalidateMode.always,
              isSubmitting: false,
              // isEditingProfile: true,
          );
        },


          finishedUpdatingUserLocation: (e) async* {

            Either<AuthFailure, Unit> failureOrSuccess;

            final locationIsValid = state.profile.profileLocations.failureOption.isNone();
            final isConfirmed = state.profile.profileLocations.isLocationConfirmed;
            final isNotVerified = state.profile.profileLocations.isUnverified;

            if (locationIsValid && isConfirmed && isNotVerified) {
              yield state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              );

              failureOrSuccess = state.isSubmitting ? left(AuthFailure.serverError()) : await _authFacade.createNewUserProfileLocation(location: state.profile.profileLocations);

              yield state.copyWith(
              authFailureOrSuccessOption: optionOf(failureOrSuccess));
            }

            yield state.copyWith(
              isSubmitting: false,
          );
        },
      );
    }


}