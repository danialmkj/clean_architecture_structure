import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mattab/src/common/routes.dart';
import 'package:mattab/src/features/feature_authentication/presentation/page/auth/sign_in_screen.dart';
import 'package:mattab/src/features/feature_authentication/presentation/page/auth/sign_up_screen.dart';
import 'package:mattab/src/features/feature_authentication/presentation/page/dashboard/dashboard_screen.dart';
import 'package:mattab/src/features/feature_authentication/presentation/page/error/error_screen.dart';
import 'package:mattab/src/features/feature_authentication/presentation/page/splash/splash_screen.dart';
import 'package:mattab/src/utilities/logger.dart';

GoRouter routerinit = GoRouter(
  routes: <RouteBase>[
    ///  =================================================================
    ///  ********************** Splash Route *****************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.SPLASH_ROUTE_NAME,
      path: AppRoutes.SPLASH_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),

    ///  =================================================================
    /// ********************** Authentication Routes ********************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.LOGIN_ROUTE_NAME,
      path: AppRoutes.LOGIN_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      name: AppRoutes.SIGNUP_ROUTE_NAME,
      path: AppRoutes.SIGNUP_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUnPage();
      },
    ),

    ///  =================================================================
    /// ********************** DashBoard Route ******************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.DASHBOARD_ROUTE_NAME,
      path: AppRoutes.DASHBOARD_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const DashBoardScreen();
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },
  redirect: (context, state) {
    logger.info('redirect: ${state.uri}');
    return null;
  },
);
