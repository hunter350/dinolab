// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_me_post401_response_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiMePost401ResponseErrorsInner
    extends ApiMePost401ResponseErrorsInner {
  @override
  final int code;
  @override
  final String description;

  factory _$ApiMePost401ResponseErrorsInner(
          [void Function(ApiMePost401ResponseErrorsInnerBuilder)? updates]) =>
      (new ApiMePost401ResponseErrorsInnerBuilder()..update(updates))._build();

  _$ApiMePost401ResponseErrorsInner._(
      {required this.code, required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        code, r'ApiMePost401ResponseErrorsInner', 'code');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ApiMePost401ResponseErrorsInner', 'description');
  }

  @override
  ApiMePost401ResponseErrorsInner rebuild(
          void Function(ApiMePost401ResponseErrorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiMePost401ResponseErrorsInnerBuilder toBuilder() =>
      new ApiMePost401ResponseErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiMePost401ResponseErrorsInner &&
        code == other.code &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiMePost401ResponseErrorsInner')
          ..add('code', code)
          ..add('description', description))
        .toString();
  }
}

class ApiMePost401ResponseErrorsInnerBuilder
    implements
        Builder<ApiMePost401ResponseErrorsInner,
            ApiMePost401ResponseErrorsInnerBuilder> {
  _$ApiMePost401ResponseErrorsInner? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ApiMePost401ResponseErrorsInnerBuilder() {
    ApiMePost401ResponseErrorsInner._defaults(this);
  }

  ApiMePost401ResponseErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiMePost401ResponseErrorsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiMePost401ResponseErrorsInner;
  }

  @override
  void update(void Function(ApiMePost401ResponseErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiMePost401ResponseErrorsInner build() => _build();

  _$ApiMePost401ResponseErrorsInner _build() {
    final _$result = _$v ??
        new _$ApiMePost401ResponseErrorsInner._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ApiMePost401ResponseErrorsInner', 'code'),
            description: BuiltValueNullFieldError.checkNotNull(description,
                r'ApiMePost401ResponseErrorsInner', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
