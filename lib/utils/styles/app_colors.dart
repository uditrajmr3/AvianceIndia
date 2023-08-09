import '../../values/app_global/app_exports.dart';

class AppColors {
  // brand colors
  static const Color brandColor = Color(0xffDE6262);
  static const Color brandDark = Color(0xffFFB88C);

  // utility colors
  static const Color info = Color(0xff17a2b8);
  static const Color warning = Color(0xffffc107);
  static const Color error = Color(0xffdc3545);
  static const Color success = Color(0xff28a745);
  static const Color network = Color(0xffaa11ff);

  // common/helper colors
  static const Color primary = Color(0xfff1f1f1);
  static const Color secondary = Color(0xff0a0a0a);

  static final brandMaterialColor = MaterialColor(
    brandColor.value,
    const <int, Color>{
      50: Color(0xff050418),
      100: Color(0xff09082f),
      200: Color(0xff0e0c47),
      300: Color(0xff13105e),
      400: Color(0xff181476),
      500: Color(0xff1c178e),
      600: Color(0xff211ba5),
      700: Color(0xff261fbd),
      800: Color(0xff2a23d4),
      900: Color(0xff2f27ec),
    },
  );
}
