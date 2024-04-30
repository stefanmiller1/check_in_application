part of 'circle_activities_main_bloc.dart';

@freezed
class CircleActivitiesMainEvent with _$CircleActivitiesMainEvent {

  const factory CircleActivitiesMainEvent.initializeCircleActivityMain() = _InitializeCircleActivityMain;

  const factory CircleActivitiesMainEvent.didUpdateAttendingList(List<ReservationPreviewer> attendingList) = _DidUpdateAttendingList;
  const factory CircleActivitiesMainEvent.didUpdateActivityItemsList(List<ReservationPreviewer> itemsList) = _DidUpdateActivityItemsList;
  const factory CircleActivitiesMainEvent.didChangeFilterSlotType(List<ReservationSlotState> filterList) = _DidChangeFilterSlotType;
  const factory CircleActivitiesMainEvent.didChangeFilterCalendarType(CalendarFilterType filterList) = _DidChangeFilterCalendarType;

  const factory CircleActivitiesMainEvent.didFinishSelectingInterested(String res, String? userId) = _DidFinishSavingReservation;
}