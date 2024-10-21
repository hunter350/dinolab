// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_register_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiRegisterPostRequest extends ApiRegisterPostRequest {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  factory _$ApiRegisterPostRequest(
          [void Function(ApiRegisterPostRequestBuilder)? updates]) =>
      (new ApiRegisterPostRequestBuilder()..update(updates))._build();

  _$ApiRegisterPostRequest._(
      {required this.name, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ApiRegisterPostRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'ApiRegisterPostRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'ApiRegisterPostRequest', 'password');
  }

  @override
  ApiRegisterPostRequest rebuild(
          void Function(ApiRegisterPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiRegisterPostRequestBuilder toBuilder() =>
      new ApiRegisterPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiRegisterPostRequest &&
        name == other.name &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiRegisterPostRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class ApiRegisterPostRequestBuilder
    implements Builder<ApiRegisterPostRequest, ApiRegisterPostRequestBuilder> {
  _$ApiRegisterPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ApiRegisterPostRequestBuilder() {
    ApiRegisterPostRequest._defaults(this);
  }

  ApiRegisterPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiRegisterPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiRegisterPostRequest;
  }

  @override
  void update(void Function(ApiRegisterPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiRegisterPostRequest build() => _build();

  _$ApiRegisterPostRequest _build() {
    final _$result = _$v ??
        new _$ApiRegisterPostRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ApiRegisterPostRequest', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ApiRegisterPostRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'ApiRegisterPostRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
