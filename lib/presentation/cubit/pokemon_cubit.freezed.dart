// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonState {
  PokemonStatus get status => throw _privateConstructorUsedError;
  int get pageSelected => throw _privateConstructorUsedError;
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;
  List<PokemonTypeListEntity> get pokemonTypeListData =>
      throw _privateConstructorUsedError;
  List<NameUrlEntity> get pokemonTypeListNames =>
      throw _privateConstructorUsedError;
  NameUrlEntity? get pokemonTypeSelected => throw _privateConstructorUsedError;
  List<PokemonPageEntity> get pokemonPageList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PokemonStatus status,
            int pageSelected,
            List<Pokemon> pokemonList,
            List<PokemonTypeListEntity> pokemonTypeListData,
            List<NameUrlEntity> pokemonTypeListNames,
            NameUrlEntity? pokemonTypeSelected,
            List<PokemonPageEntity> pokemonPageList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PokemonStatus status,
            int pageSelected,
            List<Pokemon> pokemonList,
            List<PokemonTypeListEntity> pokemonTypeListData,
            List<NameUrlEntity> pokemonTypeListNames,
            NameUrlEntity? pokemonTypeSelected,
            List<PokemonPageEntity> pokemonPageList)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PokemonStatus status,
            int pageSelected,
            List<Pokemon> pokemonList,
            List<PokemonTypeListEntity> pokemonTypeListData,
            List<NameUrlEntity> pokemonTypeListNames,
            NameUrlEntity? pokemonTypeSelected,
            List<PokemonPageEntity> pokemonPageList)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokemonInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokemonInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokemonInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call(
      {PokemonStatus status,
      int pageSelected,
      List<Pokemon> pokemonList,
      List<PokemonTypeListEntity> pokemonTypeListData,
      List<NameUrlEntity> pokemonTypeListNames,
      NameUrlEntity? pokemonTypeSelected,
      List<PokemonPageEntity> pokemonPageList});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pageSelected = null,
    Object? pokemonList = null,
    Object? pokemonTypeListData = null,
    Object? pokemonTypeListNames = null,
    Object? pokemonTypeSelected = freezed,
    Object? pokemonPageList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonStatus,
      pageSelected: null == pageSelected
          ? _value.pageSelected
          : pageSelected // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      pokemonTypeListData: null == pokemonTypeListData
          ? _value.pokemonTypeListData
          : pokemonTypeListData // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeListEntity>,
      pokemonTypeListNames: null == pokemonTypeListNames
          ? _value.pokemonTypeListNames
          : pokemonTypeListNames // ignore: cast_nullable_to_non_nullable
              as List<NameUrlEntity>,
      pokemonTypeSelected: freezed == pokemonTypeSelected
          ? _value.pokemonTypeSelected
          : pokemonTypeSelected // ignore: cast_nullable_to_non_nullable
              as NameUrlEntity?,
      pokemonPageList: null == pokemonPageList
          ? _value.pokemonPageList
          : pokemonPageList // ignore: cast_nullable_to_non_nullable
              as List<PokemonPageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonInitialImplCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$PokemonInitialImplCopyWith(_$PokemonInitialImpl value,
          $Res Function(_$PokemonInitialImpl) then) =
      __$$PokemonInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonStatus status,
      int pageSelected,
      List<Pokemon> pokemonList,
      List<PokemonTypeListEntity> pokemonTypeListData,
      List<NameUrlEntity> pokemonTypeListNames,
      NameUrlEntity? pokemonTypeSelected,
      List<PokemonPageEntity> pokemonPageList});
}

/// @nodoc
class __$$PokemonInitialImplCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonInitialImpl>
    implements _$$PokemonInitialImplCopyWith<$Res> {
  __$$PokemonInitialImplCopyWithImpl(
      _$PokemonInitialImpl _value, $Res Function(_$PokemonInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pageSelected = null,
    Object? pokemonList = null,
    Object? pokemonTypeListData = null,
    Object? pokemonTypeListNames = null,
    Object? pokemonTypeSelected = freezed,
    Object? pokemonPageList = null,
  }) {
    return _then(_$PokemonInitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonStatus,
      pageSelected: null == pageSelected
          ? _value.pageSelected
          : pageSelected // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      pokemonTypeListData: null == pokemonTypeListData
          ? _value._pokemonTypeListData
          : pokemonTypeListData // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeListEntity>,
      pokemonTypeListNames: null == pokemonTypeListNames
          ? _value._pokemonTypeListNames
          : pokemonTypeListNames // ignore: cast_nullable_to_non_nullable
              as List<NameUrlEntity>,
      pokemonTypeSelected: freezed == pokemonTypeSelected
          ? _value.pokemonTypeSelected
          : pokemonTypeSelected // ignore: cast_nullable_to_non_nullable
              as NameUrlEntity?,
      pokemonPageList: null == pokemonPageList
          ? _value._pokemonPageList
          : pokemonPageList // ignore: cast_nullable_to_non_nullable
              as List<PokemonPageEntity>,
    ));
  }
}

/// @nodoc

class _$PokemonInitialImpl extends _PokemonInitial {
  _$PokemonInitialImpl(
      {this.status = PokemonStatus.loading,
      this.pageSelected = 0,
      final List<Pokemon> pokemonList = const [],
      final List<PokemonTypeListEntity> pokemonTypeListData = const [],
      final List<NameUrlEntity> pokemonTypeListNames = const [],
      this.pokemonTypeSelected = null,
      final List<PokemonPageEntity> pokemonPageList = const []})
      : _pokemonList = pokemonList,
        _pokemonTypeListData = pokemonTypeListData,
        _pokemonTypeListNames = pokemonTypeListNames,
        _pokemonPageList = pokemonPageList,
        super._();

