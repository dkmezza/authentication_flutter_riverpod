import 'package:auth_client_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'features/onboarding/presentation/onboarding_screen.dart';
import 'features/onboarding/presentation/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
        GoRoute(
          path: '/onboarding',
          builder: (context, state) => OnboardingScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        // Add more routes here (e.g., register, profile) as needed later
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      routerConfig: _router,
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
    );
  }
}
