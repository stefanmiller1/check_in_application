// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:check_in_facade/check_in_facade.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'check_in_application.dart' as _i3;
import 'misc/watcher_services/stripe_watcher_services/stripe_payment_watcher_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ActivityManagerWatcherBloc>(
      () => _i3.ActivityManagerWatcherBloc(get<_i4.AAuthWatcherFacade>()));
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i3.CreateAuthUserAccountBloc>(
      () => _i3.CreateAuthUserAccountBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i3.CreateLocationBloc>(
      () => _i3.CreateLocationBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i3.CustomCheckInFormBloc>(() => _i3.CustomCheckInFormBloc());
  gh.factory<_i3.CustomRuleFormBloc>(() => _i3.CustomRuleFormBloc());
  gh.factory<_i3.FacilityManagerWatcherBloc>(
      () => _i3.FacilityManagerWatcherBloc(get<_i4.FAuthWatcherFacade>()));
  gh.factory<_i3.GeoLocatorWatcherBloc>(
      () => _i3.GeoLocatorWatcherBloc(get<_i4.MMiscFacade>()));
  gh.factory<_i3.ListingManagerWatcherBloc>(
      () => _i3.ListingManagerWatcherBloc(get<_i4.LMWatcherFacade>()));
  gh.factory<_i3.ListingSettingFormBloc>(() => _i3.ListingSettingFormBloc(
        get<_i4.LMFacade>(),
        get<_i4.SStripeFacade>(),
      ));
  gh.factory<_i3.ListingsSearchRequirementsBloc>(
      () => _i3.ListingsSearchRequirementsBloc());
  gh.factory<_i3.LocationDirectoryWatcherBloc>(() =>
      _i3.LocationDirectoryWatcherBloc(get<_i4.LocationUnAuthWatcherFacade>()));
  gh.factory<_i3.LocationVerificationWatcherBloc>(
      () => _i3.LocationVerificationWatcherBloc(get<_i4.MMiscFacade>()));
  gh.factory<_i3.NewsUpdatesWatcherBloc>(
      () => _i3.NewsUpdatesWatcherBloc(get<_i4.MMiscFacade>()));
  gh.factory<_i3.PaymentServicesBloc>(() => _i3.PaymentServicesBloc(
        get<_i4.SStripeFacade>(),
        get<_i4.IAuthFacade>(),
      ));
  gh.factory<_i3.PublicListingWatcherBloc>(
      () => _i3.PublicListingWatcherBloc(get<_i4.LMWatcherFacade>()));
  gh.factory<_i3.ReservationFormBloc>(() => _i3.ReservationFormBloc(
        get<_i4.RUpdaterFacade>(),
        get<_i4.SStripeFacade>(),
      ));
  gh.factory<_i3.ReservationManagerWatcherBloc>(
      () => _i3.ReservationManagerWatcherBloc(get<_i4.RAuthWatcherFacade>()));
  gh.factory<_i5.StripePaymentWatcherBloc>(
      () => _i5.StripePaymentWatcherBloc(get<_i4.SStripeWatcherFacade>()));
  gh.factory<_i3.UpdateActivityFormBloc>(
      () => _i3.UpdateActivityFormBloc(get<_i4.AAuthFacade>()));
  gh.factory<_i3.UpdateFacilityActivityBloc>(
      () => _i3.UpdateFacilityActivityBloc(get<_i4.FAuthFacade>()));
  gh.factory<_i3.UpdateFacilityFormBloc>(
      () => _i3.UpdateFacilityFormBloc(get<_i4.FAuthFacade>()));
  gh.factory<_i3.UpdateUserProfileAccountBloc>(
      () => _i3.UpdateUserProfileAccountBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i3.UserProfileWatcherBloc>(
      () => _i3.UserProfileWatcherBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i3.UsersCurrentBookingsCountWatcherBloc>(
      () => _i3.UsersCurrentBookingsCountWatcherBloc(get<_i4.UnAuthFacade>()));
  return get;
}
