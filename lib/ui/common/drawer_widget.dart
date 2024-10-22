import 'package:flutter/material.dart';
import 'button_style.dart';
import 'buttons/log_in_button.dart';
import 'my_list_title.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Image.asset(
                'assets/logo.png',
                alignment: Alignment.centerLeft,
                width: 120,
              ),
            ),
            const MyListTitle(title: 'About us'),
            const MyListTitle(title: 'Coding'),
            const MyListTitle(title: 'Offerings'),
            const MyListTitle(title: 'Careers'),
            const MyListTitle(title: 'Contact us'),
            Spacer(),
            ElevatedButton(
              style: signUpButtonStyleDrawer,
              onPressed: () {},
              child: const Text(
                'FREE PRODUCT DEMO',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            LogInButton(logInButtonStyle: logInButtonStyleDrawer),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
