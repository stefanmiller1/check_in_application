part of 'circle_activities_main_bloc.dart';

@freezed
class CircleActivitiesMainState with _$CircleActivitiesMainState {

  const CircleActivitiesMainState._();

  factory CircleActivitiesMainState({
      required CalendarFilterType calendarFilterTpe,
      required List<ReservationSlotState> filterBySlotState,
      required int? filterWithStartDate,
      required int? filterWithEndDate,
      required int pageSize,
      required List<ReservationPreviewer> activityItems,
      required List<ReservationPreviewer> attendeeItems,
      required bool isInteresting,
      required Option<Either<AttendeeFormFailure, Unit>> authFailureOrSuccessOption
}) = _CircleActivitiesMainState;

  factory CircleActivitiesMainState.initial() => CircleActivitiesMainState(
    calendarFilterTpe: CalendarFilterType.allTime,
    filterBySlotState: [ReservationSlotState.current, ReservationSlotState.confirmed, ReservationSlotState.completed],
    pageSize: 2,
    activityItems: [],
    attendeeItems: [],
    filterWithStartDate: null,
    filterWithEndDate: null,
    isInteresting: false,
    authFailureOrSuccessOption: none()
  );
}