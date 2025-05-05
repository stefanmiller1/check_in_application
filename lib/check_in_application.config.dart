// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:check_in_application/auth/update_services/booked_reservation_services/booked_reservation_form_bloc.dart'
    as _i663;
import 'package:check_in_application/auth/update_services/listing_update_create_services/attendee_update_create_services/listing_attendee_form_bloc.dart'
    as _i499;
import 'package:check_in_application/auth/update_services/listing_update_create_services/settings_update_create_services/activity_settings/activity_settings_form_bloc.dart'
    as _i684;
import 'package:check_in_application/auth/update_services/listing_update_create_services/settings_update_create_services/activity_settings/vendor_settings/vendor_settings_form_bloc.dart'
    as _i154;
import 'package:check_in_application/auth/update_services/main_app_services/circle_activities_main/circle_activities_main_bloc.dart'
    as _i1025;
import 'package:check_in_application/check_in_application.dart' as _i405;
import 'package:check_in_application/misc/update_services/invitiation_services/invitation_service_bloc.dart'
    as _i69;
import 'package:check_in_application/misc/watcher_services/stripe_watcher_services/stripe_payment_watcher_bloc.dart'
    as _i351;
import 'package:check_in_application/un_auth/watcher_services/attendee_watcher_service/attendee_manager_watcher_bloc.dart'
    as _i1045;
import 'package:check_in_facade/check_in_facade.dart' as _i7;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i154.VendorSettingsFormBloc>(
        () => _i154.VendorSettingsFormBloc());
    gh.factory<_i405.ListingsSearchRequirementsBloc>(
        () => _i405.ListingsSearchRequirementsBloc());
    gh.factory<_i405.CircleProfileBloc>(() => _i405.CircleProfileBloc());
    gh.factory<_i405.CustomCheckInFormBloc>(
        () => _i405.CustomCheckInFormBloc());
    gh.factory<_i405.CustomRuleFormBloc>(() => _i405.CustomRuleFormBloc());
    gh.factory<_i405.NotificationWatcherBloc>(
        () => _i405.NotificationWatcherBloc(gh<_i7.NWatcherFacade>()));
    gh.factory<_i1025.CircleActivitiesMainBloc>(
        () => _i1025.CircleActivitiesMainBloc(gh<_i7.ATTAuthFacade>()));
    gh.factory<_i684.UpdateActivityFormBloc>(() => _i684.UpdateActivityFormBloc(
          gh<_i7.AAuthFacade>(),
          gh<_i7.SStripeFacade>(),
        ));
    gh.factory<_i405.UpdateVendorMerchProfileBloc>(
        () => _i405.UpdateVendorMerchProfileBloc(gh<_i7.MVAuthFacade>()));
    gh.factory<_i405.PaymentServicesBloc>(() => _i405.PaymentServicesBloc(
          gh<_i7.SStripeFacade>(),
          gh<_i7.IAuthFacade>(),
        ));
    gh.factory<_i405.FacilityManagerWatcherBloc>(
        () => _i405.FacilityManagerWatcherBloc(gh<_i7.FAuthWatcherFacade>()));
    gh.factory<_i405.GeoLocatorWatcherBloc>(
        () => _i405.GeoLocatorWatcherBloc(gh<_i7.MMiscFacade>()));
    gh.factory<_i405.LocationVerificationWatcherBloc>(
        () => _i405.LocationVerificationWatcherBloc(gh<_i7.MMiscFacade>()));
    gh.factory<_i405.NewsUpdatesWatcherBloc>(
        () => _i405.NewsUpdatesWatcherBloc(gh<_i7.MMiscFacade>()));
    gh.factory<_i405.ReservationManagerWatcherBloc>(() =>
        _i405.ReservationManagerWatcherBloc(gh<_i7.RAuthWatcherFacade>()));
    gh.factory<_i405.UpdateFacilityActivityBloc>(
        () => _i405.UpdateFacilityActivityBloc(gh<_i7.FAuthFacade>()));
    gh.factory<_i405.UpdateFacilityFormBloc>(
        () => _i405.UpdateFacilityFormBloc(gh<_i7.FAuthFacade>()));
    gh.factory<_i69.InvitationFormBloc>(
        () => _i69.InvitationFormBloc(gh<_i7.RUpdaterFacade>()));
    gh.factory<_i405.ListingSettingFormBloc>(() => _i405.ListingSettingFormBloc(
          gh<_i7.LMFacade>(),
          gh<_i7.SStripeFacade>(),
        ));
    gh.factory<_i405.UpdateUserProfileAccountBloc>(
        () => _i405.UpdateUserProfileAccountBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i405.CreateAuthUserAccountBloc>(
        () => _i405.CreateAuthUserAccountBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i405.AuthBloc>(() => _i405.AuthBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i405.CreateLocationBloc>(
        () => _i405.CreateLocationBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i405.ActivityTicketWatcherBloc>(
        () => _i405.ActivityTicketWatcherBloc(gh<_i7.TWatcherFacade>()));
    gh.factory<_i405.UsersCurrentBookingsCountWatcherBloc>(() =>
        _i405.UsersCurrentBookingsCountWatcherBloc(gh<_i7.UnAuthFacade>()));
    gh.factory<_i405.ActivityManagerWatcherBloc>(
        () => _i405.ActivityManagerWatcherBloc(gh<_i7.AAuthWatcherFacade>()));
    gh.factory<_i405.UserProfileWatcherBloc>(() => _i405.UserProfileWatcherBloc(
          gh<_i7.IAuthFacade>(),
          gh<_i7.ATTAuthWatcherFacade>(),
        ));
    gh.factory<_i405.PublicListingWatcherBloc>(
        () => _i405.PublicListingWatcherBloc(gh<_i7.LMWatcherFacade>()));
    gh.factory<_i405.CheckOutServicesBloc>(
        () => _i405.CheckOutServicesBloc(gh<_i7.SStripeFacade>()));
    gh.factory<_i405.VendorMerchProfileWatcherBloc>(() =>
        _i405.VendorMerchProfileWatcherBloc(gh<_i7.MVAuthWatcherFacade>()));
    gh.factory<_i405.LocationDirectoryWatcherBloc>(() =>
        _i405.LocationDirectoryWatcherBloc(
            gh<_i7.LocationUnAuthWatcherFacade>()));
    gh.factory<_i405.ListingManagerWatcherBloc>(
        () => _i405.ListingManagerWatcherBloc(gh<_i7.LMWatcherFacade>()));
    gh.factory<_i405.ReservationFormBloc>(() => _i405.ReservationFormBloc(
          gh<_i7.RUpdaterFacade>(),
          gh<_i7.SStripeFacade>(),
        ));
    gh.factory<_i663.BookedReservationFormBloc>(
        () => _i663.BookedReservationFormBloc(gh<_i7.RUpdaterFacade>()));
    gh.factory<_i1045.AttendeeManagerWatcherBloc>(() =>
        _i1045.AttendeeManagerWatcherBloc(gh<_i7.ATTAuthWatcherFacade>()));
    gh.factory<_i499.AttendeeFormBloc>(() => _i499.AttendeeFormBloc(
          gh<_i7.ATTAuthFacade>(),
          gh<_i7.SStripeFacade>(),
        ));
    gh.factory<_i351.StripePaymentWatcherBloc>(
        () => _i351.StripePaymentWatcherBloc(gh<_i7.SStripeWatcherFacade>()));
    gh.factory<_i405.CommunityManagerWatcherBloc>(
        () => _i405.CommunityManagerWatcherBloc(gh<_i7.CAuthWatcherFacade>()));
    return this;
  }
}
