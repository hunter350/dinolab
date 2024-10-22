//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_login_post_request.g.dart';

/// ApiLoginPostRequest
///
/// Properties:
/// * [email]
/// * [password]
@BuiltValue()
abstract class ApiLoginPostRequest
    implements Built<ApiLoginPostRequest, ApiLoginPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'password')
  String? get password;

  ApiLoginPostRequest._();

  factory ApiLoginPostRequest([void updates(ApiLoginPostRequestBuilder b)]) =
      _$ApiLoginPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiLoginPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiLoginPostRequest> get serializer =>
      _$ApiLoginPostRequestSerializer();
}

class _$ApiLoginPostRequestSerializer
    implements PrimitiveSerializer<ApiLoginPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiLoginPostRequest,
    _$ApiLoginPostRequest
  ];

  @override
  final String wireName = r'ApiLoginPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiLoginPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiLoginPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiLoginPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiLoginPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiLoginPostRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
