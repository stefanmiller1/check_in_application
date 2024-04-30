part of 'attendee_manager_watcher_bloc.dart';

@freezed
class AttendeeManagerWatcherState with _$AttendeeManagerWatcherState {

  const factory AttendeeManagerWatcherState.attInitial() = _AttInitial;
  const factory AttendeeManagerWatcherState.attLoadInProgress() = _AttLoadInProgress;

  const factory AttendeeManagerWatcherState.loadAllAttendanceSuccess(List<AttendeeItem> item) = _LoadAllAttendanceSuccess;
  const factory AttendeeManagerWatcherState.loadAllAttendanceFailure(AttendeeFormFailure failure) = _LoadAllAttendanceFailure;

  const factory AttendeeManagerWatcherState.loadAttendanceCountByTypeSuccess(int item) = _LoadAttendanceCountByTypeSuccess;
  const factory AttendeeManagerWatcherState.loadAttendanceCountByTypeFailure(AttendeeFormFailure failure) = _LoadAttendanceCountByTypeFailure;

  const factory AttendeeManagerWatcherState.loadAllAttendanceActivitySuccess(List<AttendeeItem> item) = _LoadAllAttendanceActivitySuccess;
  const factory AttendeeManagerWatcherState.loadAllAttendanceActivityFailure(AttendeeFormFailure failure) = _LoadAllAttendanceActivityFailure;

  const factory AttendeeManagerWatcherState.loadAttendeeItemSuccess(AttendeeItem item) = _LoadAttendeeItemSuccess;
  const factory AttendeeManagerWatcherState.loadAttendeeItemFailure(AttendeeFormFailure failure) = _LoadAttendeeItemFailure;

  const factory AttendeeManagerWatcherState.loadCurrentUserAttendancesSuccess(List<AttendeeItem> item) = _LoadCurrentUserAttendancesSuccess;
  const factory AttendeeManagerWatcherState.loadCurrentUserAttendancesFailure(AttendeeFormFailure failure) = _LoadCurrentUserAttendancesFailure;


}