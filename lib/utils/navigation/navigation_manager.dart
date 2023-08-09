import 'package:aviance_india/modules/chat/chat_screen.dart';
import 'package:aviance_india/modules/login/login_screen.dart';
import 'package:aviance_india/modules/profile/profile_screen.dart';
import 'package:aviance_india/modules/splash/splash_screen.dart';

import '../../values/app_global/app_exports.dart';

class NavigationManager {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final name = routeSettings.name;
    final args = routeSettings.arguments;

    switch (name) {
      case RouteNames.root:
        return MaterialPageRoute(builder: (_) => const RootScreen());
      case RouteNames.chat:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case RouteNames.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
