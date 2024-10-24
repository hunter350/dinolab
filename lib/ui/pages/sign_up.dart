import 'package:dinolab/ui/common/button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../domain/check_password_not_empty.dart';
import '../common/app_bar/app_bar_sign_up.dart';
import '../common/buttons/generate_button.dart';
import '../common/buttons/log_in_button.dart';
import '../common/text_field/mobile_number_text_field.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final _login = TextEditingController();
  final _mobileNumber = TextEditingController(text: '+91-');
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _validateKey = GlobalKey<FormState>();
  bool obscureText = true;
  final double _height = 20.0;

  final ButtonStyle logInButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.deepPurpleAccent.shade100,
    minimumSize: const Size(250, 50),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
  );
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
    _mobileNumber.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checkPassword = ref.watch(checkPasswordProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56), child: AppBarSignUp()),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
        child: Form(
          key: _validateKey,
          child: ListView(
            children: [
              const Text('Email', style: TextStyle(fontSize: 16)),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is missed or empty";
                  } else if (value.length > 50) {
                    return "Email is too long";
                  } else if (!value.contains('@') || !value.contains('.')) {
                    return "Email isn't valid";
                  }
                  return null;
                },
                controller: _login,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(width: 10, color: Colors.deepPurpleAccent),
                  ),
                  filled: true,
                  labelText: 'Email',
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Your future login',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(height: _height),
              const Text('Mobile number'),
              MobileNumberTextField(mobileNumber: _mobileNumber),
              // SizedBox(height: _height),
              const Text('Password'),
              TextFormField(
                onChanged: (value) {
                  if (_password.text == '') {
                    ref.read(checkPasswordProvider.notifier).state = '';
                  } else {
                    ref.read(checkPasswordProvider.notifier).state = value;
                  }
                },
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
                obscureText: obscureText,
                keyboardType: TextInputType.text,
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
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Use letters, numbers and special characters',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              (checkPassword == '')
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value != _password.text) {
                            return "passwords don't match";
                          }
                          if (value == null || value.isEmpty) {
                            return "Password is missed or empty";
                          } else if (value.length < 8) {
                            return "Password is too short";
                          } else if (value.length > 50) {
                            return "Password is too long";
                          }
                          return null;
                        },
                        controller: _confirmPassword,
                        obscureText: obscureText,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined),
                            onPressed: () {
                              obscureText = !obscureText;
                              setState(() {});
                            },
                          ),
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                width: 10, color: Colors.deepPurpleAccent),
                          ),
                          //isDense: true,
                          filled: true,
                          labelText: 'Confirm password',
                        ),
                      ),
                    ),
              const SizedBox(height: 14),
              GenerateButton(
                  signUpButtonStyle: signUpButtonStyle, password: _password),
              const SizedBox(height: 14),
              LoginButtonSignUp(
                  logInButtonStyle: logInButtonStyle,
                  validateKey: _validateKey,
                  login: _login,
                  mobileNumber: _mobileNumber,
                  password: _password),
              const SizedBox(height: 14),
              TextButton(
                  onPressed: () {
                    context.go('/login');
                  },
                  child:
                      Text('ALREADY HAVE AN ACCOUNT?', style: onlyTextButton)),
            ],
          ),
        ),
      ),
    );
  }
}
