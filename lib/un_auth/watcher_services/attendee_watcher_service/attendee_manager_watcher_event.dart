part of 'attendee_manager_watcher_bloc.dart';

@freezed
class AttendeeManagerWatcherEvent with _$AttendeeManagerWatcherEvent {

  const factory AttendeeManagerWatcherEvent.watchAllAttendanceByType(String attendanceType, String activityId) = _watchAttendanceByType;
  const factory AttendeeManagerWatcherEvent.allAttendanceReceivedByType(Either<AttendeeFormFailure, List<AttendeeItem>> failedItems) = _AllAttendanceReceivedByType;

  const factory AttendeeManagerWatcherEvent.watchAttendanceCountByType(String attendanceType, String activityId) = _WatchAttendanceCountByType;
  const factory AttendeeManagerWatcherEvent.attendanceCountByTypeReceived(Either<AttendeeFormFailure, int> failedItem) = _AttendanceCountByTypeReceived;

  const factory AttendeeManagerWatcherEvent.watchAllAttendance(String activityId) = _WatchAllAttendance;
  const factory AttendeeManagerWatcherEvent.allAttendanceReceived(Either<AttendeeFormFailure, List<AttendeeItem>> failedItems) = _AllAttendanceReceived;

  const factory AttendeeManagerWatcherEvent.watchAttendeeItem(String activityId, String attendeeId) = _WatchAttendeeItem;
  const factory AttendeeManagerWatcherEvent.attendeeItemReceived(Either<AttendeeFormFailure, AttendeeItem> failedItem) = _AttendeeItemReceived;

}