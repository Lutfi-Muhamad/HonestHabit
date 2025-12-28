import 'package:flutter/material.dart';
import 'core/config/app_theme.dart';
import 'core/routing/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const HonestHabitApp());
}

class HonestHabitApp extends StatelessWidget {
  const HonestHabitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Honest Habit',
      debugShowCheckedModeBanner: false,

      // Theme global
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      // Routing pakai GoRouter
      routerConfig: AppRouter.router,
    );
  }
}
