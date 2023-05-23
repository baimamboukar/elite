// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elite_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EliteAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleProcessing,
    required TResult Function() facebookProcessing,
    required TResult Function(EliteUser user) authenticated,
    required TResult Function(String failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleProcessing,
    TResult? Function()? facebookProcessing,
    TResult? Function(EliteUser user)? authenticated,
    TResult? Function(String failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleProcessing,
    TResult Function()? facebookProcessing,
    TResult Function(EliteUser user)? authenticated,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GoogleProcessing value) googleProcessing,
    required TResult Function(_FacebookProcessing value) facebookProcessing,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GoogleProcessing value)? googleProcessing,
    TResult? Function(_FacebookProcessing value)? facebookProcessing,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GoogleProcessing value)? googleProcessing,
    TResult Function(_FacebookProcessing value)? facebookProcessing,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EliteAuthStateCopyWith<$Res> {
  factory $EliteAuthStateCopyWith(
          EliteAuthState value, $Res Function(EliteAuthState) then) =
      _$EliteAuthStateCopyWithImpl<$Res, EliteAuthState>;
}

/// @nodoc
class _$EliteAuthStateCopyWithImpl<$Res, $Val extends EliteAuthState>
    implements $EliteAuthStateCopyWith<$Res> {
  _$EliteAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EliteAuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EliteAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleProcessing,
    required TResult Function() facebookProcessing,
    required TResult Function(EliteUser user) authenticated,
    required TResult Function(String failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleProcessing,
    TResult? Function()? facebookProcessing,
    TResult? Function(EliteUser user)? authenticated,
    TResult? Function(String failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleProcessing,
    TResult Function()? facebookProcessing,
    TResult Function(EliteUser user)? authenticated,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GoogleProcessing value) googleProcessing,
    required TResult Function(_FacebookProcessing value) facebookProcessing,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GoogleProcessing value)? googleProcessing,
    TResult? Function(_FacebookProcessing value)? facebookProcessing,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GoogleProcessing value)? googleProcessing,
    TResult Function(_FacebookProcessing value)? facebookProcessing,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EliteAuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_GoogleProcessingCopyWith<$Res> {
  factory _$$_GoogleProcessingCopyWith(
          _$_GoogleProcessing value, $Res Function(_$_GoogleProcessing) then) =
      __$$_GoogleProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GoogleProcessingCopyWithImpl<$Res>
    extends _$EliteAuthStateCopyWithImpl<$Res, _$_GoogleProcessing>
    implements _$$_GoogleProcessingCopyWith<$Res> {
  __$$_GoogleProcessingCopyWithImpl(
      _$_GoogleProcessing _value, $Res Function(_$_GoogleProcessing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GoogleProcessing implements _GoogleProcessing {
  const _$_GoogleProcessing();

  @override
  String toString() {
    return 'EliteAuthState.googleProcessing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GoogleProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleProcessing,
    required TResult Function() facebookProcessing,
    required TResult Function(EliteUser user) authenticated,
    required TResult Function(String failure) failure,
  }) {
    return googleProcessing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleProcessing,
    TResult? Function()? facebookProcessing,
    TResult? Function(EliteUser user)? authenticated,
    TResult? Function(String failure)? failure,
  }) {
    return googleProcessing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleProcessing,
    TResult Function()? facebookProcessing,
    TResult Function(EliteUser user)? authenticated,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (googleProcessing != null) {
      return googleProcessing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GoogleProcessing value) googleProcessing,
    required TResult Function(_FacebookProcessing value) facebookProcessing,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return googleProcessing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GoogleProcessing value)? googleProcessing,
    TResult? Function(_FacebookProcessing value)? facebookProcessing,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
  }) {
    return googleProcessing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GoogleProcessing value)? googleProcessing,
    TResult Function(_FacebookProcessing value)? facebookProcessing,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (googleProcessing != null) {
      return googleProcessing(this);
    }
    return orElse();
  }
}

abstract class _GoogleProcessing implements EliteAuthState {
  const factory _GoogleProcessing() = _$_GoogleProcessing;
}

