import '../../values/app_global/app_exports.dart';

class AppThemes {
  AppThemes._();

  static final AppThemes appThemes = AppThemes._();

  factory AppThemes() => appThemes;

  light() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primary,
        primarySwatch: AppColors.brandMaterialColor,
      );

  dark() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.secondary,
        primarySwatch: AppColors.brandMaterialColor,
      );
}
