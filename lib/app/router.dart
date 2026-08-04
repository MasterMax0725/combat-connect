import 'package:go_router/go_router.dart';

import '../features/attendance/presentation/pages/attendance_page.dart';
import '../features/billing/presentation/pages/billing_page.dart';
import '../features/bootstrap/presentation/pages/introduction_page.dart';
import '../features/dashboard/presentation/pages/dashboard_page.dart';
import '../features/organizations/presentation/pages/organization_page.dart';
import '../features/promotions/presentation/pages/promotions_page.dart';
import '../features/reports/presentation/pages/reports_page.dart';
import '../features/settings/presentation/pages/settings_page.dart';
import '../features/students/presentation/pages/students_page.dart';
import '../features/tournaments/presentation/pages/tournaments_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroductionPage(),
    ),

    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardPage(),
    ),

    GoRoute(
      path: '/students',
      builder: (context, state) => const StudentsPage(),
    ),

    GoRoute(
      path: '/attendance',
      builder: (context, state) => const AttendancePage(),
    ),

    GoRoute(
      path: '/promotions',
      builder: (context, state) => const PromotionsPage(),
    ),

    GoRoute(
      path: '/tournaments',
      builder: (context, state) => const TournamentsPage(),
    ),

    GoRoute(
      path: '/billing',
      builder: (context, state) => const BillingPage(),
    ),

    GoRoute(
      path: '/reports',
      builder: (context, state) => const ReportsPage(),
    ),

    GoRoute(
      path: '/organization',
      builder: (context, state) => const OrganizationPage(),
    ),

    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);