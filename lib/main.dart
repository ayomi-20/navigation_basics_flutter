import 'package:flutter/material.dart';
import 'main_app.dart';
import 'products_screen.dart';
import 'settings_screen.dart';
import 'detail_named_screen.dart';
import 'named_detail_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainApp(), // ← switched from HomeScreen to MainApp
      initialRoute: '/',
      routes: {
        '/products': (context) => ProductsScreen(),
        '/detail': (context) => DetailNamedScreen(),
        '/settings': (context) => SettingsScreen(),
        '/routes_named_arguments': (context) => const NamedDetailScreen(),
      },
    ),
  );
}
