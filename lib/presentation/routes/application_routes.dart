import 'package:flutter/material.dart';

import '../../share_preferens/user_preferences.dart';
import '../screens/index.dart';

class Routes {
  static const String login = '/login';
  static const String home = '/home';
}

Map<String, WidgetBuilder> getApplicationRoutes(
    GlobalKey<NavigatorState> navigatorKey) {
  final prefs = UserPreferences();
  return <String, WidgetBuilder>{
    '/': (BuildContext context) =>
        prefs.accessToken.isEmpty ? const LoginScreen() : const HomeScreen(),
    Routes.login: (BuildContext context) => const LoginScreen(),
    Routes.home: (BuildContext context) => const HomeScreen(),
  };
}
