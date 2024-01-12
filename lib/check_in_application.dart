library check_in_application;

import 'dart:async';

import 'package:check_in_domain/domain/misc/attendee_services/attendee_item/attendee_item.dart';
import 'package:dartz/dartz.dart';
import 'package:check_in_credentials/check_in_credentials.dart';
import 'package:check_in_domain/check_in_domain.dart';
import 'package:check_in_facade/check_in_facade.dart' as facade;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'check_in_application.config.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:location/location.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:check_in_domain/domain/auth/reservation_manager/post.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

part 'injection.dart';

part 'un_auth/watcher_services/public_listing_watcher_service/public_listings_watcher_bloc.dart';
part 'un_auth/watcher_services/public_listing_watcher_service/public_listings_watcher_event.dart';
part 'un_auth/watcher_services/public_listing_watcher_service/public_listings_watcher_state.dart';
part 'un_auth/update_services/search_update_service/update_listing_search_requirements_bloc.dart';
part 'un_auth/update_services/search_update_service/update_listing_search_requirements_event.dart';
part 'un_auth/update_services/search_update_service/update_listing_search_requirements_state.dart';

part 'un_auth/watcher_services/reservation_watcher_service/reservation_manager_watcher_bloc.dart';
part 'un_auth/watcher_services/reservation_watcher_service/reservation_manager_watcher_event.dart';
part 'un_auth/watcher_services/reservation_watcher_service/reservation_manager_watcher_state.dart';

part 'auth/update_services/listing_update_create_services/facility_activity_updater_creator/update_facility_activity_bloc.dart';
part 'auth/update_services/listing_update_create_services/facility_activity_updater_creator/update_facility_activity_event.dart';
part 'auth/update_services/listing_update_create_services/facility_activity_updater_creator/update_facility_activity_state.dart';

part 'auth/update_services/listing_update_create_services/reservation_update_create_services/listing_reservation_form_bloc.dart';
part 'auth/update_services/listing_update_create_services/reservation_update_create_services/listing_reservation_form_event.dart';
part 'auth/update_services/listing_update_create_services/reservation_update_create_services/listing_reservation_form_state.dart';

part 'auth/update_services/listing_update_create_services/settings_update_create_services/facility_settings/listing_settings_form_bloc.dart';
part 'auth/update_services/listing_update_create_services/settings_update_create_services/facility_settings/listing_settings_form_event.dart';
part 'auth/update_services/listing_update_create_services/settings_update_create_services/facility_settings/listing_settings_form_state.dart';


part 'auth/update_services/manager_update_create_services/facility_updater_creator/update_facility_form/update_facility_form_bloc.dart';
part 'auth/update_services/manager_update_create_services/facility_updater_creator/update_facility_form/update_facility_form_event.dart';
part 'auth/update_services/manager_update_create_services/facility_updater_creator/update_facility_form/update_facility_form_state.dart';

part 'auth/update_services/user_update_account_services/profile_services/update_user_profile_account_bloc.dart';
part 'auth/update_services/user_update_account_services/profile_services/update_user_profile_account_event.dart';
part 'auth/update_services/user_update_account_services/profile_services/update_user_profile_account_state.dart';

part 'auth/update_services/user_update_account_services/account_services/create_auth_user_account_bloc.dart';
part 'auth/update_services/user_update_account_services/account_services/create_auth_user_account_event.dart';
part 'auth/update_services/user_update_account_services/account_services/create_auth_user_account_state.dart';

