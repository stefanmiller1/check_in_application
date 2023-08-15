import 'package:check_in_domain/check_in_domain.dart';
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

            updateInviteList: (e) async* {

              yield state.copyWith(
                  inviteList: e.contacts
                );
            },

            finishedSubmittingInvite: (e) async* {
                  Either<AuthFailure, Unit> failureOrSuccess;

                  final invitationListVerify = state.inviteList.isNotEmpty;

                  if (invitationListVerify) {

                    // yield state.copyWith(
                    //   isSubmitting: true,
                    //   authFailureOrSuccess: none()
                    // );
                    //
                    // failureOrSuccess = state.isSubmitting ? await _rFacade.sendInvitationToUsers(reservationId: e.reservationId, invitations: state.inviteList.toList()) : left(AuthFailure.serverError());
                    //
                    // yield state.copyWith(
                    //     isSubmitting: false,
                    //     authFailureOrSuccess: optionOf(failureOrSuccess)
                    // );
                }
             },


            finishedRemovingGuest: (e) async* {

            },
    );
  }
}