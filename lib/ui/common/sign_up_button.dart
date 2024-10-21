import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.signUpButtonStyle,
  });

  final ButtonStyle signUpButtonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: signUpButtonStyle,
      onPressed: () {
        context.go('/sign_up');
      },
      child: const Text(
        'SIGN UP',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}