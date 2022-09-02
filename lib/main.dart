import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/pages/main_screen.dart';
import 'package:test_task/poviders/products_providers.dart';
import 'package:test_task/theme/themeApp.dart';

void main() {
  runApp(
    MultiProvider(
      providers: ProductProviders().providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.defaultTheme, home: MainScreen());
  }
}
