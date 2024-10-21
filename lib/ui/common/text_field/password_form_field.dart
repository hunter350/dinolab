import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  PasswordFormField({
    super.key,
    required TextEditingController password,
    required bool obscureText,
    required String labelText
  })  : _password = password,
        _obscureText = obscureText,
        _labelText = labelText;

  final TextEditingController _password;
  bool _obscureText;
  final String _labelText;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password is missed or empty";
        } else if (value.length < 8) {
          return "Password is too short";
        } else if (value.length > 50) {
          return "Password is too long";
        }
        return null;
      },
      controller: widget._password,
      keyboardType: TextInputType.text,
      obscureText: widget._obscureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () {
            widget._obscureText = !widget._obscureText;
            setState(() {});
          },
        ),
        fillColor: Colors.white,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 10, color: Colors.deepPurpleAccent),
        ),
        //isDense: true,
        filled: true,
        labelText: widget._labelText,
      ),
    );
  }
}
