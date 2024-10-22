import 'package:flutter/material.dart';

class AppBarSignUp extends StatelessWidget {
  const AppBarSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Register as a Parent',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              )),
          Image.asset(
            'assets/logo.png',
            width: 140,
          ),
        ],
      ),
      iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade200),
      backgroundColor: Colors.white,
    );
  }
}
