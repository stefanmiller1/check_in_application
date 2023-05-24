part of check_in_application;

@injectable
class ListingSettingFormBloc extends Bloc<ListingSettingFormEvent, ListingSettingFormState> {

  final facade.LMFacade _listingFormFacade;
  final facade.SStripeFacade _stripeFacade;

  ListingSettingFormBloc(this._listingFormFacade, this._stripeFacade) : super(ListingSettingFormState.initial());

  @override
  Stream<ListingSettingFormState> mapEventToState(
      ListingSettingFormEvent event) async* {

    yield* event.map(
          initializeListingForm: (e) async* {

              yield e.initialListingManagerForm.fold(
                  () => state,
                  (listingForm) => state.copyWith(
                      listingManagerForm: listingForm,
                      isSaving: false
                )
             );
          },

          isSavingSettingsChanged: (e) async* {
            yield state.copyWith(
                isSavingSettings: e.saveBool
            );
          },

          failureOrSuccessOptionSettings: (e) async* {
              yield state.copyWith(
                  authFailureOrSuccessOptionSettingsSaving: e.option
              );
          },


          ownerChanged: (e) async* {

          },

          startDateChanged: (e) async* {

          },

          nameChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          listingName: FirstLastName(e.nameStr)
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },

          emailAddressChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          listingEmail: e.emailStr
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          phoneNumberChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          listingPhone: e.phoneNumberStr
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                )
              )
            );
          },
          statusTypeChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          listingStatus: e.statusType
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          webSiteChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          listingWebsite: e.webSiteStr
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          countryRegionLanguageChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          countryRegionLanguage: e.countryStr
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          timeZoneChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          timeZoneRegion: e.timeZoneStr
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          currencyTypeChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          currency: e.currencyStr
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },


          instagramContactChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          profileSocials: state.listingManagerForm.listingProfileService.backgroundInfoServices.profileSocials.copyWith(
                            instagram: e.instStr
                          )
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          twitterContactChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          profileSocials: state.listingManagerForm.listingProfileService.backgroundInfoServices.profileSocials.copyWith(
                              twitter: e.twitterStr
                          )
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },
          fBookContactChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                      backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices.copyWith(
                          profileSocials: state.listingManagerForm.listingProfileService.backgroundInfoServices.profileSocials.copyWith(
                              facebook: e.bookStr
                          )
                      ),
                      listingLocationSetting:state.listingManagerForm.listingProfileService.listingLocationSetting,
                      spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                    )
                )
            );
          },

          isLocationConfirmed: (e) async* {
            // yield state.copyWith(
            //     listingManagerForm: state.listingManagerForm.copyWith(
            //         listingServiceId: state.listingManagerForm.listingServiceId,
            //         listingReservationService: state.listingManagerForm.listingReservationService,
            //         listingRulesService: state.listingManagerForm.listingRulesService,
            //         listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
            //           backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices,
            //           listingLocationSetting: e.location,
            //           spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
            //         )
            //     )
            // );
          },


          updateWithSavedLocation: (e) async* {
            yield state.copyWith(
              isEditingSettings: true,
              listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                        backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices,
                        listingLocationSetting: e.location,
                        spaceSetting: state.listingManagerForm.listingProfileService.spaceSetting,
                )
              )
            );
          },

          facilityOptionChanged: (e) async* {
            yield state.copyWith(
              listingManagerForm: state.listingManagerForm.copyWith(
                listingServiceId: state.listingManagerForm.listingServiceId,
                listingReservationService: state.listingManagerForm.listingReservationService,
                listingRulesService: state.listingManagerForm.listingRulesService,
                listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                    backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices,
                    listingLocationSetting: state.listingManagerForm.listingProfileService.listingLocationSetting,
                    spaceSetting: SpaceSettings(
                      facilityTypeId: e.facilityOption,
                      spaceTypes: state.listingManagerForm.listingProfileService.spaceSetting.spaceTypes,
                  ),
                )
              )
            );
          },

         spaceOptionsChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService.copyWith(
                        backgroundInfoServices: state.listingManagerForm.listingProfileService.backgroundInfoServices,
                        listingLocationSetting: state.listingManagerForm.listingProfileService.listingLocationSetting,
                        spaceSetting: SpaceSettings(
                          facilityTypeId: state.listingManagerForm.listingProfileService.spaceSetting.facilityTypeId,
                          spaceTypes: e.spaceTypeList,
                  ),
                )
              )
            );
          },


          activitySettingsChanged: (e) async* {

          },

          availabilitySettingsChanged: (e) async* {

          },

          isReviewRequiredChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting.copyWith(
                          isReviewRequired: e.isReviewBool,
                          isPrivateOnly: state.listingManagerForm.listingReservationService.accessVisibilitySetting.isPrivateOnly,
                          isInviteOnly: state.listingManagerForm.listingReservationService.accessVisibilitySetting.isInviteOnly,
                          privateInviteList: state.listingManagerForm.listingReservationService.accessVisibilitySetting.privateInviteList
                      ),
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting ,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isPrivateOnlyChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting.copyWith(
                        isReviewRequired: state.listingManagerForm.listingReservationService.accessVisibilitySetting.isReviewRequired,
                        isPrivateOnly: e.isPrivateBool,
                        isInviteOnly: state.listingManagerForm.listingReservationService.accessVisibilitySetting.isInviteOnly,
                        privateInviteList: state.listingManagerForm.listingReservationService.accessVisibilitySetting.privateInviteList
                      ),
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting ,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,

                    ),
                  listingRulesService: state.listingManagerForm.listingRulesService,
                  listingProfileService: state.listingManagerForm.listingProfileService
              )
            );
          },

          isInviteOnlyChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting.copyWith(
                          isReviewRequired: state.listingManagerForm.listingReservationService.accessVisibilitySetting.isReviewRequired,
                          isPrivateOnly:  state.listingManagerForm.listingReservationService.accessVisibilitySetting.isPrivateOnly,
                          isInviteOnly: e.isPublicBool,
                          privateInviteList: state.listingManagerForm.listingReservationService.accessVisibilitySetting.privateInviteList
                      ),
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting ,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          privateInviteListChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting.copyWith(
                          isReviewRequired: state.listingManagerForm.listingReservationService.accessVisibilitySetting.isReviewRequired,
                          isPrivateOnly:  state.listingManagerForm.listingReservationService.accessVisibilitySetting.isPrivateOnly,
                          isInviteOnly:  state.listingManagerForm.listingReservationService.accessVisibilitySetting.isInviteOnly,
                          privateInviteList: e.contactList
                      ),
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting ,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isAllowedEarlyEndChange: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                          isAllowedEarlyEndAndChanges: e.earlyEndBool,
                          isAllowedChangeNotEarlyEnd: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedChangeNotEarlyEnd,
                          isNotAllowedCancellation: state.listingManagerForm.listingReservationService.cancellationSetting.isNotAllowedCancellation,
                          isAllowedTimeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedTimeBasedChanges,
                          isAllowedFeeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedFeeBasedChanges,
                          timeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.timeBasedCancellationOptions,
                          feeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.feeBasedCancellationOptions,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isAllowedChangeWithoutEarlyEnd: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                        isAllowedEarlyEndAndChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedEarlyEndAndChanges ,
                        isAllowedChangeNotEarlyEnd: e.changeOnlyBool,
                        isNotAllowedCancellation: state.listingManagerForm.listingReservationService.cancellationSetting.isNotAllowedCancellation,
                        isAllowedTimeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedTimeBasedChanges,
                        isAllowedFeeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedFeeBasedChanges,
                        timeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.timeBasedCancellationOptions,
                        feeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.feeBasedCancellationOptions,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,

                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isNotAllowedCancellation: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                        isAllowedEarlyEndAndChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedEarlyEndAndChanges ,
                        isAllowedChangeNotEarlyEnd: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedChangeNotEarlyEnd,
                        isNotAllowedCancellation: e.noCancelBool,
                        isAllowedTimeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedTimeBasedChanges,
                        isAllowedFeeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedFeeBasedChanges,
                        timeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.timeBasedCancellationOptions,
                        feeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.feeBasedCancellationOptions,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isAllowedTimeBasedCancellation: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                        isAllowedEarlyEndAndChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedEarlyEndAndChanges ,
                        isAllowedChangeNotEarlyEnd: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedChangeNotEarlyEnd,
                        isNotAllowedCancellation: state.listingManagerForm.listingReservationService.cancellationSetting.isNotAllowedCancellation,
                        isAllowedTimeBasedChanges: e.timeBasedBool,
                        isAllowedFeeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedFeeBasedChanges,
                        timeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.timeBasedCancellationOptions,
                        feeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.feeBasedCancellationOptions,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,

                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isAllowedFeeBasedCancellation: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                        isAllowedEarlyEndAndChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedEarlyEndAndChanges ,
                        isAllowedChangeNotEarlyEnd: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedChangeNotEarlyEnd,
                        isNotAllowedCancellation: state.listingManagerForm.listingReservationService.cancellationSetting.isNotAllowedCancellation,
                        isAllowedTimeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedTimeBasedChanges,
                        isAllowedFeeBasedChanges: e.feeBasedBool,
                        timeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.timeBasedCancellationOptions,
                        feeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.feeBasedCancellationOptions,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          timeBasedCancellationChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                        isAllowedEarlyEndAndChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedEarlyEndAndChanges ,
                        isAllowedChangeNotEarlyEnd: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedChangeNotEarlyEnd,
                        isNotAllowedCancellation: state.listingManagerForm.listingReservationService.cancellationSetting.isNotAllowedCancellation,
                        isAllowedTimeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedTimeBasedChanges,
                        isAllowedFeeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedFeeBasedChanges,
                        timeBasedCancellationOptions: e.timeBasedCancellation,
                        feeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.feeBasedCancellationOptions,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          feeBasedCancellationChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting.copyWith(
                        isAllowedEarlyEndAndChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedEarlyEndAndChanges ,
                        isAllowedChangeNotEarlyEnd: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedChangeNotEarlyEnd,
                        isNotAllowedCancellation: state.listingManagerForm.listingReservationService.cancellationSetting.isNotAllowedCancellation,
                        isAllowedTimeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedTimeBasedChanges,
                        isAllowedFeeBasedChanges: state.listingManagerForm.listingReservationService.cancellationSetting.isAllowedFeeBasedChanges,
                        timeBasedCancellationOptions: state.listingManagerForm.listingReservationService.cancellationSetting.timeBasedCancellationOptions,
                        feeBasedCancellationOptions: e.feeBasedCancellation,
                      ),
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          checkInSettingsChanged: (e) async* {
            yield state.copyWith(
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting,
                      checkInSetting: e.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
              )
            );
          },

          customFieldRuleSettingChanged: (e) async* {
            yield state.copyWith(
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: e.customFieldRule,
                    ),
                  listingRulesService: state.listingManagerForm.listingRulesService,
                  listingProfileService: state.listingManagerForm.listingProfileService
              )
            );
          },

          isRequiredToPayFirst: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,
                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },


          stripeAPIKeyPublishedChanged: (e) async* {
            yield state.copyWith(
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,

                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },
          stripeAPIKeySecretChanged: (e) async* {
            yield state.copyWith(
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,

                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          listOfExemptionsChanged: (e) async* {
            yield state.copyWith(
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService.copyWith(
                      accessVisibilitySetting: state.listingManagerForm.listingReservationService.accessVisibilitySetting,
                      cancellationSetting: state.listingManagerForm.listingReservationService.cancellationSetting,
                      checkInSetting: state.listingManagerForm.listingReservationService.checkInSetting,
                      customFieldRuleSetting: state.listingManagerForm.listingReservationService.customFieldRuleSetting,

                    ),
                    listingRulesService: state.listingManagerForm.listingRulesService,
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isPricingRuleSettingFixed: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: e.pricingBool,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                  listingProfileService: state.listingManagerForm.listingProfileService
              )
            );
          },

          isQuotaRuleSettingFixed: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: e.quotaBool,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          isConditionServiceFixed: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: e.condBool,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          defaultPricingRuleChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: e.pricingRule,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                listingProfileService: state.listingManagerForm.listingProfileService
              )
            );
          },


          defaultQuotaRuleChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: e.quotaRule,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },


          defaultConditionsRuleChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: e.conditionRule,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          pricingRuleSettingsChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        pricingRuleSettings: e.pricingRules,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          quotaRuleSettingsChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: e.quoteRules,
                        conditionServices: state.listingManagerForm.listingRulesService.conditionServices
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          conditionServicesChanged: (e) async* {
            yield state.copyWith(
                isEditingSettings: true,
                listingManagerForm: state.listingManagerForm.copyWith(
                    listingServiceId: state.listingManagerForm.listingServiceId,
                    listingReservationService: state.listingManagerForm.listingReservationService,
                    listingRulesService: state.listingManagerForm.listingRulesService.copyWith(
                        isPricingRuleFixed: state.listingManagerForm.listingRulesService.isPricingRuleFixed,
                        isQuoteRuleFixed: state.listingManagerForm.listingRulesService.isQuoteRuleFixed,
                        isConditionServiceFixed: state.listingManagerForm.listingRulesService.isConditionServiceFixed,
                        defaultPricingRuleSettings: state.listingManagerForm.listingRulesService.defaultPricingRuleSettings,
                        defaultQuotaRuleSetting: state.listingManagerForm.listingRulesService.defaultQuotaRuleSetting,
                        defaultConditionsServices: state.listingManagerForm.listingRulesService.defaultConditionsServices,
                        pricingRuleSettings: state.listingManagerForm.listingRulesService.pricingRuleSettings,
                        quotaRuleSettings: state.listingManagerForm.listingRulesService.quotaRuleSettings,
                        conditionServices: e.conditionService
                    ),
                    listingProfileService: state.listingManagerForm.listingProfileService
                )
            );
          },

          createStripeOnBoardingAccountLink: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;

            yield state.copyWith(
              authFailureOrSuccessOptionStripe: none()
            );

            failureOrSuccess = await _stripeFacade.createOnBoardingStripeAccountLink(profile: e.profile);

            yield state.copyWith(
              authFailureOrSuccessOptionStripe: optionOf(failureOrSuccess)
            );

          },

          presentStripeAccountDashboard: (e) async* {
            Either<AuthFailure, Unit> failureOrSuccess;

            yield state.copyWith(
                authFailureOrSuccessOptionStripe: none()
            );

            failureOrSuccess = await _stripeFacade.presentStripeAccountWithLoginLink(profile: e.profile);

            yield state.copyWith(
                authFailureOrSuccessOptionStripe: optionOf(failureOrSuccess)
            );
          },


          saveListingSettingsFinished: (e) async* {
            Either<ListingFormFailure, Unit> failureOrSuccess;

            final bool isTitleValid = state.listingManagerForm.listingProfileService.backgroundInfoServices.listingName.isValid();
            // final bool isWebsiteValid = (state.listingManagerForm.listingProfileService.backgroundInfoServices.listingWebsite.isNotEmpty) ? state.listingManagerForm.listingProfileService.backgroundInfoServices.listingWebsite.isValid() : true;
            final bool emailIsValid = state.listingManagerForm.listingProfileService.backgroundInfoServices.listingEmail.isValid();
            final bool phoneIsValid = ((state.listingManagerForm.listingProfileService.backgroundInfoServices.listingPhone != null) && state.listingManagerForm.listingProfileService.backgroundInfoServices.listingPhone!.nsn.isNotEmpty) ? state.listingManagerForm.listingProfileService.backgroundInfoServices.listingPhone!.isValid() : true;

            yield state.copyWith(
                isEditingSettings: true,
                showErrorMessageSettings: AutovalidateMode.always,
            );

            if (isTitleValid && emailIsValid && phoneIsValid) {

              failureOrSuccess = (state.isSavingSettings) ? await _listingFormFacade.updateListingForm(listingForm: state.listingManagerForm) : left(ListingFormFailure.listingServerError());

              yield state.copyWith(
                  isEditingSettings: false,
                  showErrorMessageSettings: AutovalidateMode.disabled,
                  authFailureOrSuccessOptionSettingsSaving: optionOf(failureOrSuccess)
                );

            } else {

              failureOrSuccess = left(ListingFormFailure.validatorError(failed: 'Cannot Save, Please Check Background Info.'));
              yield state.copyWith(
                  isEditingSettings: false,
                  authFailureOrSuccessOptionSettingsSaving: optionOf(failureOrSuccess)
              );
            }
          },


    );
  }

}