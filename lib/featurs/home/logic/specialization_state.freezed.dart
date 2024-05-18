// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecializationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(T data) specializationSuccess,
    required TResult Function(String error) specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(T data)? specializationSuccess,
    TResult? Function(String error)? specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(T data)? specializationSuccess,
    TResult Function(String error)? specializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationStateCopyWith<T, $Res> {
  factory $SpecializationStateCopyWith(SpecializationState<T> value,
          $Res Function(SpecializationState<T>) then) =
      _$SpecializationStateCopyWithImpl<T, $Res, SpecializationState<T>>;
}

/// @nodoc
class _$SpecializationStateCopyWithImpl<T, $Res,
        $Val extends SpecializationState<T>>
    implements $SpecializationStateCopyWith<T, $Res> {
  _$SpecializationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SpecializationState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(T data) specializationSuccess,
    required TResult Function(String error) specializationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(T data)? specializationSuccess,
    TResult? Function(String error)? specializationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(T data)? specializationSuccess,
    TResult Function(String error)? specializationError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SpecializationState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationLoadingImplCopyWith<T, $Res> {
  factory _$$SpecializationLoadingImplCopyWith(
          _$SpecializationLoadingImpl<T> value,
          $Res Function(_$SpecializationLoadingImpl<T>) then) =
      __$$SpecializationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SpecializationLoadingImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res,
        _$SpecializationLoadingImpl<T>>
    implements _$$SpecializationLoadingImplCopyWith<T, $Res> {
  __$$SpecializationLoadingImplCopyWithImpl(
      _$SpecializationLoadingImpl<T> _value,
      $Res Function(_$SpecializationLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecializationLoadingImpl<T> implements SpecializationLoading<T> {
  const _$SpecializationLoadingImpl();

  @override
  String toString() {
    return 'SpecializationState<$T>.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(T data) specializationSuccess,
    required TResult Function(String error) specializationError,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(T data)? specializationSuccess,
    TResult? Function(String error)? specializationError,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(T data)? specializationSuccess,
    TResult Function(String error)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class SpecializationLoading<T> implements SpecializationState<T> {
  const factory SpecializationLoading() = _$SpecializationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationSuccessImplCopyWith<T, $Res> {
  factory _$$SpecializationSuccessImplCopyWith(
          _$SpecializationSuccessImpl<T> value,
          $Res Function(_$SpecializationSuccessImpl<T>) then) =
      __$$SpecializationSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SpecializationSuccessImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res,
        _$SpecializationSuccessImpl<T>>
    implements _$$SpecializationSuccessImplCopyWith<T, $Res> {
  __$$SpecializationSuccessImplCopyWithImpl(
      _$SpecializationSuccessImpl<T> _value,
      $Res Function(_$SpecializationSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SpecializationSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SpecializationSuccessImpl<T> implements SpecializationSuccess<T> {
  const _$SpecializationSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SpecializationState<$T>.specializationSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationSuccessImplCopyWith<T, _$SpecializationSuccessImpl<T>>
      get copyWith => __$$SpecializationSuccessImplCopyWithImpl<T,
          _$SpecializationSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(T data) specializationSuccess,
    required TResult Function(String error) specializationError,
  }) {
    return specializationSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(T data)? specializationSuccess,
    TResult? Function(String error)? specializationError,
  }) {
    return specializationSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(T data)? specializationSuccess,
    TResult Function(String error)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return specializationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return specializationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecializationSuccess<T> implements SpecializationState<T> {
  const factory SpecializationSuccess(final T data) =
      _$SpecializationSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SpecializationSuccessImplCopyWith<T, _$SpecializationSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationErrorImplCopyWith<T, $Res> {
  factory _$$SpecializationErrorImplCopyWith(_$SpecializationErrorImpl<T> value,
          $Res Function(_$SpecializationErrorImpl<T>) then) =
      __$$SpecializationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SpecializationErrorImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res,
        _$SpecializationErrorImpl<T>>
    implements _$$SpecializationErrorImplCopyWith<T, $Res> {
  __$$SpecializationErrorImplCopyWithImpl(_$SpecializationErrorImpl<T> _value,
      $Res Function(_$SpecializationErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SpecializationErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpecializationErrorImpl<T> implements SpecializationError<T> {
  const _$SpecializationErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SpecializationState<$T>.specializationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationErrorImplCopyWith<T, _$SpecializationErrorImpl<T>>
      get copyWith => __$$SpecializationErrorImplCopyWithImpl<T,
          _$SpecializationErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(T data) specializationSuccess,
    required TResult Function(String error) specializationError,
  }) {
    return specializationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(T data)? specializationSuccess,
    TResult? Function(String error)? specializationError,
  }) {
    return specializationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(T data)? specializationSuccess,
    TResult Function(String error)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return specializationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return specializationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(this);
    }
    return orElse();
  }
}

abstract class SpecializationError<T> implements SpecializationState<T> {
  const factory SpecializationError({required final String error}) =
      _$SpecializationErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$SpecializationErrorImplCopyWith<T, _$SpecializationErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
