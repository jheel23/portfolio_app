import 'package:flutter/material.dart';
import 'package:yoliday_assignment_app/routes/routes_config.dart';
import 'package:yoliday_assignment_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Yoliday Assignment App',
      theme: AppTheme.instance.lightTheme,
      routerConfig: AppRoutes.router,
    );
  }
}
