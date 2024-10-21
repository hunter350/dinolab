import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/open_api/src/api.dart';
import '../../domain/auth_state.dart';
import 'button_style.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required this.logInButtonStyle,
  });

  final ButtonStyle logInButtonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: logInButtonStyle,
      onPressed: () {
        context.go('/login');
      },
      child: const Text(
        'LOG IN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class LoginButtonSignUp extends StatelessWidget {
  const LoginButtonSignUp({
    super.key,
    required this.logInButtonStyle,
    required GlobalKey<FormState> validateKey,
    required TextEditingController login,
    required TextEditingController mobileNumber,
    required TextEditingController password,
  })  : _validateKey = validateKey,
        _login = login,
        _mobileNumber = mobileNumber,
        _password = password;

  final ButtonStyle logInButtonStyle;
  final GlobalKey<FormState> _validateKey;
  final TextEditingController _login;
  final TextEditingController _mobileNumber;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
