import 'package:flutter/material.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Image.asset(
        'assets/logo.png',
        width: 120,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade200),
    );
  }
}
