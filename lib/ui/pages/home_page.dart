import 'package:flutter/material.dart';
import '../common/button_style.dart';
import '../common/buttons/log_in_button.dart';
import '../common/buttons/sign_up_button.dart';
import '../common/my_list_title.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});



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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          width: 120,
        ),
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade200),
      ),
      drawer: Drawer(
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
      ),
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