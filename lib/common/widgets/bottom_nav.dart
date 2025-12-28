import 'package:flutter/material.dart';

class BottomNavItem {
  final String label;
  final IconData icon;
  final String route;

  const BottomNavItem({
    required this.label,
    required this.icon,
    required this.route,
  });
}

class HonestBottomNav extends StatelessWidget {
  final List<BottomNavItem> items;
  final String currentRoute;
  final ValueChanged<String> onNavigate;

  const HonestBottomNav({
    super.key,
    required this.items,
    required this.currentRoute,
    required this.onNavigate,
  });

  int _selectedIndex() {
    final index = items.indexWhere(
      (item) => currentRoute.startsWith(item.route),
    );
    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex(),
      onDestinationSelected: (index) {
        onNavigate(items[index].route);
      },
      destinations: items
          .map(
            (item) => NavigationDestination(
              icon: Icon(item.icon),
              label: item.label,
            ),
          )
          .toList(),
    );
  }
}
