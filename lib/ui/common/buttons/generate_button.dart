import 'package:flutter/material.dart';
import 'package:gpassword/gpassword.dart';

import '../button_style.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({
    super.key,
    required this.signUpButtonStyle,
    required TextEditingController password,
  }) : _password = password;

  final ButtonStyle signUpButtonStyle;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: signUpButtonStyle,
      onPressed: () {
        GPassword gPassword = GPassword();
        List<String> passwords = gPassword.generateList();
        String password = gPassword.generate(passwordLength: 8);
        _password.text = password;
      },
      child: const Text(
        'GENERATE PASSWORD',
        style: blackTextButton,
      ),
    );
  }
}