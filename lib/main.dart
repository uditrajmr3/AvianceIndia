import 'package:aviance_india/utils/navigation/navigation_manager.dart';
import 'package:aviance_india/values/app_global/app_exports.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyAvianceApp()));
}

class MyAvianceApp extends StatelessWidget {
  const MyAvianceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: AppThemes().light(),
      darkTheme: AppThemes().dark(),
      themeMode: ThemeMode.system,
      initialRoute: RouteNames.root,
      onGenerateRoute: NavigationManager.onGenerateRoute,
    );
  }
}
