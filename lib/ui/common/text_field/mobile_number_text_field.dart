import 'package:flutter/material.dart';

class MobileNumberTextField extends StatelessWidget {
  const MobileNumberTextField({
    super.key,
    required TextEditingController mobileNumber,
  }) : _mobileNumber = mobileNumber;

  final TextEditingController _mobileNumber;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 15,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Input";
        } else if (value.length < 8) {
          return "Input";
        }
        return null;
      },
      controller: _mobileNumber,
      keyboardType: TextInputType.phone,
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
        labelText: 'Mobile number',
      ),
    );
  }
}