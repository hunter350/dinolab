import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpassword/gpassword.dart';
import '../../../domain/check_password_not_empty.dart';
import '../button_style.dart';

class GenerateButton extends ConsumerWidget {
  const GenerateButton({
    super.key,
    required this.signUpButtonStyle,
    required TextEditingController password,
  }) : _password = password;

  final ButtonStyle signUpButtonStyle;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: signUpButtonStyle,
      onPressed: () {
        GPassword gPassword = GPassword();
        List<String> passwords = gPassword.generateList();
        String password = gPassword.generate(passwordLength: 8);
        _password.text = password;
        ref.read(checkPasswordProvider.notifier).state = '';
      },
      child: const Text(
        'GENERATE PASSWORD',
        style: blackTextButton,
      ),
    );
  }
}