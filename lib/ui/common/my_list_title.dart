import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final String title;

  const MyListTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          )),
      onTap: () {},
    );
  }
}
