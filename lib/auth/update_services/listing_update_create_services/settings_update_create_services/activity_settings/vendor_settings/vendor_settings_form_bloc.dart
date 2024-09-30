import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:check_in_domain/check_in_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:check_in_domain/domain/misc/attendee_services/form/merchant_vendor/custom_availability/mv_custom_availability.dart';
import 'package:check_in_domain/domain/misc/attendee_services/form/merchant_vendor/booth_payments/mv_booth_payments.dart';
import 'package:check_in_domain/domain/misc/attendee_services/form/merchant_vendor/custom_options/mv_custom_options.dart';
import 'package:check_in_domain/domain/misc/discount_code_service/discount_code_item.dart';


part 'vendor_settings_form_event.dart';
part 'vendor_settings_form_state.dart';
part 'vendor_settings_form_bloc.freezed.dart';

@injectable
class VendorSettingsFormBloc extends Bloc<VendorSettingsFormEvent, VendorSettingsFormState> {

  VendorSettingsFormBloc() : super(VendorSettingsFormState.initial());

  @override
  Stream<VendorSettingsFormState> mapEventToState(
      VendorSettingsFormEvent event) async* {

      yield* event.map(

          initialVendorForm: (e) async* {
            yield state.copyWith(
              vendorMerchantForm: e.initializeVendorMerchantForm.fold(
                      () => state.vendorMerchantForm,
                      (form) => form
              )
            );
          },

          didChangeFormTitle: (e) async* {
            yield state.copyWith(
              vendorMerchantForm: state.vendorMerchantForm.copyWith(
                  formTitle: e.title
              ),
              isEditingForm: true
            );
          },

          didChangeWelcomeMessage: (e) async* {
            // print(e.message);
            yield state.copyWith(
              vendorMerchantForm: state.vendorMerchantForm.copyWith(
                welcomeMessage: e.message
              ),
              isEditingForm: true
            );
          },

          didChangeFormStartEndDates: (e) async* {
            yield state.copyWith(
              vendorMerchantForm: state.vendorMerchantForm.copyWith(
                 openCloseDates: e.dates
              ),
              isEditingForm: true
            );
          },

          didChangeAvailableTimeOption: (e) async* {
            yield state.copyWith(
                vendorMerchantForm: state.vendorMerchantForm.copyWith(
                  availableTimeSlots: e.availability
                ),
              isEditingForm: true
            );
          },

          didChangeBoothPaymentOptions: (e) async* {
             yield state.copyWith(
               vendorMerchantForm: state.vendorMerchantForm.copyWith(
                 boothPaymentOptions: e.booths
               ),
               isEditingForm: true
             );
          },

          didChangeCustomOptions: (e) async* {
            yield state.copyWith(
              vendorMerchantForm: state.vendorMerchantForm.copyWith(
                customOptions: e.customOptions
              ),
                isEditingForm: true
            );
          },

          didChangeDisclaimerOptions: (e) async* {
             yield state.copyWith(
               vendorMerchantForm: state.vendorMerchantForm.copyWith(
                 disclaimerOptions: e.disclaimerOptions
               ),
                 isEditingForm: true
             );
          },

          didChangeDiscountCodeOptions: (e) async* {
            yield state.copyWith(
              vendorMerchantForm: state.vendorMerchantForm.copyWith(
                discountOptions: e.discountOptions
              ),
              isEditingForm: true
            );
          },

          didChangeFormStatus: (e) async* {
            yield state.copyWith(
              vendorMerchantForm: state.vendorMerchantForm.copyWith(
                formStatus: e.status
              ),
              isEditingForm: true
            );
          },

          didFinishSaving: (e) async* {

            yield state.copyWith(
              isSaving: !state.isSaving,
            );
          },

          didFinishPublishing: (e) async* {
            Either<VendorFormFailure, Unit> failureOrSuccess;


            yield state.copyWith(
                isPublishing: true,
                authFailureOrSuccessOption: none()
            );

            if (isVendorFormValid(state.vendorMerchantForm, e.resItem)) {
                yield state.copyWith(
                  isPublishing: false,
                  showErrorMessages: AutovalidateMode.disabled,
                  authFailureOrSuccessOption: optionOf(right(true)),
                  vendorMerchantForm: state.vendorMerchantForm.copyWith(
                    formStatus: FormStatus.published
                  )
                );
            } else {
              yield state.copyWith(
                isPublishing: false,
                showErrorMessages: AutovalidateMode.always,
                authFailureOrSuccessOption: optionOf(left(VendorFormFailure.vendorServerError())),
              );
            }
      },
    );
  }

}