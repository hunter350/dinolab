import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    super.key,
    required TextEditingController login,
  }) : _login = login;

  final TextEditingController _login;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email is missed or empty";
        } else if (value.length > 50) {
          return "Email is too long";
        } else if (!value.contains('@') || !value.contains('.')) {
          return "Email isn't valid";
        }
        return null;
      },
      controller: _login,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide:
          BorderSide(width: 10, color: Colors.deepPurpleAccent),
        ),
        filled: true,
        labelText: 'Login',
      ),
    );
  }
}
