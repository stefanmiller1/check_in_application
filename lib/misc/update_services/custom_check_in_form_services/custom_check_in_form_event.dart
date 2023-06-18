part of check_in_application;

@freezed
class CustomCheckInFormEvent with _$CustomCheckInFormEvent {

  factory CustomCheckInFormEvent.initialCheckInForm(Option<CheckInSetting> initialCheckInForm) = _InitialCheckInForm;

  factory CustomCheckInFormEvent.hoursBeforeChanged(TimeOfDay hoursBeforeInt) = _HoursBeforeChanged;
  factory CustomCheckInFormEvent.isBeforeStartChanged(bool isBeforeBool) = _IsBeforeStartChanged;
  factory CustomCheckInFormEvent.isAfterStartChanged(bool isAfterBool) = _IsAfterStartChanged;
  factory CustomCheckInFormEvent.hoursUntilChanged(TimeOfDay hoursInt) = _HoursUntilChanged;
  factory CustomCheckInFormEvent.listOfSpaceIdsChanged(List<UniqueId> spaceList) = _ListOfSpaceIdsChanged;
  factory CustomCheckInFormEvent.listOfReservationsChanged(List<ReservationSlotItem> resList) = _ListOfReservationsChanged;
  factory CustomCheckInFormEvent.attendeeTypeChanged(AttendeeType attType) = _AttendeeTypeChanged;
  factory CustomCheckInFormEvent.listOfConfirmationItemsChanged(List<StringBoolItem> conList) = _ListOfConfirmationItemsChanged;

  factory CustomCheckInFormEvent.didSaveCustomRule() = _DidSaveCustomRule;
}
