//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
//import 'package:dinolab/data/open_api/src/model/string.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_register_post201_response.g.dart';

/// ApiRegisterPost201Response
///
/// Properties:
/// * [accessToken] - Your access token
@BuiltValue()
abstract class ApiRegisterPost201Response
    implements
        Built<ApiRegisterPost201Response, ApiRegisterPost201ResponseBuilder> {
  /// Your access token
  @BuiltValueField(wireName: r'access_token')
  String get accessToken;

  ApiRegisterPost201Response._();

  factory ApiRegisterPost201Response(
          [void updates(ApiRegisterPost201ResponseBuilder b)]) =
      _$ApiRegisterPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiRegisterPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiRegisterPost201Response> get serializer =>
      _$ApiRegisterPost201ResponseSerializer();
}

class _$ApiRegisterPost201ResponseSerializer
    implements PrimitiveSerializer<ApiRegisterPost201Response> {
  @override
  final Iterable<Type> types = const [
    ApiRegisterPost201Response,
    _$ApiRegisterPost201Response
  ];

  @override
  final String wireName = r'ApiRegisterPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiRegisterPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'access_token';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiRegisterPost201Response object, {
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
    required ApiRegisterPost201ResponseBuilder result,
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
  ApiRegisterPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiRegisterPost201ResponseBuilder();
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
