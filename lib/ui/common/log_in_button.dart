import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required this.logInButtonStyle,
  });

  final ButtonStyle logInButtonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: logInButtonStyle,
      onPressed: () {
        context.go('/login');
      },
      child: const Text(
        'LOG IN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
