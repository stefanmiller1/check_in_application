part of 'attendee_manager_watcher_bloc.dart';

@freezed
class AttendeeManagerWatcherState with _$AttendeeManagerWatcherState {

  const factory AttendeeManagerWatcherState.attInitial() = _AttInitial;
  const factory AttendeeManagerWatcherState.attLoadInProgress() = _AttLoadInProgress;

  const factory AttendeeManagerWatcherState.loadAllAttendanceSuccess(List<AttendeeItem> item) = _LoadAllAttendanceSuccess;
  const factory AttendeeManagerWatcherState.loadAllAttendanceFailure(AttendeeFormFailure failure) = _LoadAllAttendanceFailure;

}