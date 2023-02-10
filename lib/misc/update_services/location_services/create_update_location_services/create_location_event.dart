part of check_in_application;

@freezed
class CreateLocationEvent with _$CreateLocationEvent {

  const factory CreateLocationEvent.initialLocation(Option<LocationModel> initialLocation) = InitialCreateLocation;

  const factory CreateLocationEvent.placeIdChanged(String placeIdStr) = CreatePlaceIdChanged;
  const factory CreateLocationEvent.longLatChanged(String longLatStr) = CreateLongLatChanged;
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
  const factory CreateLocationEvent.isPublicChanged(bool isPublic) = CreateIsPublicChanged;
  const factory CreateLocationEvent.locationOwnerChanged(String ownerStr) = CreateLocationOwnerChanged;

  const factory CreateLocationEvent.finishedUpdatingAddressFromGoogle(String cityStr, String provinceStr) = FinishedUpdatingCreateAddressFromGoogle;
  const factory CreateLocationEvent.finishedUpdatingAddressFromCoordinates(String countryStr, String streetStr, String cityStr, String stateStr, String postalStr) = FinishedUpdatingCreateAddressFromCoordinates;

  const factory CreateLocationEvent.finishedUpdatingUserLocation() = FinishedUpdatingCreateUserLocation;


}