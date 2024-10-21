import 'package:dinolab/ui/pages/auth_info_page.dart';
import 'package:dinolab/ui/pages/home_page.dart';
import 'package:dinolab/ui/pages/log_in.dart';
import 'package:dinolab/ui/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return const LogIn();
          },
        ),
        GoRoute(
          path: '/sign_up',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUp();
          },
        ),
        GoRoute(
          path: '/auth_info',
          builder: (BuildContext context, GoRouterState state) {
            return const AuthInfoPage();
          },
        ),
      ],
    ),
  ],
);
