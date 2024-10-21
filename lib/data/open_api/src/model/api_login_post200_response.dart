//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_login_post200_response.g.dart';

/// ApiLoginPost200Response
///
/// Properties:
/// * [accessToken] 
@BuiltValue()
abstract class ApiLoginPost200Response implements Built<ApiLoginPost200Response, ApiLoginPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'access_token')
  String? get accessToken;

  ApiLoginPost200Response._();

  factory ApiLoginPost200Response([void updates(ApiLoginPost200ResponseBuilder b)]) = _$ApiLoginPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiLoginPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiLoginPost200Response> get serializer => _$ApiLoginPost200ResponseSerializer();
}

class _$ApiLoginPost200ResponseSerializer implements PrimitiveSerializer<ApiLoginPost200Response> {
  @override
  final Iterable<Type> types = const [ApiLoginPost200Response, _$ApiLoginPost200Response];

  @override
  final String wireName = r'ApiLoginPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiLoginPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiLoginPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiLoginPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiLoginPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiLoginPost200ResponseBuilder();
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

