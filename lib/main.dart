import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'products_screen.dart';
import 'settings_screen.dart';
import 'detail_named_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/products': (context) => ProductsScreen(),
        '/detail': (context) => DetailNamedScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    ),
  );
}