  @override
  @JsonKey()
  final PokemonStatus status;
  @override
  @JsonKey()
  final int pageSelected;
  final List<Pokemon> _pokemonList;
  @override
  @JsonKey()
  List<Pokemon> get pokemonList {
    if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonList);
  }

  final List<PokemonTypeListEntity> _pokemonTypeListData;
  @override
  @JsonKey()
  List<PokemonTypeListEntity> get pokemonTypeListData {
    if (_pokemonTypeListData is EqualUnmodifiableListView)
      return _pokemonTypeListData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonTypeListData);
  }

  final List<NameUrlEntity> _pokemonTypeListNames;
  @override
  @JsonKey()
  List<NameUrlEntity> get pokemonTypeListNames {
    if (_pokemonTypeListNames is EqualUnmodifiableListView)
      return _pokemonTypeListNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonTypeListNames);
  }

  @override
  @JsonKey()
  final NameUrlEntity? pokemonTypeSelected;
  final List<PokemonPageEntity> _pokemonPageList;
  @override
  @JsonKey()
  List<PokemonPageEntity> get pokemonPageList {
    if (_pokemonPageList is EqualUnmodifiableListView) return _pokemonPageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonPageList);
  }

  @override
  String toString() {
    return 'PokemonState.initial(status: $status, pageSelected: $pageSelected, pokemonList: $pokemonList, pokemonTypeListData: $pokemonTypeListData, pokemonTypeListNames: $pokemonTypeListNames, pokemonTypeSelected: $pokemonTypeSelected, pokemonPageList: $pokemonPageList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonInitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pageSelected, pageSelected) ||
                other.pageSelected == pageSelected) &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList) &&
            const DeepCollectionEquality()
                .equals(other._pokemonTypeListData, _pokemonTypeListData) &&
            const DeepCollectionEquality()
                .equals(other._pokemonTypeListNames, _pokemonTypeListNames) &&
            (identical(other.pokemonTypeSelected, pokemonTypeSelected) ||
                other.pokemonTypeSelected == pokemonTypeSelected) &&
            const DeepCollectionEquality()
                .equals(other._pokemonPageList, _pokemonPageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      pageSelected,
      const DeepCollectionEquality().hash(_pokemonList),
      const DeepCollectionEquality().hash(_pokemonTypeListData),
      const DeepCollectionEquality().hash(_pokemonTypeListNames),
      pokemonTypeSelected,
      const DeepCollectionEquality().hash(_pokemonPageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonInitialImplCopyWith<_$PokemonInitialImpl> get copyWith =>
      __$$PokemonInitialImplCopyWithImpl<_$PokemonInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PokemonStatus status,
            int pageSelected,
            List<Pokemon> pokemonList,
            List<PokemonTypeListEntity> pokemonTypeListData,
            List<NameUrlEntity> pokemonTypeListNames,
            NameUrlEntity? pokemonTypeSelected,
            List<PokemonPageEntity> pokemonPageList)
        initial,
  }) {
    return initial(status, pageSelected, pokemonList, pokemonTypeListData,
        pokemonTypeListNames, pokemonTypeSelected, pokemonPageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PokemonStatus status,
            int pageSelected,
            List<Pokemon> pokemonList,
            List<PokemonTypeListEntity> pokemonTypeListData,
            List<NameUrlEntity> pokemonTypeListNames,
            NameUrlEntity? pokemonTypeSelected,
            List<PokemonPageEntity> pokemonPageList)?
        initial,
  }) {
    return initial?.call(status, pageSelected, pokemonList, pokemonTypeListData,
        pokemonTypeListNames, pokemonTypeSelected, pokemonPageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PokemonStatus status,
            int pageSelected,
            List<Pokemon> pokemonList,
            List<PokemonTypeListEntity> pokemonTypeListData,
            List<NameUrlEntity> pokemonTypeListNames,
            NameUrlEntity? pokemonTypeSelected,
            List<PokemonPageEntity> pokemonPageList)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, pageSelected, pokemonList, pokemonTypeListData,
          pokemonTypeListNames, pokemonTypeSelected, pokemonPageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokemonInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokemonInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokemonInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PokemonInitial extends PokemonState {
  factory _PokemonInitial(
      {final PokemonStatus status,
      final int pageSelected,
      final List<Pokemon> pokemonList,
      final List<PokemonTypeListEntity> pokemonTypeListData,
      final List<NameUrlEntity> pokemonTypeListNames,
      final NameUrlEntity? pokemonTypeSelected,
      final List<PokemonPageEntity> pokemonPageList}) = _$PokemonInitialImpl;
  _PokemonInitial._() : super._();

  @override
  PokemonStatus get status;
  @override
  int get pageSelected;
  @override
  List<Pokemon> get pokemonList;
  @override
  List<PokemonTypeListEntity> get pokemonTypeListData;
  @override
  List<NameUrlEntity> get pokemonTypeListNames;
  @override
  NameUrlEntity? get pokemonTypeSelected;
  @override
  List<PokemonPageEntity> get pokemonPageList;
  @override
  @JsonKey(ignore: true)
  _$$PokemonInitialImplCopyWith<_$PokemonInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
