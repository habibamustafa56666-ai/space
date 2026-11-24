import 'package:material_ui/material_ui.dart';
import 'core/app_theme.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space Explorer',
      theme: AppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}