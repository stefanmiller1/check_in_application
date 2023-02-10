part of check_in_application;

@freezed
class UpdateFacilityFormEvent with _$UpdateFacilityFormEvent {


  const factory UpdateFacilityFormEvent.initializedFacility(Option<FacilityCreatorForm> initializedFacility) = _InitializedFacility;


  const factory UpdateFacilityFormEvent.facilityOptionChanged(FacilityTypeOption facilityOption) = FacilityTypeOptionChanged;
  const factory UpdateFacilityFormEvent.spaceOptionsChanged(ListK<SpaceOption> spaceTypeList) = FacilityFormSpaceOptionsChanged;

  const factory UpdateFacilityFormEvent.creatorNavChanged(CreateNewMarker navItem) = CreatorNavChanged;

  const factory UpdateFacilityFormEvent.isLocationConfirmed(bool isConfirmedBool) = FacilityIsLocationConfirmed;
  const factory UpdateFacilityFormEvent.updateWithSavedLocation(LocationModel location) = FacilityFormUpdateWithSavedLocation;

  const factory UpdateFacilityFormEvent.rentalTitleChanged(String titleStr) = RentalTitleChanged;
  const factory UpdateFacilityFormEvent.rentalDescription1Changed(String descriptionStr) = RentalDescription1Changed;

  const factory UpdateFacilityFormEvent.startingDateChanged(DateTime startingDate) = StartingDateChanged;
  const factory UpdateFacilityFormEvent.endingDateChanged(DateTime endingDate) = EndingDateChanged;

  const factory UpdateFacilityFormEvent.basePriceFullSlotOneChanged(String priceStr) = BasePriceFullSlotOneChanged;

  const factory UpdateFacilityFormEvent.saveAndCloseFacilityFinished() = SaveAndCloseFacilityFinished;
  const factory UpdateFacilityFormEvent.createFacilityFinished() = CreateFacilityFinished;

}
