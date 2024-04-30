// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<S extends Object, F extends Exception> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(F error) failure,
    required TResult Function(S data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(F error)? failure,
    TResult? Function(S data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(F error)? failure,
    TResult Function(S data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Failure<S, F> value) failure,
    required TResult Function(Success<S, F> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure<S, F> value)? failure,
    TResult? Function(Success<S, F> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure<S, F> value)? failure,
    TResult Function(Success<S, F> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<S extends Object, F extends Exception, $Res> {
  factory $ResultCopyWith(
          Result<S, F> value, $Res Function(Result<S, F>) then) =
      _$ResultCopyWithImpl<S, F, $Res, Result<S, F>>;
}

/// @nodoc
class _$ResultCopyWithImpl<S extends Object, F extends Exception, $Res,
    $Val extends Result<S, F>> implements $ResultCopyWith<S, F, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<S extends Object, F extends Exception,
    $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<S, F> value, $Res Function(_$FailureImpl<S, F>) then) =
      __$$FailureImplCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({F error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<S extends Object, F extends Exception, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$FailureImpl<S, F>>
    implements _$$FailureImplCopyWith<S, F, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<S, F> _value, $Res Function(_$FailureImpl<S, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<S, F>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$FailureImpl<S extends Object, F extends Exception>
    extends Failure<S, F> {
  const _$FailureImpl({required this.error}) : super._();

  @override
  final F error;

  @override
  String toString() {
    return 'Result<$S, $F>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<S, F> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<S, F, _$FailureImpl<S, F>> get copyWith =>
      __$$FailureImplCopyWithImpl<S, F, _$FailureImpl<S, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(F error) failure,
    required TResult Function(S data) success,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(F error)? failure,
    TResult? Function(S data)? success,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(F error)? failure,
    TResult Function(S data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Failure<S, F> value) failure,
    required TResult Function(Success<S, F> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure<S, F> value)? failure,
    TResult? Function(Success<S, F> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure<S, F> value)? failure,
    TResult Function(Success<S, F> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<S extends Object, F extends Exception>
    extends Result<S, F> {
  const factory Failure({required final F error}) = _$FailureImpl<S, F>;
  const Failure._() : super._();

  F get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<S, F, _$FailureImpl<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<S extends Object, F extends Exception,
    $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<S, F> value, $Res Function(_$SuccessImpl<S, F>) then) =
      __$$SuccessImplCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({S data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<S extends Object, F extends Exception, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$SuccessImpl<S, F>>
    implements _$$SuccessImplCopyWith<S, F, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<S, F> _value, $Res Function(_$SuccessImpl<S, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl<S, F>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<S extends Object, F extends Exception>
    extends Success<S, F> {
  const _$SuccessImpl({required this.data}) : super._();

  @override
  final S data;

  @override
  String toString() {
    return 'Result<$S, $F>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<S, F> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<S, F, _$SuccessImpl<S, F>> get copyWith =>
      __$$SuccessImplCopyWithImpl<S, F, _$SuccessImpl<S, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(F error) failure,
    required TResult Function(S data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(F error)? failure,
    TResult? Function(S data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(F error)? failure,
    TResult Function(S data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Failure<S, F> value) failure,
    required TResult Function(Success<S, F> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure<S, F> value)? failure,
    TResult? Function(Success<S, F> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure<S, F> value)? failure,
    TResult Function(Success<S, F> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<S extends Object, F extends Exception>
    extends Result<S, F> {
  const factory Success({required final S data}) = _$SuccessImpl<S, F>;
  const Success._() : super._();

  S get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<S, F, _$SuccessImpl<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}
