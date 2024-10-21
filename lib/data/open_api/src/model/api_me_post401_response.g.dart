// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_me_post401_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiMePost401Response extends ApiMePost401Response {
  @override
  final BuiltList<ApiMePost401ResponseErrorsInner> errors;

  factory _$ApiMePost401Response(
          [void Function(ApiMePost401ResponseBuilder)? updates]) =>
      (new ApiMePost401ResponseBuilder()..update(updates))._build();

  _$ApiMePost401Response._({required this.errors}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        errors, r'ApiMePost401Response', 'errors');
  }

  @override
  ApiMePost401Response rebuild(
          void Function(ApiMePost401ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiMePost401ResponseBuilder toBuilder() =>
      new ApiMePost401ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiMePost401Response && errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiMePost401Response')
          ..add('errors', errors))
        .toString();
  }
}

class ApiMePost401ResponseBuilder
    implements Builder<ApiMePost401Response, ApiMePost401ResponseBuilder> {
  _$ApiMePost401Response? _$v;

  ListBuilder<ApiMePost401ResponseErrorsInner>? _errors;
  ListBuilder<ApiMePost401ResponseErrorsInner> get errors =>
      _$this._errors ??= new ListBuilder<ApiMePost401ResponseErrorsInner>();
  set errors(ListBuilder<ApiMePost401ResponseErrorsInner>? errors) =>
      _$this._errors = errors;

  ApiMePost401ResponseBuilder() {
    ApiMePost401Response._defaults(this);
  }

  ApiMePost401ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiMePost401Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiMePost401Response;
  }

  @override
  void update(void Function(ApiMePost401ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiMePost401Response build() => _build();

  _$ApiMePost401Response _build() {
    _$ApiMePost401Response _$result;
    try {
      _$result = _$v ?? new _$ApiMePost401Response._(errors: errors.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiMePost401Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
