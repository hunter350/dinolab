import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/open_api/src/api.dart';
import '../domain/auth_state.dart';
import 'common/forgot_password.dart';
import 'common/login_form_field.dart';
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
              Text(
                'LOG IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Login, email or mobile number'),
              LoginFormField(login: _login),
              SizedBox(
                height: _height,
              ),
              const Text('Password'),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is missed or empty";
                  } else if (value.length < 8) {
                    return "Password is too short";
                  } else if (value.length > 50) {
                    return "Password is too long";
                  }
                  return null;
                },
                controller: _password,
                keyboardType: TextInputType.text,
                obscureText: obscureText,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      obscureText = !obscureText;
                      setState(() {});
                    },
                  ),
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(width: 10, color: Colors.deepPurpleAccent),
                  ),
                  //isDense: true,
                  filled: true,
                  labelText: 'Password',
                ),
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