part 'auth/watcher_services/manager_watcher_services/activity_watcher/activity_manager_watcher_bloc.dart';
part 'auth/watcher_services/manager_watcher_services/activity_watcher/activity_manager_watcher_event.dart';
part 'auth/watcher_services/manager_watcher_services/activity_watcher/activity_manager_watcher_state.dart';
part 'auth/watcher_services/manager_watcher_services/activity_watcher/ticket_watcher/activity_ticket_watcher_bloc.dart';
part 'auth/watcher_services/manager_watcher_services/activity_watcher/ticket_watcher/activity_ticket_watcher_event.dart';
part 'auth/watcher_services/manager_watcher_services/activity_watcher/ticket_watcher/activity_ticket_watcher_state.dart';
part 'auth/watcher_services/manager_watcher_services/facility_watcher/facility_manager_watcher_bloc.dart';
part 'auth/watcher_services/manager_watcher_services/facility_watcher/facility_manager_watcher_event.dart';
part 'auth/watcher_services/manager_watcher_services/facility_watcher/facility_manager_watcher_state.dart';
part 'auth/watcher_services/manager_watcher_services/listing_watcher/listing_manager_watcher_bloc.dart';
part 'auth/watcher_services/manager_watcher_services/listing_watcher/listing_manager_watcher_event.dart';
part 'auth/watcher_services/manager_watcher_services/listing_watcher/listing_manager_watcher_state.dart';
part 'auth/watcher_services/users/profile_services/user_profile_watcher_bloc.dart';
part 'auth/watcher_services/users/profile_services/user_profile_watcher_event.dart';
part 'auth/watcher_services/users/profile_services/user_profile_watcher_state.dart';

part 'auth/auth_bloc.dart';
part 'auth/auth_event.dart';
part 'auth/auth_state.dart';

part 'misc/update_services/custom_check_in_form_services/custom_check_in_form_bloc.dart';
part 'misc/update_services/custom_check_in_form_services/custom_check_in_form_event.dart';
part 'misc/update_services/custom_check_in_form_services/custom_check_in_form_state.dart';
part 'misc/update_services/custom_rule_services/custom_rule_form_bloc.dart';
part 'misc/update_services/custom_rule_services/custom_rule_form_event.dart';
part 'misc/update_services/custom_rule_services/custom_rule_form_state.dart';
part 'misc/update_services/location_services/create_update_location_services/create_location_bloc.dart';
part 'misc/update_services/location_services/create_update_location_services/create_location_event.dart';
part 'misc/update_services/location_services/create_update_location_services/create_location_state.dart';
part 'misc/watcher_services/current_location_watcher/geolocator_location_watcher_bloc.dart';
part 'misc/watcher_services/current_location_watcher/geolocator_location_watcher_event.dart';
part 'misc/watcher_services/current_location_watcher/geolocator_location_watcher_state.dart';
part 'misc/watcher_services/location_verification_watcher/location_verification_watcher_bloc.dart';
part 'misc/watcher_services/location_verification_watcher/location_verification_watcher_event.dart';
part 'misc/watcher_services/location_verification_watcher/location_verification_watcher_state.dart';
part 'misc/update_services/news_services/news_updates_watcher_bloc.dart';
part 'misc/update_services/news_services/news_updates_watcher_event.dart';
part 'misc/update_services/news_services/news_updates_watcher_state.dart';
part 'misc/update_services/payment_services/payment_services_bloc.dart';
part 'misc/update_services/payment_services/payment_services_event.dart';
part 'misc/update_services/payment_services/payment_services_state.dart';
part 'misc/update_services/web/check_out_services/check_out_services_bloc.dart';
part 'misc/update_services/web/check_out_services/check_out_services_event.dart';
part 'misc/update_services/web/check_out_services/check_out_services_state.dart';


part 'un_auth/watcher_services/user_profile_preview/bookings_overview/users_current_bookings_watcher_bloc.dart';
part 'un_auth/watcher_services/user_profile_preview/bookings_overview/users_current_bookings_watcher_event.dart';
part 'un_auth/watcher_services/user_profile_preview/bookings_overview/users_current_bookings_watcher_state.dart';

part 'un_auth/watcher_services/locations_profile_services/locations_directory_watcher/locations_directory_watcher_bloc.dart';
part 'un_auth/watcher_services/locations_profile_services/locations_directory_watcher/locations_directory_watcher_event.dart';
part 'un_auth/watcher_services/locations_profile_services/locations_directory_watcher/locations_directory_watcher_state.dart';

part 'check_in_application.freezed.dart';