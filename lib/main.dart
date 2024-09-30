import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'screens/home_screen.dart';
import 'screens/calculator_screen.dart';
import 'screens/screen_histroy.dart';
import 'screens/about_screen.dart';
import 'screens/setting_screen.dart';

void main() {
  runApp(WageApp());
}

class WageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wage Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/calculator': (context) => WageCalculatorScreen(),
        '/history': (context) => WageHistoryScreen(),
        '/settings': (context) => SettingsScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
