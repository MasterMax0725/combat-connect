class AppConfig {
  const AppConfig({
    required this.appName,
    required this.apiBaseUrl,
  });

  final String appName;
  final String apiBaseUrl;

  static const current = AppConfig(
    appName: 'Combat Connect',
    apiBaseUrl: 'https://api.example.com',
  );
}
