// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:check_in_application/auth/update_services/booked_reservation_services/booked_reservation_form_bloc.dart'
    as _i7;
import 'package:check_in_application/auth/update_services/listing_update_create_services/attendee_update_create_services/listing_attendee_form_bloc.dart'
    as _i5;
import 'package:check_in_application/auth/update_services/listing_update_create_services/settings_update_create_services/activity_settings/activity_settings_form_bloc.dart'
    as _i11;
import 'package:check_in_application/auth/update_services/listing_update_create_services/settings_update_create_services/activity_settings/vendor_settings/vendor_settings_form_bloc.dart'
    as _i12;
import 'package:check_in_application/auth/update_services/main_app_services/circle_activities_main/circle_activities_main_bloc.dart'
    as _i8;
import 'package:check_in_application/check_in_application.dart' as _i3;
import 'package:check_in_application/misc/update_services/invitiation_services/invitation_service_bloc.dart'
    as _i9;
import 'package:check_in_application/misc/watcher_services/stripe_watcher_services/stripe_payment_watcher_bloc.dart'
    as _i10;
import 'package:check_in_application/un_auth/watcher_services/attendee_watcher_service/attendee_manager_watcher_bloc.dart'
    as _i6;
import 'package:check_in_facade/check_in_facade.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ActivityManagerWatcherBloc>(
        () => _i3.ActivityManagerWatcherBloc(gh<_i4.AAuthWatcherFacade>()));
    gh.factory<_i3.ActivityTicketWatcherBloc>(
        () => _i3.ActivityTicketWatcherBloc(gh<_i4.TWatcherFacade>()));
    gh.factory<_i5.AttendeeFormBloc>(() => _i5.AttendeeFormBloc(
          gh<_i4.ATTAuthFacade>(),
          gh<_i4.SStripeFacade>(),
        ));
    gh.factory<_i6.AttendeeManagerWatcherBloc>(
        () => _i6.AttendeeManagerWatcherBloc(gh<_i4.ATTAuthWatcherFacade>()));
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(gh<_i4.IAuthFacade>()));
    gh.factory<_i7.BookedReservationFormBloc>(
        () => _i7.BookedReservationFormBloc(gh<_i4.RUpdaterFacade>()));
    gh.factory<_i3.CheckOutServicesBloc>(
        () => _i3.CheckOutServicesBloc(gh<_i4.SStripeFacade>()));
    gh.factory<_i8.CircleActivitiesMainBloc>(
        () => _i8.CircleActivitiesMainBloc(gh<_i4.ATTAuthFacade>()));
    gh.factory<_i3.CircleProfileBloc>(() => _i3.CircleProfileBloc());
    gh.factory<_i3.CommunityManagerWatcherBloc>(
        () => _i3.CommunityManagerWatcherBloc(gh<_i4.CAuthWatcherFacade>()));
    gh.factory<_i3.CreateAuthUserAccountBloc>(
        () => _i3.CreateAuthUserAccountBloc(gh<_i4.IAuthFacade>()));
    gh.factory<_i3.CreateLocationBloc>(
        () => _i3.CreateLocationBloc(gh<_i4.IAuthFacade>()));
    gh.factory<_i3.CustomCheckInFormBloc>(() => _i3.CustomCheckInFormBloc());
    gh.factory<_i3.CustomRuleFormBloc>(() => _i3.CustomRuleFormBloc());
    gh.factory<_i3.FacilityManagerWatcherBloc>(
        () => _i3.FacilityManagerWatcherBloc(gh<_i4.FAuthWatcherFacade>()));
    gh.factory<_i3.GeoLocatorWatcherBloc>(
        () => _i3.GeoLocatorWatcherBloc(gh<_i4.MMiscFacade>()));
    gh.factory<_i9.InvitationFormBloc>(
        () => _i9.InvitationFormBloc(gh<_i4.RUpdaterFacade>()));
    gh.factory<_i3.ListingManagerWatcherBloc>(
        () => _i3.ListingManagerWatcherBloc(gh<_i4.LMWatcherFacade>()));
    gh.factory<_i3.ListingSettingFormBloc>(() => _i3.ListingSettingFormBloc(
          gh<_i4.LMFacade>(),
          gh<_i4.SStripeFacade>(),
        ));
    gh.factory<_i3.ListingsSearchRequirementsBloc>(
        () => _i3.ListingsSearchRequirementsBloc());
    gh.factory<_i3.LocationDirectoryWatcherBloc>(() =>
        _i3.LocationDirectoryWatcherBloc(
            gh<_i4.LocationUnAuthWatcherFacade>()));
    gh.factory<_i3.LocationVerificationWatcherBloc>(
        () => _i3.LocationVerificationWatcherBloc(gh<_i4.MMiscFacade>()));
    gh.factory<_i3.NewsUpdatesWatcherBloc>(
        () => _i3.NewsUpdatesWatcherBloc(gh<_i4.MMiscFacade>()));
    gh.factory<_i3.NotificationWatcherBloc>(
        () => _i3.NotificationWatcherBloc(gh<_i4.NWatcherFacade>()));
    gh.factory<_i3.PaymentServicesBloc>(() => _i3.PaymentServicesBloc(
          gh<_i4.SStripeFacade>(),
          gh<_i4.IAuthFacade>(),
        ));
    gh.factory<_i3.PublicListingWatcherBloc>(
        () => _i3.PublicListingWatcherBloc(gh<_i4.LMWatcherFacade>()));
    gh.factory<_i3.ReservationFormBloc>(() => _i3.ReservationFormBloc(
          gh<_i4.RUpdaterFacade>(),
          gh<_i4.SStripeFacade>(),
        ));
    gh.factory<_i3.ReservationManagerWatcherBloc>(
        () => _i3.ReservationManagerWatcherBloc(gh<_i4.RAuthWatcherFacade>()));
    gh.factory<_i10.StripePaymentWatcherBloc>(
        () => _i10.StripePaymentWatcherBloc(gh<_i4.SStripeWatcherFacade>()));
    gh.factory<_i11.UpdateActivityFormBloc>(() => _i11.UpdateActivityFormBloc(
          gh<_i4.AAuthFacade>(),
          gh<_i4.SStripeFacade>(),
        ));
    gh.factory<_i3.UpdateFacilityActivityBloc>(
        () => _i3.UpdateFacilityActivityBloc(gh<_i4.FAuthFacade>()));
    gh.factory<_i3.UpdateFacilityFormBloc>(
        () => _i3.UpdateFacilityFormBloc(gh<_i4.FAuthFacade>()));
    gh.factory<_i3.UpdateUserProfileAccountBloc>(
        () => _i3.UpdateUserProfileAccountBloc(gh<_i4.IAuthFacade>()));
    gh.factory<_i3.UpdateVendorMerchProfileBloc>(
        () => _i3.UpdateVendorMerchProfileBloc(gh<_i4.MVAuthFacade>()));
    gh.factory<_i3.UserProfileWatcherBloc>(() => _i3.UserProfileWatcherBloc(
          gh<_i4.IAuthFacade>(),
          gh<_i4.ATTAuthWatcherFacade>(),
        ));
    gh.factory<_i3.UsersCurrentBookingsCountWatcherBloc>(
        () => _i3.UsersCurrentBookingsCountWatcherBloc(gh<_i4.UnAuthFacade>()));
    gh.factory<_i3.VendorMerchProfileWatcherBloc>(
        () => _i3.VendorMerchProfileWatcherBloc(gh<_i4.MVAuthWatcherFacade>()));
    gh.factory<_i12.VendorSettingsFormBloc>(
        () => _i12.VendorSettingsFormBloc());
    return this;
  }
}
