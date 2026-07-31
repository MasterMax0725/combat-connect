import 'package:flutter/material.dart';

import '../modules/communication/presentation/communication_page.dart';
import '../modules/commerce/presentation/commerce_page.dart';
import '../modules/dashboard/presentation/dashboard_page.dart';
import '../modules/identity/presentation/identity_page.dart';
import '../modules/organization/presentation/organization_page.dart';
import '../modules/reports/presentation/reports_page.dart';
import '../modules/settings/presentation/settings_page.dart';
import '../modules/training/presentation/training_page.dart';

class AppRouter {
  static const dashboard = '/';
  static const identity = '/identity';
  static const organization = '/organization';
  static const training = '/training';
  static const commerce = '/commerce';
  static const communication = '/communication';
  static const reports = '/reports';
  static const settings = '/settings';

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
          settings: routeSettings,
        );
      case identity:
        return MaterialPageRoute(
          builder: (_) => const IdentityPage(),
          settings: routeSettings,
        );
      case organization:
        return MaterialPageRoute(
          builder: (_) => const OrganizationPage(),
          settings: routeSettings,
        );
      case training:
        return MaterialPageRoute(
          builder: (_) => const TrainingPage(),
          settings: routeSettings,
        );
      case commerce:
        return MaterialPageRoute(
          builder: (_) => const CommercePage(),
          settings: routeSettings,
        );
      case communication:
        return MaterialPageRoute(
          builder: (_) => const CommunicationPage(),
          settings: routeSettings,
        );
      case reports:
        return MaterialPageRoute(
          builder: (_) => const ReportsPage(),
          settings: routeSettings,
        );
      case settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsPage(),
          settings: routeSettings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
          settings: routeSettings,
        );
    }
  }
}
