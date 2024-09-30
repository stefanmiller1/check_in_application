part of 'vendor_settings_form_bloc.dart';

@freezed
class VendorSettingsFormEvent with _$VendorSettingsFormEvent {

  const factory VendorSettingsFormEvent.initialVendorForm(Option<VendorMerchantForm> initializeVendorMerchantForm) = _InitialVendorForm;

  const factory VendorSettingsFormEvent.didChangeFormTitle(String? title) = _DidChangeFormTitle;
  const factory VendorSettingsFormEvent.didChangeWelcomeMessage(String? message) = _DidChangeWelcomeMessage;
  const factory VendorSettingsFormEvent.didChangeFormStartEndDates(DateTimeRange? dates) = _DidChangeFormStartEndDates;
  const factory VendorSettingsFormEvent.didChangeAvailableTimeOption(List<MCCustomAvailability>? availability) = _DidChangeAvailableTimeOption;
  const factory VendorSettingsFormEvent.didChangeBoothPaymentOptions(List<MVBoothPayments>? booths) = _DidChangeBoothPaymentOptions;
  const factory VendorSettingsFormEvent.didChangeCustomOptions(List<MVCustomOption>? customOptions) = _DidChangeCustomOptions;
  const factory VendorSettingsFormEvent.didChangeDisclaimerOptions(List<MVCustomOption>? disclaimerOptions) = _DidChangeDisclaimerOptions;
  const factory VendorSettingsFormEvent.didChangeDiscountCodeOptions(List<DiscountCode>? discountOptions) = _DidChangeDiscountCodeOptions;
  const factory VendorSettingsFormEvent.didChangeFormStatus(FormStatus status) = _DidChangeFormStatus;

  const factory VendorSettingsFormEvent.didFinishSaving() = _DidFinishSaving;
  const factory VendorSettingsFormEvent.didFinishPublishing(ReservationItem? resItem) = _DidFinishPublishing;

}