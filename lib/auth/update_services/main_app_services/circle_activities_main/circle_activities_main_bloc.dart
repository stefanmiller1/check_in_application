import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_facade/check_in_facade.dart';
import 'package:flutter/material.dart';
import 'package:check_in_domain/domain/misc/calendar_service/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:check_in_domain/domain/misc/attendee_services/attendee_item/attendee_item.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

part 'circle_activities_main_event.dart';
part 'circle_activities_main_state.dart';
part 'circle_activities_main_bloc.freezed.dart';

@injectable
class CircleActivitiesMainBloc extends Bloc<CircleActivitiesMainEvent, CircleActivitiesMainState> {

  final ATTAuthFacade _attFacade;

  CircleActivitiesMainBloc(this._attFacade) : super(CircleActivitiesMainState.initial());

  @override
  Stream<CircleActivitiesMainState> mapEventToState(
      CircleActivitiesMainEvent event) async* {
    yield* event.map(

        initializeCircleActivityMain: (e) async* {
        },

        didUpdateAttendingList: (e) async* {
            yield state.copyWith(
                attendeeItems: e.attendingList,
                authFailureOrSuccessOption: none()
            );
        },

        didUpdateActivityItemsList: (e) async* {
          yield state.copyWith(
              activityItems: e.itemsList,
              authFailureOrSuccessOption: none()
          );
        },

        didChangeFilterSlotType: (e) async* {
          yield state.copyWith(
              filterBySlotState: e.filterList,
              authFailureOrSuccessOption: none()
          );
        },

        didChangeFilterCalendarType: (e) async* {
          yield state.copyWith(
              calendarFilterTpe: e.filterList,
              authFailureOrSuccessOption: none()
          );
        },

        didFinishSelectingInterested: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
            isInteresting: true,
            authFailureOrSuccessOption: none()
          );

          failureOrSuccess = await _attFacade.updateInterestedAttendee(reservationId: e.res, userId: e.userId);

          yield state.copyWith(
              isInteresting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );
          
        },
    );
  }
}