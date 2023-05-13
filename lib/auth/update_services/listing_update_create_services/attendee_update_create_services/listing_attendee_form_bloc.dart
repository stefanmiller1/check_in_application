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

  AttendeeFormBloc(this._stripeFacade) : super(AttendeeFormState.initial());

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
              attendeeItem: AttendeeItem(
                  attendeeId: state.attendeeItem.attendeeId,
                  attendeeOwnerId: state.attendeeItem.attendeeOwnerId,
                  reservationId: state.attendeeItem.reservationId,
                  cost: state.attendeeItem.cost,
                  paymentStatus: state.attendeeItem.paymentStatus,
                  attendeeType: state.attendeeItem.attendeeType,
                  paymentIntentId: state.attendeeItem.paymentIntentId,
                  attendeeDetails: e.contacts,
                  checkInSetting: state.attendeeItem.checkInSetting,
                  customFieldRuleSetting: state.attendeeItem.customFieldRuleSetting,
                  refundId: state.attendeeItem.refundId,
                  receipt_link: state.attendeeItem.receipt_link,
                  dateCreated: state.attendeeItem.dateCreated
              )
          );
        },

        updateCustomRules: (e) async* {
          yield state.copyWith(
            attendeeItem: AttendeeItem(
                attendeeId: state.attendeeItem.attendeeId,
                attendeeOwnerId: state.attendeeItem.attendeeOwnerId,
                reservationId: state.attendeeItem.reservationId,
                cost: state.attendeeItem.cost,
                paymentStatus: state.attendeeItem.paymentStatus,
                attendeeType: state.attendeeItem.attendeeType,
                paymentIntentId: state.attendeeItem.paymentIntentId,
                attendeeDetails: state.attendeeItem.attendeeDetails,
                checkInSetting: state.attendeeItem.checkInSetting,
                customFieldRuleSetting: e.rules,
                refundId: state.attendeeItem.refundId,
                receipt_link: state.attendeeItem.receipt_link,
                dateCreated: state.attendeeItem.dateCreated
            )
          );
        },

        updateCheckInSettings: (e) async* {
          yield state.copyWith(
              attendeeItem: AttendeeItem(
                  attendeeId: state.attendeeItem.attendeeId,
                  attendeeOwnerId: state.attendeeItem.attendeeOwnerId,
                  reservationId: state.attendeeItem.reservationId,
                  cost: state.attendeeItem.cost,
                  paymentStatus: state.attendeeItem.paymentStatus,
                  attendeeType: state.attendeeItem.attendeeType,
                  paymentIntentId: state.attendeeItem.paymentIntentId,
                  attendeeDetails: state.attendeeItem.attendeeDetails,
                  checkInSetting: e.checkInSettings,
                  customFieldRuleSetting: state.attendeeItem.customFieldRuleSetting,
                  refundId: state.attendeeItem.refundId,
                  receipt_link: state.attendeeItem.receipt_link,
                  dateCreated: state.attendeeItem.dateCreated
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


        }
    );
  }

}