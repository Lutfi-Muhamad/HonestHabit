import 'package:flutter/material.dart';
import 'package:honesthabit/common/widgets/bottom_nav.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const navItems = [
    BottomNavItem(
      label: 'Dashboard',
      icon: Icons.home,
      route: '/',
    ),
    BottomNavItem(
      label: 'Habits',
      icon: Icons.check_circle_outline,
      route: '/habits',
    ),
    BottomNavItem(
      label: 'Reports',
      icon: Icons.bar_chart,
      route: '/reports',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Dashboard Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: HonestBottomNav(
        items: navItems,
        currentRoute: '/', // sementara, stub
        onNavigate: (route) {
          debugPrint('Navigate to $route');
        },
      ),
    );
  }
}
