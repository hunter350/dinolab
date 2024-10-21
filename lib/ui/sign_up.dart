import 'package:dinolab/ui/common/button_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/open_api/src/api.dart';
import '../domain/auth_state.dart';
import '../domain/check_password_not_empty.dart';
import 'auth_info_page.dart';
import 'log_in.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final _login = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _validateKey = GlobalKey<FormState>();
  // final _loginKey = GlobalKey<FormState>();
  // final _mobileNumberKey = GlobalKey<FormState>();
  // final _passwordKey = GlobalKey<FormState>();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checkPassword = ref.watch(checkPasswordProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //leading: Text('Register as a Parent'),
        //centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Register as a Parent',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  //fontWeight: FontWeight.w600,
                  //letterSpacing: 1.2
                )),
            Image.asset(
              'assets/logo.png',
              width: 140,
            ),
          ],
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
              Text('Email', style: TextStyle(fontSize: 16)),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is missed or empty";
                  } else if (value.length > 50) {
                    return "Email is too long";
                  }
                  return null;
                },
                controller: _login,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  //focusColor: Colors.deepPurpleAccent,
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(width: 3, color: Colors.deepPurpleAccent),
                  // ),

                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(width: 10, color: Colors.deepPurpleAccent),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(width: 3, color: Colors.deepPurpleAccent),
                  // ),
                  //isDense: true,
                  filled: true,
                  labelText: 'Email',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Your future login',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: _height,
              ),
              Text('Mobile number'),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Input";
                  } else if (value.length < 8) {
                    return "Input";
                  }
                  return null;
                },
                controller: _mobileNumber,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(width: 10, color: Colors.deepPurpleAccent),
                  ),
                  //isDense: true,
                  filled: true,
                  labelText: 'Mobile number',
                ),
              ),
              SizedBox(
                height: _height,
              ),
              Text('Password'),
              TextFormField(
                onChanged: (value) {
                  ref.read(checkPasswordProvider.notifier).state = value;
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
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(width: 10, color: Colors.deepPurpleAccent),
                  ),
                  //isDense: true,
                  filled: true,
                  labelText: 'Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Use letters, numbers and special characters',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              (checkPassword == '')
                  ? Container()
                  : TextFormField(
                      validator: (value) {
                        if (value != _confirmPassword) {
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
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              width: 10, color: Colors.deepPurpleAccent),
                        ),
                        //isDense: true,
                        filled: true,
                        labelText: 'Confirm password',
                      ),
                    ),
              const SizedBox(height: 14),
              ElevatedButton(
                style: signUpButtonStyle,
                onPressed: () {
                  if (_validateKey.currentState!.validate()) {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => LogIn()
                    //     ));
                  }
                },
                child: const Text(
                  'GENERATE PASSWORD',
                  style: blackTextButton,
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                style: logInButtonStyle,
                onPressed: () async {
                  if (_validateKey.currentState!.validate()) {
                    //Пример использования
                    // final open = Openapi();
                    // open.setBasicAuth('John Doe', 'user@example.com', '9876556789');
                    //final request =  await open.getDefaultApi().apiMeGet();
                    // final request =  await open.getBasicAuth('John Doe', 'user@example.com', '9876556789');
                    //  final request =  await open.getDefaultApi().apiMeGet(
                    //      : {'name' : 'John Doe', 'email': 'user@example.com', 'password':'9876556789'});
                    // final dio = Dio();
                    // dio.options.baseUrl =
                    //     'https://testwork.shot.dinolab.com';
                    // final options = BaseOptions(
                    //   baseUrl: 'https://testwork.shot.dinolab.com',
                    //   // connectTimeout: Duration(seconds: 5),
                    //   // receiveTimeout: Duration(seconds: 3),
                    // );
                    // final anotherDio = Dio(options);
                    // final response = await anotherDio.get(
                    //   '/api/me',
                    //   queryParameters: {
                    //     'name': 'John Doe',
                    //     'email': 'user@example.com'
                    //   },
                    // );
                    // print(response.data.toString());
                    String login = _login.text;
                    String mobileNumber = _mobileNumber.text;
                    String password = _password.text;
                    authState = AuthState(email: login, password: password);
                    final open = Openapi();
                    open.setBasicAuth('John Doe', login, password);
                    context.go('/auth_info');
                  }
                },
                child: const Text('NEXT', style: whiteTextButton),
              ),
              const SizedBox(height: 14),
              TextButton(
                  //style: forgotButtonStyle,
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
