import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/network/api_service.dart';
import 'package:shagaf/feature/authentication/data/auth_repo/auth_repo_implementation.dart';
import 'package:shagaf/feature/authentication/presentation/views/forget_password_screen.dart';
import 'package:shagaf/feature/authentication/presentation/views/log_in_screen.dart';
import 'package:shagaf/feature/authentication/presentation/views/sign_up_screen.dart';
import 'package:shagaf/feature/authentication/presentation/views/verify_screen.dart';
import 'package:shagaf/feature/home/presentation/views/homescreen.dart';
import 'package:shagaf/feature/more/presentation/views/notification_screen.dart';
import 'package:shagaf/feature/more/presentation/views/profile_screen.dart';
import 'package:shagaf/feature/more/presentation/views/setting_screen.dart';
import 'package:shagaf/feature/more/presentation/views/contactus_screen.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/order_screen.dart';
import 'package:shagaf/feature/onboarding/presentation/views/onboarding_screen.dart';
import 'package:shagaf/feature/onboarding/presentation/views/splash_screen.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/birthday_screen.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/membership_screen.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/photo_session_screen.dart';
import 'package:shagaf/feature/room/presentation/views/booking_history_screen.dart';
import 'package:shagaf/feature/room/presentation/views/booking_review_screen.dart';
import 'package:shagaf/feature/room/presentation/views/reservation_room_screen.dart';
import 'package:shagaf/feature/room/presentation/views/rooms_screen.dart';
import '../feature/offers&events&orders/presentation/views/event_screen.dart';
import '../feature/offers&events&orders/presentation/views/events_details_screen.dart';
import '../feature/offers&events&orders/presentation/views/offer_screen.dart';
import '../feature/room/presentation/views/select_date&time_screen.dart';
import '../feature/room/presentation/views/widgets/rooms_widget/rooms_model.dart';

abstract class AppRouter {
  static const onBordingView = "/OnboardingScreen";
  static const loginView = "/LogInScreen";
  static const forgetPasswordView = "/ForgetPasswordScreen";
  static const signUpView = "/SignUpScreen";
  static const verifyView = '/VerifyScreen';
  static const homeView = '/Homescreen';
  static const rooms = '/RoomsScreen';
  static const roomReserve = '/ReservationRoomScreen';
  static const selectDate = '/SelectDateScreen';
  static const bookingReview = '/BookingReviewScreen';
  static const bookingHistory = '/BookingHistoryScreen';
  static const offerScreen = '/OfferScreen';
  static const eventScreen = '/EventScreen';
  static const eventsDetailsScreen = '/EventsDetailsScreen';
  static const memberShipScreen = '/MembershipScreen';
  static const birthDayScreen = '/BirthdayScreen';
  static const photoSessionScreen = '/PhotoSessionScreen';
  static const settingScreen = '/SettingScreen';
  static const contactUsScreen = '/ContactusScreen';
  static const profileScreen = '/ProfileScreen';
  static const notificationScreen = '/NotificationScreen';
  static const orderScreen = '/OrderScreen';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen();
      },
    ),
    GoRoute(
      path: onBordingView,
      builder: (BuildContext context, GoRouterState state) {
        return OnboardingScreen();
      },
    ),
    GoRoute(
      path: loginView,
      builder: (BuildContext context, GoRouterState state) {
        return LogInScreen();
      },
    ),
    GoRoute(
      path: forgetPasswordView,
      builder: (BuildContext context, GoRouterState state) {
        return ForgetPasswordScreen();
      },
    ),
    GoRoute(
      path: signUpView,
      builder: (BuildContext context, GoRouterState state) {
        return SignUpScreen(
          authRepoImplementation: AuthRepoImplementation(ApiService(Dio())),
        );
      },
    ),
    GoRoute(
      path: verifyView,
      builder: (BuildContext context, GoRouterState state) {

        return VerifyScreen(
          authRepoImplementation: AuthRepoImplementation(ApiService(Dio())),
        );
      },
    ),
    GoRoute(
      path: homeView,
      builder: (BuildContext context, GoRouterState state) {
        return Homescreen();
      },
    ),
    GoRoute(
      path: rooms,
      builder: (BuildContext context, GoRouterState state) {
        return RoomsScreen();
      },
    ),
    GoRoute(
      path: roomReserve,
      builder: (BuildContext context, GoRouterState state) {
        return ReservationRoomScreen(roomsModel: state.extra as RoomsModel);
      },
    ),
    GoRoute(
      path: selectDate,
      builder: (BuildContext context, GoRouterState state) {
        return SelectDateScreen();
      },
    ),
    GoRoute(
      path: bookingReview,
      builder: (BuildContext context, GoRouterState state) {
        return BookingReviewScreen();
      },
    ),
    GoRoute(
      path: bookingHistory,
      builder: (BuildContext context, GoRouterState state) {
        return BookingHistoryScreen();
      },
    ),
    GoRoute(
      path: offerScreen,
      builder: (BuildContext context, GoRouterState state) {
        return OfferScreen();
      },
    ),
    GoRoute(
      path: eventScreen,
      builder: (BuildContext context, GoRouterState state) {
        return EventScreen();
      },
    ),
    GoRoute(
      path: eventsDetailsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return EventsDetailsScreen();
      },
    ),
    GoRoute(
      path: memberShipScreen,
      builder: (BuildContext context, GoRouterState state) {
        return MembershipScreen();
      },
    ),
    GoRoute(
      path: birthDayScreen,
      builder: (BuildContext context, GoRouterState state) {
        return BirthdayScreen();
      },
    ),
    GoRoute(
      path: photoSessionScreen,
      builder: (BuildContext context, GoRouterState state) {
        return PhotoSessionScreen();
      },
    ),
    GoRoute(
      path: settingScreen,
      builder: (BuildContext context, GoRouterState state) {
        return SettingScreen();
      },
    ),
    GoRoute(
      path: contactUsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return ContactusScreen();
      },
    ),
    GoRoute(
      path: profileScreen,
      builder: (BuildContext context, GoRouterState state) {
        return ProfileScreen();
      },
    ),
    GoRoute(
      path: notificationScreen,
      builder: (BuildContext context, GoRouterState state) {
        return NotificationScreen();
      },
    ),
    GoRoute(
      path: orderScreen,
      builder: (BuildContext context, GoRouterState state) {
        return OrderScreen();
      },
    ),
  ]);
}
// var roomName = state
//     .uri.queryParameters['roomName'];
// String? roomImage = state
//     .uri.queryParameters['roomImage'];
// return ReservationRoomScreen(
//     roomName: roomName,
//     roomImage: roomImage);
