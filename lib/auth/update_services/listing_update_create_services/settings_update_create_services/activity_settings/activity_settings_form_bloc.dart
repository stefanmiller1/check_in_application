import 'package:check_in_facade/check_in_facade.dart' as facade;
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:check_in_domain/check_in_domain.dart';
import 'package:dartz/dartz.dart';

part 'activity_settings_form_event.dart';
part 'activity_settings_form_state.dart';
part 'activity_settings_form_bloc.freezed.dart';

@injectable
class UpdateActivityFormBloc extends Bloc<UpdateActivityFormEvent, UpdateActivityFormState> {

  final facade.AAuthFacade _activityAuthFacade;
  final facade.SStripeFacade _stripeFacade;

  UpdateActivityFormBloc(this._activityAuthFacade, this._stripeFacade) : super(UpdateActivityFormState.initial());

  @override
  Stream<UpdateActivityFormState> mapEventToState(
      UpdateActivityFormEvent event) async* {

    yield* event.map(
        initializeActivityForm: (e) async* {

          yield e.initializeActivityForm.fold(
                  () => state,
                  (activityForm) => state.copyWith(
                  activitySettingsForm: activityForm,
                    reservationItem: e.initializeResForm.fold(
                            () => state.reservationItem,
                            (reservation) => reservation
                    ),
                  isEditingForm: false,
                  authFailureOrSuccessOptionSaving: none()
              )
          );
        },

        isSavingChanged: (e) async* {
          yield state.copyWith(
            isSaving: e.boolSave
          );
        },

        activityOptionChanged: (e) async* {
            yield state.copyWith(
                activitySettingsForm: state.activitySettingsForm.copyWith(
                    activityTypes: e.activityOption,
            ),
            isEditingForm: true,
            authFailureOrSuccessOptionSaving: none()
          );
        },


        activityTitleChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                    activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                      activityTitle: e.titleChanged
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityDescriptionChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          activityDescription1: e.descriptionChanged
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityDescriptionChangedTwo: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          activityDescription2: e.descriptionChanged
                      )
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityProfileImagesChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          activityProfileImages: e.imagesList
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityPostedOnBehalf: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      isActivityPost: e.isPostBool
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityPostContactWebsite: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      postContactWebsite: e.websiteStr
                  ),

              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityPostContactEmail: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      postContactEmail: e.emailStr
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityPostContactInstagram: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      postContactSocialInstagram: e.instaStr
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isPartnersInviteOnly: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          isPartnersInviteOnly: e.inviteBool
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

