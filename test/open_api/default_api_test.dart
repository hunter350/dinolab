import 'package:dinolab/data/open_api/src/api.dart';
import 'package:dinolab/data/open_api/src/api/default_api.dart';
import 'package:flutter_test/flutter_test.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // POST /api/login
    //
    //Future<ApiLoginPost200Response> apiLoginPost({ ApiLoginPostRequest apiLoginPostRequest }) async
    test('test apiLoginPost', () async {
      // TODO
    });

    // GET /api/me
    //
    //Future<ApiMePost200Response> apiMePost() async
    test('test apiMePost', () async {
      // TODO
    });

    // POST /api/register
    //
    //Future<ApiRegisterPost201Response> apiRegisterPost({ ApiRegisterPostRequest apiRegisterPostRequest }) async
    test('test apiRegisterPost', () async {
      // TODO
    });

  });
}
