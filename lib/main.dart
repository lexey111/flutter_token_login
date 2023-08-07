import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:test_web/globals.dart';
import 'package:test_web/pages/bad_token.page.dart';
import 'package:test_web/pages/home.page.dart';
import 'package:test_web/pages/login.page.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/token',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/error',
      builder: (context, state) => const BadTokenPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        if (!myStore.hasToken) {
          myStore.user = 'ERROR';
          return const BadTokenPage();
        }
        return const HomePage();
      },
    ),
  ],
);

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
