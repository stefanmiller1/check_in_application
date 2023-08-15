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

  final SStripeFacade _stripeFacade;
  final ATTAuthFacade _attFacade;

  AttendeeFormBloc(this._attFacade, this._stripeFacade) : super(AttendeeFormState.initial());

  @override
  Stream<AttendeeFormState> mapEventToState(
      AttendeeFormEvent event) async* {

    yield* event.map(
        initializeAttendeeForm: (e) async* {
          yield e.initialAttendeeForm.fold(
                  () => state,
                  (attendee) => state.copyWith(
                    attendeeItem: attendee,
                    activityForm: e.initialActivityForm.fold(
                            () => state.activityForm,
                            (activityForm) => activityForm),
                    reservationOwner: e.initialResOwner.fold(
                        () => state.reservationOwner,
                        (resOwner) => resOwner
                    ),
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

        updateSelectedTicketOption: (e) async* {
          yield state.copyWith(
            attendeeItem: state.attendeeItem.copyWith(
              ticketItems: e.ticketItems,
            )
          );
        },

        createPaymentIntentForAttendee: (e) async* {

        },

        createAttendeeFormForReservation: (e) async* {

        },



        isFinishedCreatingAttendee: (e) async* {

        },

      /// put ticket on hold for web
      /// save ticket and attendee for web

        checkTicketLimits: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccessTicket;

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessTicketOption: none(),
          );


          failureOrSuccessTicket = (state.isSubmitting == false) ?
              await _attFacade.checkTicketLimit(
                  attendeeItem: state.attendeeItem,
                  activityForm: state.activityForm) :
              left(const AttendeeFormFailure.attendeeServerError());


              /// tickets on hold added but limit was reached
              yield state.copyWith(
                  isSubmitting: false,
                  authFailureOrSuccessTicketOption: optionOf(failureOrSuccessTicket)
            );
        },

        isFinishedCreatingTicketAttendeeWeb: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
          );


          failureOrSuccess = await _attFacade.createNewAttendee(
                  attendeeItem: state.attendeeItem,
                  activityForm: state.activityForm,
                  paymentIntentId: e.paymentIntentId);


          failureOrSuccess = await _attFacade.createNewTicket(
              attendeeItem: state.attendeeItem,
              activityForm: state.activityForm,
              isOnHold: false
          );

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );

        },




    isFinishedCreatingTicketAttendee: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;
          Either<PaymentMethodValueFailure, StringStringItems> failurePaymentClientFailureOrSuccess;

          yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
              authPaymentFailureOrSuccessOption: none()
          );

          /// is ticket date valid? - create value object to check all ticket items by date...
          // if (state.activityForm.activityAttendance.isTicketPerSlotBased == true && state.attendeeItem.ticketItems.reservationTimeSlot?.slotRange.start.isAfter(DateTime.now()) == true) {
          //   yield state.copyWith(
          //       isSubmitting: false,
          //       authFailureOrSuccessOption: optionOf(left(const AttendeeFormFailure.ticketsNoLongerAvailable()))
          //   );
          //   return;
          // }

          /// put selected tickets on hold temporarily if ticket count is below ticket limit after holding total tickets
          failureOrSuccess = (state.isSubmitting == false) ?
          await _attFacade.createNewTicket(attendeeItem: state.attendeeItem, activityForm: state.activityForm, isOnHold: true) :
          left(const AttendeeFormFailure.attendeeServerError());


          /// tickets on hold added but limit was reached
          if (failureOrSuccess.isLeft()) {
            yield state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: optionOf(left(const AttendeeFormFailure.attendeeServerError()))
            );
            return;
          }


          /// go through with payment portal
          failurePaymentClientFailureOrSuccess = await failureOrSuccess.fold(
                  (l) => left(const PaymentMethodValueFailure.requiresMoreAction('')),
                  (r) => _stripeFacade.processAndConfirmPaymentAsDirectCharge(
                                  userProfile: e.profile,
                                  reservationId: state.reservation.reservationId,
                                  listingId: state.reservation.instanceId,
                                  listingOwnerStripeId: state.reservationOwner.stripeAccountId,
                                  amount: e.amount,
                                  currency: e.currency,
                                  paymentMethod: e.paymentMethod
          ));

          /// after payment is complete successfully - save confirmed tickets and new attendee.
          failureOrSuccess = await failurePaymentClientFailureOrSuccess.fold(
                  (l) => left(const AttendeeFormFailure.attendeeWaitingForPaymentConfirmation()),
                  (r) => _attFacade.createNewAttendee(
                      attendeeItem: state.attendeeItem,
                      activityForm: state.activityForm,
                      paymentIntentId: r.stringItemTwo
          ));

          failureOrSuccess = await failurePaymentClientFailureOrSuccess.fold(
                  (l) => left(const AttendeeFormFailure.attendeeWaitingForPaymentConfirmation()),
                  (r) => _attFacade.createNewTicket(
                            attendeeItem: state.attendeeItem,
                            activityForm: state.activityForm,
                            isOnHold: false
                          )
                        );

          yield state.copyWith(
            authPaymentFailureOrSuccessOption: optionOf(failurePaymentClientFailureOrSuccess),
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
            isSubmitting: false,
          );
        },



        isFinishedInvitingAttendee: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          var isValid = false;

          isValid = (state.attendeeItem.attendeeDetails != null) && (state.attendeeItem.contactStatus != null);
          if (state.attendeeItem.attendeeType == AttendeeType.vendor) {
            isValid = (state.attendeeItem.eventMerchantVendorProfile?.vendorLogo != null && (state.attendeeItem.eventMerchantVendorProfile?.brandName.isValid() ?? false) && (state.attendeeItem.eventMerchantVendorProfile?.backgroundInfo.isValid() ?? false));
          }

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none()
          );


          if (!isValid) {
            yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(left(const AttendeeFormFailure.attendeeServerError(failed: 'please finish filling out the invite form above')))
            );
            return;
          }

          failureOrSuccess = state.isSubmitting ?
          left(const AttendeeFormFailure.attendeeServerError(failed: 'cannot invite new attendee')) :
          await _attFacade.createNewAttendee(
              attendeeItem: state.attendeeItem,
              activityForm: state.activityForm,
              paymentIntentId: null
          );

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );


        },
    );
  }

}