/// @nodoc
abstract class _$$_FacebookProcessingCopyWith<$Res> {
  factory _$$_FacebookProcessingCopyWith(_$_FacebookProcessing value,
          $Res Function(_$_FacebookProcessing) then) =
      __$$_FacebookProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FacebookProcessingCopyWithImpl<$Res>
    extends _$EliteAuthStateCopyWithImpl<$Res, _$_FacebookProcessing>
    implements _$$_FacebookProcessingCopyWith<$Res> {
  __$$_FacebookProcessingCopyWithImpl(
      _$_FacebookProcessing _value, $Res Function(_$_FacebookProcessing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FacebookProcessing implements _FacebookProcessing {
  const _$_FacebookProcessing();

  @override
  String toString() {
    return 'EliteAuthState.facebookProcessing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FacebookProcessing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleProcessing,
    required TResult Function() facebookProcessing,
    required TResult Function(EliteUser user) authenticated,
    required TResult Function(String failure) failure,
  }) {
    return facebookProcessing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleProcessing,
    TResult? Function()? facebookProcessing,
    TResult? Function(EliteUser user)? authenticated,
    TResult? Function(String failure)? failure,
  }) {
    return facebookProcessing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleProcessing,
    TResult Function()? facebookProcessing,
    TResult Function(EliteUser user)? authenticated,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (facebookProcessing != null) {
      return facebookProcessing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GoogleProcessing value) googleProcessing,
    required TResult Function(_FacebookProcessing value) facebookProcessing,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return facebookProcessing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GoogleProcessing value)? googleProcessing,
    TResult? Function(_FacebookProcessing value)? facebookProcessing,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
  }) {
    return facebookProcessing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GoogleProcessing value)? googleProcessing,
    TResult Function(_FacebookProcessing value)? facebookProcessing,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (facebookProcessing != null) {
      return facebookProcessing(this);
    }
    return orElse();
  }
}

abstract class _FacebookProcessing implements EliteAuthState {
  const factory _FacebookProcessing() = _$_FacebookProcessing;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({EliteUser user});
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$EliteAuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Authenticated(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EliteUser,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated({required this.user});

  @override
  final EliteUser user;

  @override
  String toString() {
    return 'EliteAuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleProcessing,
    required TResult Function() facebookProcessing,
    required TResult Function(EliteUser user) authenticated,
    required TResult Function(String failure) failure,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleProcessing,
    TResult? Function()? facebookProcessing,
    TResult? Function(EliteUser user)? authenticated,
    TResult? Function(String failure)? failure,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleProcessing,
    TResult Function()? facebookProcessing,
    TResult Function(EliteUser user)? authenticated,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GoogleProcessing value) googleProcessing,
    required TResult Function(_FacebookProcessing value) facebookProcessing,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GoogleProcessing value)? googleProcessing,
    TResult? Function(_FacebookProcessing value)? facebookProcessing,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GoogleProcessing value)? googleProcessing,
    TResult Function(_FacebookProcessing value)? facebookProcessing,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements EliteAuthState {
  const factory _Authenticated({required final EliteUser user}) =
      _$_Authenticated;

  EliteUser get user;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$EliteAuthStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.failure});

  @override
  final String failure;

  @override
  String toString() {
    return 'EliteAuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() googleProcessing,
    required TResult Function() facebookProcessing,
    required TResult Function(EliteUser user) authenticated,
    required TResult Function(String failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? googleProcessing,
    TResult? Function()? facebookProcessing,
    TResult? Function(EliteUser user)? authenticated,
    TResult? Function(String failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? googleProcessing,
    TResult Function()? facebookProcessing,
    TResult Function(EliteUser user)? authenticated,
    TResult Function(String failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GoogleProcessing value) googleProcessing,
    required TResult Function(_FacebookProcessing value) facebookProcessing,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GoogleProcessing value)? googleProcessing,
    TResult? Function(_FacebookProcessing value)? facebookProcessing,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GoogleProcessing value)? googleProcessing,
    TResult Function(_FacebookProcessing value)? facebookProcessing,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements EliteAuthState {
  const factory _Failure({required final String failure}) = _$_Failure;

  String get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
