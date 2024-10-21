import 'package:flutter/material.dart';
import 'common/forgot_password.dart';
import 'common/login_form_field.dart';
import 'common/password_form_field.dart';
import 'common/sign_up_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _login = TextEditingController();
  final _password = TextEditingController();
  final _validateKey = GlobalKey<FormState>();
  bool obscureText = true;
  final double _height = 20.0;

  final ButtonStyle signUpButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.cyan.shade50,
    minimumSize: const Size(150, 50),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
  );

  @override
  void dispose() {
    _login.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ButtonStyle logInButtonStyle = OutlinedButton.styleFrom(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      minimumSize: Size(size.width * 0.5, 50),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
    final ButtonStyle forgotButtonStyle = OutlinedButton.styleFrom(
      //backgroundColor: Colors.deepPurpleAccent.shade100,
      maximumSize: Size(size.width * 0.33, 50),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          width: 160,
        ),
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade200),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
        child: Form(
          key: _validateKey,
          child: ListView(
            children: [
              const Text(
                'LOG IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Login, email or mobile number'),
              LoginFormField(login: _login),
              SizedBox(
                height: _height,
              ),
              const Text('Password'),
              PasswordFormField(
                password: _password,
                obscureText: obscureText,
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SignUpVar3(
                      logInButtonStyle: logInButtonStyle,
                      validateKey: _validateKey,
                      login: _login,
                      password: _password),
                  ForgotPassword(forgotButtonStyle: forgotButtonStyle),
                ],
              ),
              const SizedBox(height: 14),
              SignUpVar2(signUpButtonStyle: signUpButtonStyle),
            ],
          ),
        ),
      ),
    );
  }
}

