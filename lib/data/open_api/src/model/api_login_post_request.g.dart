// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_login_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiLoginPostRequest extends ApiLoginPostRequest {
  @override
  final String? email;
  @override
  final String? password;

  factory _$ApiLoginPostRequest(
          [void Function(ApiLoginPostRequestBuilder)? updates]) =>
      (new ApiLoginPostRequestBuilder()..update(updates))._build();

  _$ApiLoginPostRequest._({this.email, this.password}) : super._();

  @override
  ApiLoginPostRequest rebuild(
          void Function(ApiLoginPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiLoginPostRequestBuilder toBuilder() =>
      new ApiLoginPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiLoginPostRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiLoginPostRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class ApiLoginPostRequestBuilder
    implements Builder<ApiLoginPostRequest, ApiLoginPostRequestBuilder> {
  _$ApiLoginPostRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ApiLoginPostRequestBuilder() {
    ApiLoginPostRequest._defaults(this);
  }

  ApiLoginPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiLoginPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiLoginPostRequest;
  }

  @override
  void update(void Function(ApiLoginPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiLoginPostRequest build() => _build();

  _$ApiLoginPostRequest _build() {
    final _$result =
        _$v ?? new _$ApiLoginPostRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
