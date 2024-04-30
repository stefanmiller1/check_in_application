part of 'vendor_settings_form_bloc.dart';

@freezed
class VendorSettingsFormState with _$VendorSettingsFormState {

  const VendorSettingsFormState._();

  const factory VendorSettingsFormState({
    required VendorMerchantForm vendorMerchantForm,
    required bool isSaving,
    required bool isEditingForm,
    required bool isPublishing,

    required AutovalidateMode showErrorMessages,
    required Option<Either<VendorFormFailure, bool>> authFailureOrSuccessOption,

  }) = _VendorSettingsFormState;

  factory VendorSettingsFormState.initial() => VendorSettingsFormState(
    vendorMerchantForm: VendorMerchantForm.empty(),
    isSaving: false,
    isEditingForm: false,
    isPublishing: false,
    showErrorMessages: AutovalidateMode.disabled,
    authFailureOrSuccessOption: none()
  );
}
