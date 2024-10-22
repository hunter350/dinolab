//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
//import 'package:dinolab/data/open_api/src/model/text.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_me_post401_response_errors_inner.g.dart';

/// ApiMePost401ResponseErrorsInner
///
/// Properties:
/// * [code]
/// * [description]
@BuiltValue()
abstract class ApiMePost401ResponseErrorsInner
    implements
        Built<ApiMePost401ResponseErrorsInner,
            ApiMePost401ResponseErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'code')
  int get code;

  @BuiltValueField(wireName: r'description')
  String get description;

  ApiMePost401ResponseErrorsInner._();

  factory ApiMePost401ResponseErrorsInner(
          [void updates(ApiMePost401ResponseErrorsInnerBuilder b)]) =
      _$ApiMePost401ResponseErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiMePost401ResponseErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiMePost401ResponseErrorsInner> get serializer =>
      _$ApiMePost401ResponseErrorsInnerSerializer();
}

class _$ApiMePost401ResponseErrorsInnerSerializer
    implements PrimitiveSerializer<ApiMePost401ResponseErrorsInner> {
  @override
  final Iterable<Type> types = const [
    ApiMePost401ResponseErrorsInner,
    _$ApiMePost401ResponseErrorsInner
  ];

  @override
  final String wireName = r'ApiMePost401ResponseErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiMePost401ResponseErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(int),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiMePost401ResponseErrorsInner object, {
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
    required ApiMePost401ResponseErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiMePost401ResponseErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiMePost401ResponseErrorsInnerBuilder();
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
