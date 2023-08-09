import '../../values/app_global/app_exports.dart';

class AppGradients {
  static const primaryGradient = LinearGradient(
    colors: [AppColors.brandColor, AppColors.brandDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
