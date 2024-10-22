import 'package:flutter/material.dart';
import '../common/app_bar/app_bat_home_page.dart';
import '../common/buttons/log_in_button.dart';
import '../common/buttons/sign_up_button.dart';
import '../common/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ButtonStyle logInButtonStyle = OutlinedButton.styleFrom(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      minimumSize: Size(size.width * 0.4, 50),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
    final ButtonStyle signUpButtonStyle = OutlinedButton.styleFrom(
      backgroundColor: Colors.cyan.shade50,
      minimumSize: Size(size.width * 0.4, 50),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: AppBarHomePage()),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                // height: 300,
                // width: 300,
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset(
                'assets/home_screen.png',
                // height: 300,
                // width: 300,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Our online courses for 1st–8th graders help '
                'children learn maths and coding faster.'
                ' And we make it fun!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LogInButton(logInButtonStyle: logInButtonStyle),
                  SignUpButton(signUpButtonStyle: signUpButtonStyle),
                ],
              ),
            ],
          ),
        ),
      ),
      //),
    );
  }
}
