import 'package:andrei_hodis/src/presentation/home.dart';
import 'package:andrei_hodis/src/presentation/login/reset_password_page.dart';
import 'package:andrei_hodis/src/presentation/sign_up/sign_up_page.dart';
import 'package:flutter/cupertino.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String resetPassword = '/resetPassword';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUp: (BuildContext context) => const SignUpPage(),
    resetPassword: (BuildContext context) => const ResetPasswordPage(),
  };
}
