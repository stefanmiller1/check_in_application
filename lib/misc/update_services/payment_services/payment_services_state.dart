part of check_in_application;

@freezed
class PaymentServicesState with _$PaymentServicesState {

  const PaymentServicesState._();

  const factory PaymentServicesState({
    UserProfileModel? userProfile,
    List<String>? cancellationList,
    String? cardToken,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<PaymentMethodValueFailure, Unit>> failureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>> defaultPaymentFailureOrSuccessOption,

  }) = _PaymentServicesState;

  factory PaymentServicesState.initial() => PaymentServicesState(
    cancellationList: [],
    isSaving: false,
    isEditing: false,
    failureOrSuccessOption: none(),
    defaultPaymentFailureOrSuccessOption: none()
  );

}