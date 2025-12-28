import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Pages
import 'package:honesthabit/features/auth/pages/login_page.dart';
import 'package:honesthabit/features/dashboard/dashboard_page.dart';
import 'package:honesthabit/features/reports/pages/reports_page.dart';
import 'package:honesthabit/features/habits/habits_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',

    debugLogDiagnostics: true,

    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),

      GoRoute(
        path: '/',
        name: 'dashboard',
        builder: (context, state) => const DashboardPage(),
      ),

      GoRoute(
        path: '/habits',
        name: 'habits',
        builder: (context, state) => const HabitsPage(),
      ),

      GoRoute(
        path: '/reports',
        name: 'reports',
        builder: (context, state) => const ReportsPage(),
      ),
    ],

    errorBuilder: (context, state) {
      return const Scaffold(
        body: Center(
          child: Text(
            'Halaman tidak ditemukan',
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    },
  );
}
