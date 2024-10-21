// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_login_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiLoginPost200Response extends ApiLoginPost200Response {
  @override
  final String? accessToken;

  factory _$ApiLoginPost200Response(
          [void Function(ApiLoginPost200ResponseBuilder)? updates]) =>
      (new ApiLoginPost200ResponseBuilder()..update(updates))._build();

  _$ApiLoginPost200Response._({this.accessToken}) : super._();

  @override
  ApiLoginPost200Response rebuild(
          void Function(ApiLoginPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiLoginPost200ResponseBuilder toBuilder() =>
      new ApiLoginPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiLoginPost200Response && accessToken == other.accessToken;
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
    return (newBuiltValueToStringHelper(r'ApiLoginPost200Response')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class ApiLoginPost200ResponseBuilder
    implements
        Builder<ApiLoginPost200Response, ApiLoginPost200ResponseBuilder> {
  _$ApiLoginPost200Response? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  ApiLoginPost200ResponseBuilder() {
    ApiLoginPost200Response._defaults(this);
  }

  ApiLoginPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiLoginPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiLoginPost200Response;
  }

  @override
  void update(void Function(ApiLoginPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiLoginPost200Response build() => _build();

  _$ApiLoginPost200Response _build() {
    final _$result =
        _$v ?? new _$ApiLoginPost200Response._(accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
