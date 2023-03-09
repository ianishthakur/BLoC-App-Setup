// import 'package:boilerplate/feature/authentication/ui/screen/login_screen.dart';
// import 'package:boilerplate/feature/authentication/ui/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:turant_call/common/route/routes.dart';

import '../../feature/onboard/ui/screen/onboard_page.dart';
import '../../feature/onboard/ui/screen/splash_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardPage());

      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
