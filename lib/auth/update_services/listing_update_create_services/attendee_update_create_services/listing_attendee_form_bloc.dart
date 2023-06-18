import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_facade/check_in_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:check_in_domain/domain/misc/attendee_services/attendee_item/attendee_item.dart';
import 'package:injectable/injectable.dart';

part 'listing_attendee_form_event.dart';
part 'listing_attendee_form_state.dart';
part 'listing_attendee_form_bloc.freezed.dart';

@injectable
class AttendeeFormBloc extends Bloc<AttendeeFormEvent, AttendeeFormState> {

  // final SStripeFacade _stripeFacade;
  final ATTAuthFacade _attFacade;

  AttendeeFormBloc(this._attFacade) : super(AttendeeFormState.initial());

  @override
  Stream<AttendeeFormState> mapEventToState(
      AttendeeFormEvent event) async* {

    yield* event.map(
        initializeAttendeeForm: (e) async* {
          yield e.initialAttendeeForm.fold(
                  () => state,
                  (attendee) => state.copyWith(
                    attendeeItem: attendee,
                    reservation: e.initialReservation.fold(
                            () => state.reservation,
                            (reservation) => reservation,
              ),
            )
          );
        },


        updateAttendeeContactDetails: (e) async* {
          yield state.copyWith(
              attendeeItem: state.attendeeItem.copyWith(
               attendeeDetails: e.contacts,
               attendeeOwnerId: e.contacts.contactId
            )
          );
        },

        updateCustomRules: (e) async* {
          yield state.copyWith(
            attendeeItem: state.attendeeItem.copyWith(
              customFieldRuleSetting: e.rules
            )
          );
        },

        updateCheckInSettings: (e) async* {
          yield state.copyWith(
              attendeeItem: state.attendeeItem.copyWith(
                checkInSetting: e.checkInSettings
              )
          );
        },

        updateClassesInstructorForm: (e) async* {
          yield state.copyWith(
            attendeeItem: state.attendeeItem.copyWith(
              classesInstructorProfile: e.instructorProfile
            )
          );
        },

        updateMerchantVendorForm: (e) async* {
          yield state.copyWith(
            attendeeItem: state.attendeeItem.copyWith(
              eventMerchantVendorProfile: e.merchVendorProfile
            )
          );
        },

        createPaymentIntentForAttendee: (e) async* {

        },

        createAttendeeFormForReservation: (e) async* {


        },

        isFinishedConfirmedPaymentIntent: (e) async* {


        },

        isFinishedCreatingAttendee: (e) async* {


        },

        isFinishedInvitingAttendee: (e) async* {

          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          var isValid = false;

          isValid = (state.attendeeItem.attendeeDetails != null) && (state.attendeeItem.contactStatus != null);
          if (state.attendeeItem.attendeeType == AttendeeType.vendor) {
            print('is vendor');
            print(state.attendeeItem.eventMerchantVendorProfile?.brandName.isValid());
            print(state.attendeeItem.eventMerchantVendorProfile?.backgroundInfo.isValid());
            isValid = (state.attendeeItem.eventMerchantVendorProfile?.vendorLogo != null && (state.attendeeItem.eventMerchantVendorProfile?.brandName.isValid() ?? false) && (state.attendeeItem.eventMerchantVendorProfile?.backgroundInfo.isValid() ?? false));
          }

          print('${isValid} is valid????');
            yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none()
            );

          if (isValid) {
            failureOrSuccess = state.isSubmitting ? left(const AttendeeFormFailure.attendeeServerError(failed: 'cannot invite new attendee')) : await _attFacade.createNewAttendee(attendeeItem: state.attendeeItem);

            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
            );
          } else {

            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(left(const AttendeeFormFailure.attendeeServerError(failed: 'please finish filling out the invite form above')))
            );
          }


        },
    );
  }

}