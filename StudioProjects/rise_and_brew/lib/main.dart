import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/HomePage.dart';
import 'screens/GalleryAccess.dart';
import 'screens/CameraAccess.dart';
import 'screens/WifiAccess.dart';
import 'screens/NotificationAccess.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rise & Brew',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/login',
      routes: {
        // Authentication
        '/login': (context) => const LogIn(isFirstTimeUser: true),
        '/signup': (context) => const SignUp(),

        // Main app
        '/home': (context) => const HomePage(),

        // Permission onboarding screens (for first-time users)
        '/gallery-access': (context) => const GalleryAccess(),
        '/camera-access': (context) => const CameraAccess(),
        '/wifi-access': (context) => const WifiAccess(),
        '/notification-access': (context) => const NotificationAccess(),
      },
    );
  }
}