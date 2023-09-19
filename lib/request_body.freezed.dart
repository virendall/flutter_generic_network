// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestBody {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(String data) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(String data)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyBody value) empty,
    required TResult Function(JsonBody value) json,
    required TResult Function(PlainText value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyBody value)? empty,
    TResult? Function(JsonBody value)? json,
    TResult? Function(PlainText value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyBody value)? empty,
    TResult Function(JsonBody value)? json,
    TResult Function(PlainText value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBodyCopyWith<$Res> {
  factory $RequestBodyCopyWith(
          RequestBody value, $Res Function(RequestBody) then) =
      _$RequestBodyCopyWithImpl<$Res, RequestBody>;
}

/// @nodoc
class _$RequestBodyCopyWithImpl<$Res, $Val extends RequestBody>
    implements $RequestBodyCopyWith<$Res> {
  _$RequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyBodyCopyWith<$Res> {
  factory _$$EmptyBodyCopyWith(
          _$EmptyBody value, $Res Function(_$EmptyBody) then) =
      __$$EmptyBodyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyBodyCopyWithImpl<$Res>
    extends _$RequestBodyCopyWithImpl<$Res, _$EmptyBody>
    implements _$$EmptyBodyCopyWith<$Res> {
  __$$EmptyBodyCopyWithImpl(
      _$EmptyBody _value, $Res Function(_$EmptyBody) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyBody implements EmptyBody {
  const _$EmptyBody();

  @override
  String toString() {
    return 'RequestBody.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyBody);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(String data) text,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(String data)? text,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyBody value) empty,
    required TResult Function(JsonBody value) json,
    required TResult Function(PlainText value) text,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyBody value)? empty,
    TResult? Function(JsonBody value)? json,
    TResult? Function(PlainText value)? text,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyBody value)? empty,
    TResult Function(JsonBody value)? json,
    TResult Function(PlainText value)? text,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyBody implements RequestBody {
  const factory EmptyBody() = _$EmptyBody;
}

/// @nodoc
abstract class _$$JsonBodyCopyWith<$Res> {
  factory _$$JsonBodyCopyWith(
          _$JsonBody value, $Res Function(_$JsonBody) then) =
      __$$JsonBodyCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$JsonBodyCopyWithImpl<$Res>
    extends _$RequestBodyCopyWithImpl<$Res, _$JsonBody>
    implements _$$JsonBodyCopyWith<$Res> {
  __$$JsonBodyCopyWithImpl(_$JsonBody _value, $Res Function(_$JsonBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$JsonBody(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$JsonBody implements JsonBody {
  const _$JsonBody(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'RequestBody.json(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonBody &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonBodyCopyWith<_$JsonBody> get copyWith =>
      __$$JsonBodyCopyWithImpl<_$JsonBody>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(String data) text,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(String data)? text,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyBody value) empty,
    required TResult Function(JsonBody value) json,
    required TResult Function(PlainText value) text,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyBody value)? empty,
    TResult? Function(JsonBody value)? json,
    TResult? Function(PlainText value)? text,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyBody value)? empty,
    TResult Function(JsonBody value)? json,
    TResult Function(PlainText value)? text,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class JsonBody implements RequestBody {
  const factory JsonBody(final Map<String, dynamic> data) = _$JsonBody;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$JsonBodyCopyWith<_$JsonBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlainTextCopyWith<$Res> {
  factory _$$PlainTextCopyWith(
          _$PlainText value, $Res Function(_$PlainText) then) =
      __$$PlainTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$PlainTextCopyWithImpl<$Res>
    extends _$RequestBodyCopyWithImpl<$Res, _$PlainText>
    implements _$$PlainTextCopyWith<$Res> {
  __$$PlainTextCopyWithImpl(
      _$PlainText _value, $Res Function(_$PlainText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PlainText(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlainText implements PlainText {
  const _$PlainText(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'RequestBody.text(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlainText &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlainTextCopyWith<_$PlainText> get copyWith =>
      __$$PlainTextCopyWithImpl<_$PlainText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(String data) text,
  }) {
    return text(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(String data)? text,
  }) {
    return text?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyBody value) empty,
    required TResult Function(JsonBody value) json,
    required TResult Function(PlainText value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyBody value)? empty,
    TResult? Function(JsonBody value)? json,
    TResult? Function(PlainText value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyBody value)? empty,
    TResult Function(JsonBody value)? json,
    TResult Function(PlainText value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class PlainText implements RequestBody {
  const factory PlainText(final String data) = _$PlainText;

  String get data;
  @JsonKey(ignore: true)
  _$$PlainTextCopyWith<_$PlainText> get copyWith =>
      throw _privateConstructorUsedError;
}
