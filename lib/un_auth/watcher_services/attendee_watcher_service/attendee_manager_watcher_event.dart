part of 'attendee_manager_watcher_bloc.dart';

@freezed
class AttendeeManagerWatcherEvent with _$AttendeeManagerWatcherEvent {

  const factory AttendeeManagerWatcherEvent.watchAllAttendanceByType(String attendanceType, String activityId) = _watchAttendanceByType;
  const factory AttendeeManagerWatcherEvent.allAttendanceReceivedByType(Either<AttendeeFormFailure, List<AttendeeItem>> failedItems) = _AllAttendanceReceivedByType;


}