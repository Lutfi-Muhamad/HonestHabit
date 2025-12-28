import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:honesthabit/common/widgets/bottom_nav.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  static const navItems = [
    BottomNavItem(label: 'Dashboard', icon: Icons.home, route: '/'),
    BottomNavItem(
      label: 'Habits',
      icon: Icons.check_circle_outline,
      route: '/habits',
    ),
    BottomNavItem(label: 'Reports', icon: Icons.bar_chart, route: '/reports'),
  ];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    return Scaffold(
      body: const Center(
        child: Text('Reports Page', style: TextStyle(fontSize: 20)),
      ),
      bottomNavigationBar: HonestBottomNav(
        items: navItems,
        currentRoute: location,
        onNavigate: (route) => context.go(route),
      ),
    );
  }
}
