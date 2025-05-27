import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/custom_theme.dart';
import 'package:tortilleria_chaly/config/custom_theme_dark.dart';
import 'package:tortilleria_chaly/config/router.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      title: 'Tortilleria Chaly',
      theme: customTheme,
      darkTheme: customThemeDark,
    );
  }
}
