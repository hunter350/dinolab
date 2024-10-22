import 'package:flutter/material.dart';

class AppBarLogIn extends StatelessWidget {
  const AppBarLogIn({
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
    );
  }
}

