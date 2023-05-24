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

  @override
  Stream<AttendeeManagerWatcherState> mapEventToState(
      AttendeeManagerWatcherEvent event) async* {

    yield* event.map(

        watchAllAttendanceByType: (e) async* {
          yield const AttendeeManagerWatcherState.attLoadInProgress();
          await _attendanceListStreamSubscription?.cancel();

          _attendanceListStreamSubscription = _attWatcherFacade.watchAllAttendeesList(attendeeType: e.attendanceType, activityId: e.activityId).listen((event) {
              return add(AttendeeManagerWatcherEvent.allAttendanceReceivedByType(event));
          });
        },

        allAttendanceReceivedByType: (e) async* {
          yield e.failedItems.fold(
                  (f) => AttendeeManagerWatcherState.loadAllAttendanceFailure(f),
                  (r) => AttendeeManagerWatcherState.loadAllAttendanceSuccess(r)
          );
        }
    );

  }

}