
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
    required this.forgotButtonStyle,
  });

  final ButtonStyle forgotButtonStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: forgotButtonStyle,
        onPressed: () {},
        child: const Text('FORGOT PASSWORD',
            maxLines: 2,
            style: TextStyle(
                fontSize: 18, color: Colors.deepPurpleAccent)));
  }
}
