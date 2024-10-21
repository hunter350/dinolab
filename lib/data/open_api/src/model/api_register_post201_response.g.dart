// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_register_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiRegisterPost201Response extends ApiRegisterPost201Response {
  @override
  final String accessToken;

  factory _$ApiRegisterPost201Response(
          [void Function(ApiRegisterPost201ResponseBuilder)? updates]) =>
      (new ApiRegisterPost201ResponseBuilder()..update(updates))._build();

  _$ApiRegisterPost201Response._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'ApiRegisterPost201Response', 'accessToken');
  }

  @override
  ApiRegisterPost201Response rebuild(
          void Function(ApiRegisterPost201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiRegisterPost201ResponseBuilder toBuilder() =>
      new ApiRegisterPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiRegisterPost201Response &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiRegisterPost201Response')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class ApiRegisterPost201ResponseBuilder
    implements
        Builder<ApiRegisterPost201Response, ApiRegisterPost201ResponseBuilder> {
  _$ApiRegisterPost201Response? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  ApiRegisterPost201ResponseBuilder() {
    ApiRegisterPost201Response._defaults(this);
  }

  ApiRegisterPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiRegisterPost201Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiRegisterPost201Response;
  }

  @override
  void update(void Function(ApiRegisterPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiRegisterPost201Response build() => _build();

  _$ApiRegisterPost201Response _build() {
    final _$result = _$v ??
        new _$ApiRegisterPost201Response._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'ApiRegisterPost201Response', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
