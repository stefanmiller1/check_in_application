part of 'activity_settings_form_bloc.dart';

@freezed
class UpdateActivityFormState with _$UpdateActivityFormState {

  const UpdateActivityFormState._();

  const factory UpdateActivityFormState({
    required ActivityManagerForm activitySettingsForm,
    required ReservationItem reservationItem,
    required bool isSaving,
    required bool isEditingForm,
    required bool isSubmitting,

    required AutovalidateMode showErrorMessages,
    required Option<Either<ActivityFormFailure, Unit>> authFailureOrSuccessOptionSaving,
    required Option<Either<ActivityFormFailure, Unit>> authFailureOrSuccessOptionSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOptionStripe,


  }) = _UpdateActivityFormState;

  factory UpdateActivityFormState.initial() => UpdateActivityFormState(
      activitySettingsForm: ActivityManagerForm.empty(),
      reservationItem: ReservationItem.empty(),
      isSaving: false,
      isEditingForm: false,
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOptionSaving: none(),
      authFailureOrSuccessOptionSubmitting: none(),
      authFailureOrSuccessOptionStripe: none()
  );

}