import 'dart:async';

import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_domain/domain/misc/attendee_services/attendee_item/attendee_item.dart';
import 'package:check_in_facade/check_in_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'attendee_manager_watcher_event.dart';
part 'attendee_manager_watcher_state.dart';
part 'attendee_manager_watcher_bloc.freezed.dart';

@injectable
class AttendeeManagerWatcherBloc extends Bloc<AttendeeManagerWatcherEvent, AttendeeManagerWatcherState> {

  final ATTAuthWatcherFacade _attWatcherFacade;

  AttendeeManagerWatcherBloc(this._attWatcherFacade) : super(const AttendeeManagerWatcherState.attInitial());

  StreamSubscription<Either<AttendeeFormFailure, List<AttendeeItem>>>? _attendanceListStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, int>>? _attendanceCountStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, List<AttendeeItem>>>? _allAttendanceListStreamSubscription;
  StreamSubscription<Either<AttendeeFormFailure, AttendeeItem>>? _attendanceItemStreamSubscription;


  @override
  Stream<AttendeeManagerWatcherState> mapEventToState(
      AttendeeManagerWatcherEvent event) async* {

    yield* event.map(

        watchAllAttendanceByType: (e) async* {
          yield const AttendeeManagerWatcherState.attLoadInProgress();
          await _attendanceListStreamSubscription?.cancel();

          _attendanceListStreamSubscription = _attWatcherFacade.watchAllAttendeesByTypeList(attendeeType: e.attendanceType, activityId: e.activityId).listen((event) {
              return add(AttendeeManagerWatcherEvent.allAttendanceReceivedByType(event));
          });
        },

        allAttendanceReceivedByType: (e) async* {
          yield e.failedItems.fold(
                  (f) => AttendeeManagerWatcherState.loadAllAttendanceFailure(f),
                  (r) => AttendeeManagerWatcherState.loadAllAttendanceSuccess(r)
          );
        },

        watchAttendanceCountByType: (e) async* {
          yield const AttendeeManagerWatcherState.attLoadInProgress();
          await _attendanceCountStreamSubscription?.cancel();

          _attendanceCountStreamSubscription = _attWatcherFacade.watchAllAttendeesByCount(attendeeType: e.attendanceType, activityId: e.activityId).listen((event) {
            return add(AttendeeManagerWatcherEvent.attendanceCountByTypeReceived(event));
          });

        },

        attendanceCountByTypeReceived: (e) async* {
          yield e.failedItem.fold(
                  (f) => AttendeeManagerWatcherState.loadAttendanceCountByTypeFailure(f),
                  (r) => AttendeeManagerWatcherState.loadAttendanceCountByTypeSuccess(r)
          );
        },

        watchAllAttendance: (e) async* {
          yield const AttendeeManagerWatcherState.attLoadInProgress();
          await _allAttendanceListStreamSubscription?.cancel();

          _allAttendanceListStreamSubscription = _attWatcherFacade.watchAllAttendees(activityId: e.activityId).listen((event) {
            return add(AttendeeManagerWatcherEvent.allAttendanceReceived(event));
          });
        },

        allAttendanceReceived: (e) async* {
          yield e.failedItems.fold(
                  (f) => AttendeeManagerWatcherState.loadAllAttendanceActivityFailure(f),
                  (r) => AttendeeManagerWatcherState.loadAllAttendanceActivitySuccess(r)
          );
        },


        watchAttendeeItem: (e) async* {
          yield const AttendeeManagerWatcherState.attLoadInProgress();

          _attendanceItemStreamSubscription = _attWatcherFacade.watchAttendeeItem(activityId: e.activityId, attendeeId: e.attendeeId).listen((event) {
            return add(AttendeeManagerWatcherEvent.attendeeItemReceived(event));
          });
        },

        attendeeItemReceived: (e) async* {
          yield e.failedItem.fold(
                  (f) => AttendeeManagerWatcherState.loadAttendeeItemFailure(f),
                  (r) => AttendeeManagerWatcherState.loadAttendeeItemSuccess(r)
          );
        }
    );

  }

}