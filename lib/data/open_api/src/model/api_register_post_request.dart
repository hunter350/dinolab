//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_register_post_request.g.dart';

/// ApiRegisterPostRequest
///
/// Properties:
/// * [name] - Your name
/// * [email] - Your e-mail
/// * [password] - Your password
@BuiltValue()
abstract class ApiRegisterPostRequest implements Built<ApiRegisterPostRequest, ApiRegisterPostRequestBuilder> {
  /// Your name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Your e-mail
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Your password
  @BuiltValueField(wireName: r'password')
  String get password;

  ApiRegisterPostRequest._();

  factory ApiRegisterPostRequest([void updates(ApiRegisterPostRequestBuilder b)]) = _$ApiRegisterPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiRegisterPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiRegisterPostRequest> get serializer => _$ApiRegisterPostRequestSerializer();
}

class _$ApiRegisterPostRequestSerializer implements PrimitiveSerializer<ApiRegisterPostRequest> {
  @override
  final Iterable<Type> types = const [ApiRegisterPostRequest, _$ApiRegisterPostRequest];

  @override
  final String wireName = r'ApiRegisterPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiRegisterPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiRegisterPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiRegisterPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
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
  ApiRegisterPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiRegisterPostRequestBuilder();
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

