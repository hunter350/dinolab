import 'package:dinolab/ui/auth_info_page.dart';
import 'package:dinolab/ui/home_page.dart';
import 'package:dinolab/ui/sign_up.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/open_api/src/api.dart';
import '../domain/auth_state.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _login = TextEditingController();
  final _password = TextEditingController();
  final _validateKey = GlobalKey<FormState>();
  // final _loginKey = GlobalKey<FormState>();
  // final _passwordKey = GlobalKey<FormState>();
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
                  labelText: 'Login',
                ),
              ),
              SizedBox(
                height: _height,
              ),
              Text('Password'),
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
                obscureText: true,
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
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                        String password = _password.text;
                        authState = AuthState(email: login, password: password);
                        final open = Openapi();
                        open.setBasicAuth('John Doe', login, password);
                        context.go('/auth_info');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AuthInfoPage()));
                      }
                    },
                    child: const Text(
                      'LOG IN',
                      //maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                      style: forgotButtonStyle,
                      onPressed: () {},
                      child: const Text('FORGOT PASSWORD',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepPurpleAccent))),
                ],
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                style: signUpButtonStyle,
                onPressed: () {
                  context.go('/sign_up');
                },
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
