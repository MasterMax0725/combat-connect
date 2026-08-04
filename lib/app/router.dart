import 'package:go_router/go_router.dart';

import 'package:combat_connect/app/app_routes.dart';

import 'package:combat_connect/features/bootstrap/presentation/pages/introduction_page.dart';
import 'package:combat_connect/features/authentication/presentation/pages/login_page.dart';

import 'package:combat_connect/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:combat_connect/features/students/presentation/pages/students_page.dart';
import 'package:combat_connect/features/attendance/presentation/pages/attendance_page.dart';
import 'package:combat_connect/features/promotions/presentation/pages/promotions_page.dart';
import 'package:combat_connect/features/tournaments/presentation/pages/tournaments_page.dart';
import 'package:combat_connect/features/billing/presentation/pages/billing_page.dart';
import 'package:combat_connect/features/reports/presentation/pages/reports_page.dart';
import 'package:combat_connect/features/organizations/presentation/pages/organization_page.dart';
import 'package:combat_connect/features/settings/presentation/pages/settings_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.intro,
  routes: [
    GoRoute(
      path: AppRoutes.intro,
      name: AppRoutes.introName,
      builder: (context, state) => const IntroductionPage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.loginName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.dashboard,
      name: AppRoutes.dashboardName,
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: AppRoutes.students,
      name: AppRoutes.studentsName,
      builder: (context, state) => const StudentsPage(),
    ),
    GoRoute(
      path: AppRoutes.attendance,
      name: AppRoutes.attendanceName,
      builder: (context, state) => const AttendancePage(),
    ),
    GoRoute(
      path: AppRoutes.promotions,
      name: AppRoutes.promotionsName,
      builder: (context, state) => const PromotionsPage(),
    ),
    GoRoute(
      path: AppRoutes.tournaments,
      name: AppRoutes.tournamentsName,
      builder: (context, state) => const TournamentsPage(),
    ),
    GoRoute(
      path: AppRoutes.billing,
      name: AppRoutes.billingName,
      builder: (context, state) => const BillingPage(),
    ),
    GoRoute(
      path: AppRoutes.reports,
      name: AppRoutes.reportsName,
      builder: (context, state) => const ReportsPage(),
    ),
    GoRoute(
      path: AppRoutes.organization,
      name: AppRoutes.organizationName,
      builder: (context, state) => const OrganizationPage(),
    ),
    GoRoute(
      path: AppRoutes.settings,
      name: AppRoutes.settingsName,
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);