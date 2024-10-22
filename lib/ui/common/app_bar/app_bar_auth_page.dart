import 'package:dinolab/domain/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarAuthPage extends StatelessWidget {
  const AppBarAuthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset(
        'assets/logo.png',
        width: 160,
      ),
      iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade200),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () {
              authState = AuthState();
              context.go('/');
            },
            icon: const Icon(Icons.exit_to_app)),
      ],
    );
  }
}