      isInstructorInviteOnly: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          isInstructorInviteOnly: e.inviteBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
      },


      activityGoalsChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          activityGoals: e.activityGoals
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityInterestsChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityBackground: state.activitySettingsForm.profileService.activityBackground.copyWith(
                          activityInterests: e.activityInterests
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },


        isSeventeenAndUnderChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                    activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                      isSeventeenAndUnder: e.ageBool
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        minimumAgeChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          minimumAgeRequirement: e.ageInt
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isMenOnlyChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isMensOnly: e.menBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isWomenOnlyChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isWomenOnly: e.womenBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isCoEdOnlyChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isCoEdOnly: e.coedBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        skillLevelExpectationChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          skillLevelExpectation: e.skillLevel
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },


        suggestedYearsChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          suggestedYearsOfExperience: e.yearsInt
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isEquipmentProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isEquipmentProvided: e.equipBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFacilityEquipmentChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isFacilityEquipment: e.equipBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isGearProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isGearProvided: e.gearBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFacilityGearChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isFacilityGear: e.gearBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAnalyticsProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isAnalyticsProvided: e.anaBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isOfficiatorProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          isOfficiatorProvided: e.offBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isMerchantSupportedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: (state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement == null) ?
                          EventActivityRulesRequirement.empty().copyWith(
                            isMerchantSupported: e.merchBool
                          ) :
                          state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                            isMerchantSupported: e.merchBool
                        )
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAlcoholForSaleChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isAlcoholForSale: e.alcBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFoodForSaleChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isFoodForSale: e.foodBool
                      )
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAlcoholProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isAlcoholProvided: e.alcBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFacilityAlcoholChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isFacilityProvidedAlcohol: e.alcBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFoodProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isFoodProvided: e.foodBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFacilityFoodChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isFacilityProvidedFood: e.foodBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isSecurityProvidedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isSecurityProvided: e.secBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isFacilitySecurityChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  profileService: state.activitySettingsForm.profileService.copyWith(
                      activityRequirements: state.activitySettingsForm.profileService.activityRequirements.copyWith(
                          eventActivityRulesRequirement: state.activitySettingsForm.profileService.activityRequirements.eventActivityRulesRequirement?.copyWith(
                              isFacilityProvidedSecurity: e.secBool
                          )
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isReviewRequiredChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                    accessVisibilitySetting: state.activitySettingsForm.rulesService.accessVisibilitySetting.copyWith(
                      isReviewRequired: e.isReviewBool
                    )
                  ),
              ),
            isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isPrivateOnlyChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      accessVisibilitySetting: state.activitySettingsForm.rulesService.accessVisibilitySetting.copyWith(
                          isPrivateOnly: e.isPrivateBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isInviteOnlyChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      accessVisibilitySetting: state.activitySettingsForm.rulesService.accessVisibilitySetting.copyWith(
                          isInviteOnly: e.isPublicBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        privateInviteListChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      accessVisibilitySetting: state.activitySettingsForm.rulesService.accessVisibilitySetting.copyWith(
                          privateInviteList: e.contactList
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAllowedEarlyEndChange: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                    cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                        isAllowedEarlyEndAndChanges: e.earlyEndBool
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAllowedChangeWithoutEarlyEnd: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                          isAllowedChangeNotEarlyEnd: e.changeOnlyBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isNotAllowedCancellation: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                          isNotAllowedCancellation: e.noCancelBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAllowedTimeBasedCancellation: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                          isAllowedTimeBasedChanges: e.timeBasedBool
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAllowedFeeBasedCancellation: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                          isAllowedFeeBasedChanges: e.feeBasedBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        timeBasedCancellationChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                          timeBasedCancellationOptions: e.timeBasedCancellation
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        feeBasedCancellationChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      cancellationSettings: state.activitySettingsForm.rulesService.cancellationSettings.copyWith(
                          feeBasedCancellationOptions: e.feeBasedCancellation
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        ruleOptionChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                    ruleOption: e.rules
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        checkInSettingsChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      checkInSetting: e.checkInList
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        customFieldRuleSettingsChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      customFieldRuleSetting: e.customRulesList
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        customRuleOptionChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      customRuleOption: e.customRules
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        skillLevelToReachChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      skillLevelReached: e.skills
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        vendorFormsChanged: (e) async* {
          yield state.copyWith(
            activitySettingsForm: state.activitySettingsForm.copyWith(
              rulesService: state.activitySettingsForm.rulesService.copyWith(
                vendorMerchantForms: e.forms
              )
            ),
            isEditingForm: true,
            authFailureOrSuccessOptionSaving: none()
          );
        },

        allowedDonationTypesChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                    gameActivityRules: state.activitySettingsForm.rulesService.gameActivityRules?.copyWith(
                        allowedDonationTypes: e.donationTypes
                    )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isAllowedExternalContributions: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  rulesService: state.activitySettingsForm.rulesService.copyWith(
                      gameActivityRules: state.activitySettingsForm.rulesService.gameActivityRules?.copyWith(
                          isAllowedExternalContributions: e.exBool
                      )
                  ),
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        currencyTypeChanged: (e) async* {
          yield state.copyWith(
            activitySettingsForm: state.activitySettingsForm.copyWith(
              rulesService: state.activitySettingsForm.rulesService.copyWith(
                currency: e.currency
              ),
            ),
            isEditingForm: true,
            authFailureOrSuccessOptionSaving: none()
          );
        },

        isTicketBasedAttendanceChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                    isTicketBased: e.ticketBool
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isPassBasedAttendanceChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      isPassBased: e.passBool
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isLimitedAttendanceChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      isLimitedAttendance: e.limitBool
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        attendanceLimitChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      attendanceLimit: e.limitInt
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        isTicketFixedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      isTicketFixed: e.ticketBool
                  )
              ),
            isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

      isTicketSlotBasedOnly: (e) async* {
        yield state.copyWith(
            activitySettingsForm: state.activitySettingsForm.copyWith(
                activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                    isTicketPerSlotBased: e.ticketBool
                )
            ),
            isEditingForm: true,
            authFailureOrSuccessOptionSaving: none()
        );
      },

        isPassFixedChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      isPassesFixed: e.passBool
                )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        defaultTicketChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityTickets: e.aTicket
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        activityTicketsChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      activityTickets: e.ticketList
                )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        passesAttendanceIsAllowedGroups: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                        isAllowedGroupAttendance: e.groupBool
                    )
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        passesMinimumGroupQuantityChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                          minimumGroupQuantity: e.minInt
                      )
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        passesMaximumGroupQuantityChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                          maximumGroupQuantity: e.maxInt
                      )
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        passesQuantityChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                          passQuantity: e.passesInt
                      )
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        passesCoverAllSessions: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                          recurringPassAllSession: e.sessionBool
                      )
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
          );
        },

        passesFeeChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                          passesPrice: e.maxInt
                  )
                )
              ),
            isEditingForm: true,
            authFailureOrSuccessOptionSaving: none()
          );
        },

        passesCoverLimitedSession: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      defaultActivityPass: state.activitySettingsForm.activityAttendance.defaultActivityPass?.copyWith(
                          recurringNumberOfSessions: e.limitInt
                      )
                  )
              ),
            isEditingForm: true,
            authFailureOrSuccessOptionSaving: none()
          );
        },

        activityPassesChanged: (e) async* {
          yield state.copyWith(
              activitySettingsForm: state.activitySettingsForm.copyWith(
                  activityAttendance: state.activitySettingsForm.activityAttendance.copyWith(
                      activityPasses: e.passesList
                  )
              ),
              isEditingForm: true,
              authFailureOrSuccessOptionSaving: none()
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

        createActivityFinished: (e) async* {
          Either<ActivityFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
              isSaving: true,
              isEditingForm: false,
              authFailureOrSuccessOptionSaving: none()
          );

          failureOrSuccess = state.isSaving ? await _activityAuthFacade.updateActivitySettingsForm(
              activityForm: state.activitySettingsForm,
              activityResId: state.reservationItem.reservationId
          ) : left(const ActivityFormFailure.unexpected());

          yield state.copyWith(
              isSaving: false,
              authFailureOrSuccessOptionSaving: optionOf(failureOrSuccess)
          );

        },

        saveActivityFinished: (e) async* {
          Either<ActivityFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOptionSubmitting: none()
          );

          // failureOrSuccess = state.isSubmitting ? left(const ActivityFormFailure.unexpected()) : await _activityAuthFacade.createCompletedActivityForm(activityForm: state.activityCreatorForm);
          //
          // yield state.copyWith(
          //   isSubmitting: false,
          //   authFailureOrSuccessOptionSubmitting: optionOf(failureOrSuccess)
          // );
        },

        deleteActivityFinished: (e) async* {},

      );

    }




}