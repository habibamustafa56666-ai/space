import 'package:material_ui/material_ui.dart';

class AppColors {
  static const Color background = Color(0xFF0E0E0E); // الخلفية الداكنة
  static const Color primaryRed = Color(0xFFEE403D); // اللون الأحمر للأزرار
  static const Color white = Color(0xFFFFFFFF);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      primaryColor: AppColors.primaryRed,
      fontFamily: 'SpaceGrotesk', // أو الخط المستخدم في Figma
      textTheme: const TextTheme(
        // عنوان شاشة البداية (Size 48, Bold, White)
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          height: 1.1,
        ),
        // العناوين الكبيرة (Size 24, Bold, White)
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        // النصوص الأساسية (Size 16, Bold/Regular, White)
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          shape: const StadiumBorder(), // حواف دائرية بالكامل
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}