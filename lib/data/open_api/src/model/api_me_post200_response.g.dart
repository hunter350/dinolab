// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_me_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiMePost200Response extends ApiMePost200Response {
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? avatar;

  factory _$ApiMePost200Response(
          [void Function(ApiMePost200ResponseBuilder)? updates]) =>
      (new ApiMePost200ResponseBuilder()..update(updates))._build();

  _$ApiMePost200Response._({this.email, this.name, this.avatar}) : super._();

  @override
  ApiMePost200Response rebuild(
          void Function(ApiMePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiMePost200ResponseBuilder toBuilder() =>
      new ApiMePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiMePost200Response &&
        email == other.email &&
        name == other.name &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiMePost200Response')
          ..add('email', email)
          ..add('name', name)
          ..add('avatar', avatar))
        .toString();
  }
}

class ApiMePost200ResponseBuilder
    implements Builder<ApiMePost200Response, ApiMePost200ResponseBuilder> {
  _$ApiMePost200Response? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  ApiMePost200ResponseBuilder() {
    ApiMePost200Response._defaults(this);
  }

  ApiMePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiMePost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiMePost200Response;
  }

  @override
  void update(void Function(ApiMePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiMePost200Response build() => _build();

  _$ApiMePost200Response _build() {
    final _$result = _$v ??
        new _$ApiMePost200Response._(email: email, name: name, avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
