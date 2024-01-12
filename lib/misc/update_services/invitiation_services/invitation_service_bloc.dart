import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_domain/domain/misc/attendee_services/attendee_item/attendee_item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:check_in_facade/check_in_facade.dart';

part 'invitation_service_event.dart';
part 'invitation_service_state.dart';
part 'invitation_service_bloc.freezed.dart';

@injectable
class InvitationFormBloc extends Bloc<InvitationFormEvent, InvitationFormState> {

  final RUpdaterFacade _rFacade;

  InvitationFormBloc(this._rFacade) : super(InvitationFormState.initial());

  @override
  Stream<InvitationFormState> mapEventToState(
      InvitationFormEvent event
      ) async* {

          yield* event.map(

            initializedInviteForm: (e) async* {
                yield e.initialContacts.fold(
                    () => state,
                    (contacts) => state.copyWith(
                        inviteList: contacts
                    )
                );
            },

            inviteIsSubmittingChanged: (e) async* {
              yield state.copyWith(
                isSubmitting: e.isEditing,
                authFailureOrSuccess: none()
              );

            },

            updateInviteList: (e) async* {

              yield state.copyWith(
                  inviteList: e.contacts
                );
            },

            finishedSubmittingReservationInvite: (e) async* {
              Either<AttendeeFormFailure, Unit> failureOrSuccess;

              if (e.attendees.isNotEmpty) {

                yield state.copyWith(
                    isSubmitting: true,
                    authFailureOrSuccess: none()
                );

                failureOrSuccess = state.isSubmitting ? await _rFacade.sendInvitationToUsers(reservationId: e.reservationId, activityForm: e.activityForm, invitations: e.attendees) : left(const AttendeeFormFailure.attendeeServerError());


                yield state.copyWith(
                    isSubmitting: false,
                    authFailureOrSuccess: optionOf(failureOrSuccess)
                );
              }

            },

            finishedSubmittingInvite: (e) async* {
                  Either<AuthFailure, Unit> failureOrSuccess;


             },


            finishedRemovingAttendee: (e) async* {
              Either<AttendeeFormFailure, Unit> failureOrSuccess;

              if (e.selectedAttendeeId.isValid()) {
              yield state.copyWith(
                  isSubmitting: true,
                  authFailureRemoveAttendeeOrSuccess: none()
              );

                failureOrSuccess = state.isSubmitting ? await _rFacade.removeSelectedAttendee(reservationId: e.reservationId, attendeeId: e.selectedAttendeeId.getOrCrash()) : left(const AttendeeFormFailure.attendeeServerError());

                yield state.copyWith(
                    isSubmitting: false,
                    authFailureRemoveAttendeeOrSuccess: optionOf(failureOrSuccess)
                );
              }

            },
    );
  }
}