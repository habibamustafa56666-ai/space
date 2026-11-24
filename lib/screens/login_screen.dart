import 'package:material_ui/material_ui.dart';
import '../core/app_assets.dart';
import '../core/app_theme.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // 1. صورة الشاشة كاملة في الخلفية
          Positioned.fill(
            child: Image.asset(
              AppAssets.introPlanet,
              fit: BoxFit.fill,
            ),
          ),

          // 2. زر Explore فوق مكان الزر في أسفل الشاشة
          Positioned(
            bottom: 19,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
                child: const SizedBox.expand(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}