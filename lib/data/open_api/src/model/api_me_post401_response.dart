//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dinolab/data/open_api/src/model/api_me_post401_response_errors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_me_post401_response.g.dart';

/// ApiMePost401Response
///
/// Properties:
/// * [errors]
@BuiltValue()
abstract class ApiMePost401Response
    implements Built<ApiMePost401Response, ApiMePost401ResponseBuilder> {
  @BuiltValueField(wireName: r'errors')
  BuiltList<ApiMePost401ResponseErrorsInner> get errors;

  ApiMePost401Response._();

  factory ApiMePost401Response([void updates(ApiMePost401ResponseBuilder b)]) =
      _$ApiMePost401Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiMePost401ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiMePost401Response> get serializer =>
      _$ApiMePost401ResponseSerializer();
}

class _$ApiMePost401ResponseSerializer
    implements PrimitiveSerializer<ApiMePost401Response> {
  @override
  final Iterable<Type> types = const [
    ApiMePost401Response,
    _$ApiMePost401Response
  ];

  @override
  final String wireName = r'ApiMePost401Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiMePost401Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(
          BuiltList, [FullType(ApiMePost401ResponseErrorsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiMePost401Response object, {
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
    required ApiMePost401ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ApiMePost401ResponseErrorsInner)]),
          ) as BuiltList<ApiMePost401ResponseErrorsInner>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiMePost401Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiMePost401ResponseBuilder();
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
