part of '../utils.dart';

class AppRoutes {
  //! == Startup Route == !//
  static String startup([bool complete = true]) => "/";
  //! == Auth Route == !//
  /// Complete Route -> /auth/
  static String authModule([bool complete = true]) => "/auth/";

  /// Complete Route -> /auth/
  static String authPage([bool complete = true]) => complete ? "/auth/" : "/";

  /// Complete Route -> /auth/login/
  static String loginPage([bool complete = true]) =>
      complete ? "/auth/login/" : "/login/";

  /// Complete Route -> /auth/sign-up/
  static String signupPage([bool complete = true]) =>
      complete ? "/auth/sign-up/" : "/sign-up/";
}
