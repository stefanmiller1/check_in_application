part of check_in_application;

@freezed
class CreateLocationEvent with _$CreateLocationEvent {

  const factory CreateLocationEvent.initialLocation(Option<LocationModel> initialLocation) = InitialCreateLocation;

  const factory CreateLocationEvent.placeIdChanged(String placeIdStr) = CreatePlaceIdChanged;
  const factory CreateLocationEvent.longLatChanged(double lat, double lng) = CreateLongLatChanged;
  const factory CreateLocationEvent.countryChanged(String countryStr) = CreateCountryChanged;
  const factory CreateLocationEvent.cityChanged(String cityStr) = CreateCityChanged;
  const factory CreateLocationEvent.provinceStateChanged(String stateStr) = CreateProvinceStateChanged;
  const factory CreateLocationEvent.streetChanged(String streetStr) = CreateStreetChanged;
  const factory CreateLocationEvent.postalCodeChanged(String postalStr) = CreatePostalCodeChanged;
  const factory CreateLocationEvent.aptNumberChanged(String aptStr) = CreateAptNumberChanged;
  const factory CreateLocationEvent.isLocationConfirmed(bool isConfirmedBool) = CreateIsLocationConfirmed;
  const factory CreateLocationEvent.locationTypeChanged(LocationType type) = CreateLocationTypeChanged;
  const factory CreateLocationEvent.isTemporaryChanged(bool isTemp) = CreateIsTemporaryChanged;
  const factory CreateLocationEvent.isLongTermChanged(bool isLong) = CreateIsLongTermChanged;
  const factory CreateLocationEvent.isPrivateChanged(bool isPrivate) = CreateIsPrivateChanged;
  const factory CreateLocationEvent.locationOwnerChanged(String ownerStr) = CreateLocationOwnerChanged;

  const factory CreateLocationEvent.locationMediaChanged(List<ImageUpload> media) = CreateLocationMediaChanged;
  const factory CreateLocationEvent.estimatedSquareFootageChanged(int estimation) = CreateLocationEstimatedSquareFootageChanged;
  const factory CreateLocationEvent.locationNameChanged(String locationNameStr) = CreateLocationNameChanged;
  const factory CreateLocationEvent.parkingAvailabilityChanged(bool isParkingAvailable) = CreateParkingAvailabilityChanged;
  const factory CreateLocationEvent.nearTransitChanged(bool isNearTransit) = CreateNearTransitChanged;
  const factory CreateLocationEvent.overnightStorageProvisionChanged(bool isOvernightStorageProvided) = CreateOvernightStorageProvisionChanged;
  const factory CreateLocationEvent.barrierFreeAccessibleChanged(bool isBarrierFreeAccessible) = CreateBarrierFreeAccessibleChanged;
  const factory CreateLocationEvent.barrierFreeProvisionChanged(List<LocationBarrierFreeTypes> barrierProvisions) = CreateBarrierFreeProvisionChanged;
  const factory CreateLocationEvent.amenityProvisionChanged(List<LocationAmenities> amentiyProvisions) = CreateAmenityProvisionChanged;
  const factory CreateLocationEvent.equipmentProvisionChanged(List<LocationEquipment> equipmentProvisions) = CreateEquipmentProvisionChanged;
  const factory CreateLocationEvent.rentalOptionChanged(LocationRentalOptions rentalOption) = CreateRentalOptionChanged;

  const factory CreateLocationEvent.finishedUpdatingAddressFromGoogle(String cityStr, String provinceStr) = FinishedUpdatingCreateAddressFromGoogle;
  const factory CreateLocationEvent.finishedUpdatingAddressFromCoordinates(String countryStr, String streetStr, String cityStr, String stateStr, String postalStr) = FinishedUpdatingCreateAddressFromCoordinates;

  const factory CreateLocationEvent.finishedUpdatingUserLocation() = FinishedUpdatingCreateUserLocation;


}