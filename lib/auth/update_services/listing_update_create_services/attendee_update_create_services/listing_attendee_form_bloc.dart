import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_facade/check_in_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:check_in_domain/domain/misc/attendee_services/attendee_item/attendee_item.dart';
import 'package:check_in_domain/domain/misc/filter_services/vendor_contact_filter_model.dart';
import 'package:check_in_domain/domain/misc/stripe/business_address_service/stripe_business_address.dart';
import 'package:injectable/injectable.dart';
import 'package:check_in_domain/domain/misc/stripe/tax_calculation/stripe_tax_calculation.dart';
import 'package:check_in_domain/domain/misc/discount_code_service/discount_code_item.dart';

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

        attendeeIsSaving: (e) async* {
            yield state.copyWith(
              isSubmitting: e.save
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

        updateVendorForm: (e) async* {
            yield state.copyWith(
              attendeeItem: state.attendeeItem.copyWith(
                  vendorForm: e.form
              ),
              authVendorPaymentFailureOrSuccessOption: none(),
              authFailureOrSuccessOption: none(),
            );
        },

        updateMerchantVendorProfileId: (e) async* {
          yield state.copyWith(
            attendeeItem: state.attendeeItem.copyWith(
              eventMerchantVendorProfile: e.merchVendorProfile
            ),
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );
        },

        updateSelectedTicketOption: (e) async* {
          yield state.copyWith(
            attendeeItem: state.attendeeItem.copyWith(
              ticketItems: e.ticketItems,
            )
          );
        },


        isFinishedCreatingAttendee: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;



          yield state.copyWith(
            isSubmitting: true,
            attendeeItem: state.attendeeItem.copyWith(
              attendeeOwnerId: e.profile.userId,
              attendeeDetails: ContactDetails(
                  contactId: e.profile.userId,
                  name: FirstLastName('${e.profile.legalName.value.fold((l) => '', (r) => r)} ${e.profile.legalSurname.value.fold((l) => '', (r) => r)}'),
                  emailAddress: e.profile.emailAddress
              )
            ),
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _attFacade.createNewAttendee(
              activityOwner: state.reservationOwner,
              attendeeItem: state.attendeeItem,
              activityForm: state.activityForm,
              paymentIntentId: null,
              payments: null
          );

          yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );

        },


        checkVendorLimits: (e) async* {
          Either<AttendeeFormFailure, UserProfileModel> failureOrSuccessVendor;

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
            authFailureOrSuccessPaymentOption: none(),
          );


          failureOrSuccessVendor = (state.isSubmitting) ?
          await _attFacade.checkVendorLimit(
              attendeeItem: state.attendeeItem,
              activityForm: state.activityForm,
              currentUser: e.currentUserProfile) :
          left(const AttendeeFormFailure.attendeeServerError());


          /// vendor limit is reached
          yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessPaymentOption: optionOf(failureOrSuccessVendor)
          );
        },

      /// put ticket on hold for web
      /// save ticket and attendee for web

        checkTicketLimits: (e) async* {
          Either<AttendeeFormFailure, UserProfileModel> failureOrSuccessTicket;

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
            authFailureOrSuccessPaymentOption: none(),
          );


          failureOrSuccessTicket = (state.isSubmitting) ?
              await _attFacade.checkTicketLimit(
                  attendeeItem: state.attendeeItem,
                  activityForm: state.activityForm,
                  currentUser: e.currentUserProfile) :
              left(const AttendeeFormFailure.attendeeServerError());


              /// tickets on hold added but limit was reached
              yield state.copyWith(
                  isSubmitting: false,
                  authFailureOrSuccessPaymentOption: optionOf(failureOrSuccessTicket)
            );
        },

        createTicketsOnHold: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
            authFailureOrSuccessOnHoldTicketOption: none(),
          );

          failureOrSuccess = await _attFacade.createNewTicket(
              attendeeItem: state.attendeeItem,
              activityForm: state.activityForm,
              isOnHold: true
          );

          yield state.copyWith(
              authFailureOrSuccessOnHoldTicketOption: optionOf(failureOrSuccess)
          );
        },



        isFinishedCreatingTicketAttendeeWeb: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          yield state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessPaymentOption: none(),
              authFailureOrSuccessOption: none(),
          );


          failureOrSuccess = await _attFacade.createNewAttendee(
                  activityOwner: state.reservationOwner,
                  attendeeItem: state.attendeeItem,
                  activityForm: state.activityForm,
                  paymentIntentId: e.paymentIntentId,
                  payments: null
          );


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
              isSubmitting:  true,
              authFailureOrSuccessPaymentOption: none(),
              authFailureOrSuccessOption: none(),
              authPaymentFailureOrSuccessOption: none()
          );

          /// put selected tickets on hold temporarily if ticket count is below ticket limit after holding total tickets
          failureOrSuccess = await _attFacade.createNewTicket(attendeeItem: state.attendeeItem, activityForm: state.activityForm, isOnHold: true);

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
                                  paymentMethod: e.paymentMethod,
                                  description: 'Ticket to be sold and to be made redeemable for a specific Reservation'
          ));

          /// after payment is complete successfully - save confirmed tickets and new attendee.
          failureOrSuccess = await failurePaymentClientFailureOrSuccess.fold(
                  (l) => left(const AttendeeFormFailure.attendeeWaitingForPaymentConfirmation()),
                  (r) => _attFacade.createNewAttendee(
                      activityOwner: state.reservationOwner,
                      attendeeItem: state.attendeeItem,
                      activityForm: state.activityForm,
                      paymentIntentId: r.stringItemTwo,
                      payments: null
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


        /// TODO: REMOVE THIS
        isFinishedInvitingAttendee: (e) async* {
          Either<AttendeeFormFailure, Unit> failureOrSuccess;

          var isValid = false;

          isValid = (state.attendeeItem.attendeeDetails != null) && (state.attendeeItem.contactStatus != null);
          if (state.attendeeItem.attendeeType == AttendeeType.vendor) {
            isValid = state.attendeeItem.eventMerchantVendorProfile != null;
          }

          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessPaymentOption: none(),
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
          await _attFacade.createNewAttendee(
              activityOwner: state.reservationOwner,
              attendeeItem: state.attendeeItem,
              activityForm: state.activityForm,
              paymentIntentId: null,
              payments: null
          ) : left(const AttendeeFormFailure.attendeeServerError(failed: 'cannot invite new attendee'));

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)
        );
      },

      didDeleteAttendee: (e) async* {
        Either<AttendeeFormFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _attFacade.deleteAttendee(
            attendeeItem: state.attendeeItem,
            activityForm: state.activityForm);

        yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess)
        );

      },

      didRefundAttendeesGroup: (e) async* {
        Either<PaymentMethodValueFailure, List<StripeRefundModel>> refundFailureOrSuccess;
        Either<AttendeeFormFailure, Unit> failureOrSuccess;


        final paymentOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent != null && element.boothItem.status == AvailabilityStatus.confirmed).toList();
        final freeOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent == null && element.boothItem.status == AvailabilityStatus.confirmed).toList();

        /// 1. submit if payment confirmation exists?
        /// 2. submit for non-payment options
        if (paymentOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authRefundFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          refundFailureOrSuccess = await _stripeFacade.refundExistingStripePayment(
              payments: e.attendees.where((element) => element.boothItem.stripePaymentIntent != null).toList().map((e) => e.boothItem.stripePaymentIntent!).toList(),
              refundAmount: null
          );

          failureOrSuccess = await refundFailureOrSuccess.fold(
                  (l) =>  l.maybeMap(
                paymentCaptureFailure: (intent) => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Cancel Payment')),
                orElse: () => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Cancel Payment')),
              ),
                  (r) => _attFacade.updateVendorBoothStatus(
                  attendeeItems: paymentOptions,
                  activityOwner: state.reservationOwner,
                  status: AvailabilityStatus.refunded,
                  activityForm: state.activityForm,
                  payments: null,
            )
          );

          yield state.copyWith(
              isSubmitting: false,
              authRefundFailureOrSuccessOption: optionOf(refundFailureOrSuccess),
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }


        if (freeOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authRefundFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _attFacade.updateVendorBoothStatus(
              attendeeItems: freeOptions,
              activityOwner: state.reservationOwner,
              status: AvailabilityStatus.refunded,
              activityForm: state.activityForm,
              payments: null
          );

          yield state.copyWith(
              isSubmitting: false,
              authRefundFailureOrSuccessOption: none(),
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );
        }
      },

      didCancelAttendeesGroup: (e) async* {
        Either<PaymentMethodValueFailure, List<PaymentIntent>> payFailureOrSuccess;
        Either<AttendeeFormFailure, Unit> failureOrSuccess;


        final paymentOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent != null && element.boothItem.status == AvailabilityStatus.requested).toList();
        final freeOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent == null && element.boothItem.status == AvailabilityStatus.requested).toList();

        /// 1. submit if payment confirmation exists?
        /// 2. submit for non-payment options
        if (paymentOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          payFailureOrSuccess = await _stripeFacade.cancelPaymentIntent(
              payments: e.attendees.where((element) => element.boothItem.stripePaymentIntent != null).toList().map((e) => e.boothItem.stripePaymentIntent!).toList()
          );

          failureOrSuccess = await payFailureOrSuccess.fold(
                  (l) =>  l.maybeMap(
                paymentCaptureFailure: (intent) => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Cancel Payment')),
                orElse: () => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Cancel Payment')),
              ),
                  (r) => _attFacade.updateVendorBoothStatus(
                  attendeeItems: paymentOptions,
                  activityOwner: state.reservationOwner,
                  status: AvailabilityStatus.cancelled,
                  activityForm: state.activityForm,
                  payments: r
              )
          );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: optionOf(payFailureOrSuccess),
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }


        if (freeOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _attFacade.updateVendorBoothStatus(
              attendeeItems: freeOptions,
              activityOwner: state.reservationOwner,
              status: AvailabilityStatus.cancelled,
              activityForm: state.activityForm,
              payments: null
          );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: none(),
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );
        }
      },

      didRejectAttendeesGroup: (e) async* {
        Either<PaymentMethodValueFailure, List<PaymentIntent>> payFailureOrSuccess;
        Either<AttendeeFormFailure, Unit> failureOrSuccess;

        final paymentOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent != null && element.boothItem.status == AvailabilityStatus.requested).toList();
        final freeOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent == null && element.boothItem.status == AvailabilityStatus.requested).toList();

        /// 1. submit if payment confirmation exists?
        /// 2. submit for non-payment options
        if (paymentOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          payFailureOrSuccess = await _stripeFacade.cancelPaymentIntent(
              payments: e.attendees.where((element) => element.boothItem.stripePaymentIntent != null).toList().map((e) => e.boothItem.stripePaymentIntent!).toList()
          );

          failureOrSuccess = await payFailureOrSuccess.fold(
                  (l) =>  l.maybeMap(
                paymentCaptureFailure: (intent) => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Cancel Payment')),
                orElse: () => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Cancel Payment')),
              ),
                  (r) => _attFacade.updateVendorBoothStatus(
                  attendeeItems: paymentOptions,
                  activityOwner: state.reservationOwner,
                  status: AvailabilityStatus.denied,
                  activityForm: state.activityForm,
                  payments: r
              )
          );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: optionOf(payFailureOrSuccess),
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }


        if (freeOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _attFacade.updateVendorBoothStatus(
              attendeeItems: freeOptions,
              activityOwner: state.reservationOwner,
              status: AvailabilityStatus.denied,
              activityForm: state.activityForm,
              payments: null
          );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: none(),
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );
        }

      },

      didConfirmAttendeesGroup: (e) async* {
        Either<PaymentMethodValueFailure, List<PaymentIntent>> payFailureOrSuccess;
        Either<AttendeeFormFailure, Unit> failureOrSuccess;


        final paymentOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent != null && element.boothItem.status == AvailabilityStatus.requested).toList();
        final freeOptions = e.attendees.where((element) => element.boothItem.stripePaymentIntent == null && element.boothItem.status == AvailabilityStatus.requested).toList();

        /// 1. submit if payment confirmation exists?
        /// 2. submit for non-payment options
        if (paymentOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          payFailureOrSuccess = await _stripeFacade.processAndCapturePayments(
              payments: e.attendees.where(
                      (element) => element.boothItem.stripePaymentIntent != null).toList().map((e) => e.boothItem.stripePaymentIntent!).toList()
            );

          failureOrSuccess = await payFailureOrSuccess.fold(
                (l) =>  l.maybeMap(
                    paymentCaptureFailure: (intent) => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Capture Payment')),
                    orElse: () => left(const AttendeeFormFailure.attendeeServerError(failed: 'Could Not Capture Payment')),
                ),
                (r) => _attFacade.updateVendorBoothStatus(
                    attendeeItems: paymentOptions,
                    activityOwner: state.reservationOwner,
                    status: AvailabilityStatus.confirmed,
                    activityForm: state.activityForm,
                    payments: r
              )
            );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: optionOf(payFailureOrSuccess),
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }



        if (freeOptions.isNotEmpty) {
          yield state.copyWith(
            isSubmitting: true,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _attFacade.updateVendorBoothStatus(
              attendeeItems: freeOptions,
              activityOwner: state.reservationOwner,
              status: AvailabilityStatus.confirmed,
              activityForm: state.activityForm,
              payments: null
          );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: none(),
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );
        }
      },


      isFinishedCreatingVendorAttendee: (e) async* {
        Either<PaymentMethodValueFailure, List<PaymentIntent>> payFailureOrSuccess;
        Either<AttendeeFormFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authVendorPaymentFailureOrSuccessOption: none(),
          authFailureOrSuccessOption: none(),
        );


        /// 1. is submission fee requiring
        if (activityRequiresVendorFee(state.attendeeItem.vendorForm) && e.paymentMethod != null) {
          /// go through and hold payment using provided payment method
          payFailureOrSuccess = await _stripeFacade.processAndHoldPayment(
                  userProfile: e.profile,
                  stripeSellerAccountId: state.reservationOwner.stripeAccountId,
                  activityId: state.reservation.reservationId,
                  amounts: state.attendeeItem.vendorForm?.boothPaymentOptions ?? [],
                  currency: e.currency,
                  paymentMethod: e.paymentMethod!,
                  description: 'Vendor Application Fees',
                  taxCalculationId: e.taxCalculationId,
                  taxRateDetail: e.taxRateDetail,
                  discount: e.discount
          );

          /// 2. save attendee item with payment intent for each paid item
          failureOrSuccess = await payFailureOrSuccess.fold(
                  (l) => left(const AttendeeFormFailure.attendeeWaitingForPaymentConfirmation()),
                  (r) => _attFacade.createNewAttendee(
                  activityOwner: state.reservationOwner,
                  attendeeItem: state.attendeeItem,
                  activityForm: state.activityForm,
                  paymentIntentId: null,
                  payments: r
              )
          );

          yield state.copyWith(
              isSubmitting: false,
              authVendorPaymentFailureOrSuccessOption: optionOf(payFailureOrSuccess),
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );

        /// 3. if not fee based save new attendee
        } else {

          failureOrSuccess = await _attFacade.createNewAttendee(
            activityOwner: state.reservationOwner,
            attendeeItem: state.attendeeItem,
            activityForm: state.activityForm,
            paymentIntentId: null,
            payments: null
          );

          yield state.copyWith(
            isSubmitting: false,
            authVendorPaymentFailureOrSuccessOption: none(),
            authFailureOrSuccessOption: optionOf(failureOrSuccess)
          );
        }
      },  
    );
  }

}