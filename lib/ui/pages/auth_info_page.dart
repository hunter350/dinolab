import 'package:dinolab/domain/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthInfoPage extends StatelessWidget {
  const AuthInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: AppBarAuthPage()),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://robohash.org/atconsequuntursaepe.png?size=300x300'),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'John Doe',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              '${authState.email}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
