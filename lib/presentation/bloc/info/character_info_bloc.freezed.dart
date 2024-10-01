// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> characterList) started,
    required TResult Function(String characterName) add,
    required TResult Function(String characterName) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> characterList)? started,
    TResult? Function(String characterName)? add,
    TResult? Function(String characterName)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> characterList)? started,
    TResult Function(String characterName)? add,
    TResult Function(String characterName)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterInfoEventCopyWith<$Res> {
  factory $CharacterInfoEventCopyWith(
          CharacterInfoEvent value, $Res Function(CharacterInfoEvent) then) =
      _$CharacterInfoEventCopyWithImpl<$Res, CharacterInfoEvent>;
}

/// @nodoc
class _$CharacterInfoEventCopyWithImpl<$Res, $Val extends CharacterInfoEvent>
    implements $CharacterInfoEventCopyWith<$Res> {
  _$CharacterInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> characterList});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CharacterInfoEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterList = null,
  }) {
    return _then(_$StartedImpl(
      null == characterList
          ? _value._characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(final List<String> characterList)
      : _characterList = characterList;

  final List<String> _characterList;
  @override
  List<String> get characterList {
    if (_characterList is EqualUnmodifiableListView) return _characterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterList);
  }

  @override
  String toString() {
    return 'CharacterInfoEvent.started(characterList: $characterList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality()
                .equals(other._characterList, _characterList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characterList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> characterList) started,
    required TResult Function(String characterName) add,
    required TResult Function(String characterName) delete,
  }) {
    return started(characterList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> characterList)? started,
    TResult? Function(String characterName)? add,
    TResult? Function(String characterName)? delete,
  }) {
    return started?.call(characterList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> characterList)? started,
    TResult Function(String characterName)? add,
    TResult Function(String characterName)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(characterList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CharacterInfoEvent {
  const factory _Started(final List<String> characterList) = _$StartedImpl;

  List<String> get characterList;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String characterName});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$CharacterInfoEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterName = null,
  }) {
    return _then(_$AddImpl(
      null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.characterName);

  @override
  final String characterName;

  @override
  String toString() {
    return 'CharacterInfoEvent.add(characterName: $characterName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> characterList) started,
    required TResult Function(String characterName) add,
    required TResult Function(String characterName) delete,
  }) {
    return add(characterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> characterList)? started,
    TResult? Function(String characterName)? add,
    TResult? Function(String characterName)? delete,
  }) {
    return add?.call(characterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> characterList)? started,
    TResult Function(String characterName)? add,
    TResult Function(String characterName)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(characterName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements CharacterInfoEvent {
  const factory _Add(final String characterName) = _$AddImpl;

  String get characterName;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String characterName});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$CharacterInfoEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterName = null,
  }) {
    return _then(_$DeleteImpl(
      null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.characterName);

  @override
  final String characterName;

  @override
  String toString() {
    return 'CharacterInfoEvent.delete(characterName: $characterName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> characterList) started,
    required TResult Function(String characterName) add,
    required TResult Function(String characterName) delete,
  }) {
    return delete(characterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> characterList)? started,
    TResult? Function(String characterName)? add,
    TResult? Function(String characterName)? delete,
  }) {
    return delete?.call(characterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> characterList)? started,
    TResult Function(String characterName)? add,
    TResult Function(String characterName)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(characterName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements CharacterInfoEvent {
  const factory _Delete(final String characterName) = _$DeleteImpl;

  String get characterName;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterTotalModel> list) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterTotalModel> list)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterTotalModel> list)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_onLoading value) loading,
    required TResult Function(_onSuccess value) success,
    required TResult Function(_onError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_onLoading value)? loading,
    TResult? Function(_onSuccess value)? success,
    TResult? Function(_onError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_onLoading value)? loading,
    TResult Function(_onSuccess value)? success,
    TResult Function(_onError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterInfoStateCopyWith<$Res> {
  factory $CharacterInfoStateCopyWith(
          CharacterInfoState value, $Res Function(CharacterInfoState) then) =
      _$CharacterInfoStateCopyWithImpl<$Res, CharacterInfoState>;
}

/// @nodoc
class _$CharacterInfoStateCopyWithImpl<$Res, $Val extends CharacterInfoState>
    implements $CharacterInfoStateCopyWith<$Res> {
  _$CharacterInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CharacterInfoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CharacterInfoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterTotalModel> list) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterTotalModel> list)? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterTotalModel> list)? success,
    TResult Function()? error,
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
    required TResult Function(_onLoading value) loading,
    required TResult Function(_onSuccess value) success,
    required TResult Function(_onError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_onLoading value)? loading,
    TResult? Function(_onSuccess value)? success,
    TResult? Function(_onError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_onLoading value)? loading,
    TResult Function(_onSuccess value)? success,
    TResult Function(_onError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CharacterInfoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$onLoadingImplCopyWith<$Res> {
  factory _$$onLoadingImplCopyWith(
          _$onLoadingImpl value, $Res Function(_$onLoadingImpl) then) =
      __$$onLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLoadingImplCopyWithImpl<$Res>
    extends _$CharacterInfoStateCopyWithImpl<$Res, _$onLoadingImpl>
    implements _$$onLoadingImplCopyWith<$Res> {
  __$$onLoadingImplCopyWithImpl(
      _$onLoadingImpl _value, $Res Function(_$onLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onLoadingImpl implements _onLoading {
  const _$onLoadingImpl();

  @override
  String toString() {
    return 'CharacterInfoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterTotalModel> list) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterTotalModel> list)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterTotalModel> list)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_onLoading value) loading,
    required TResult Function(_onSuccess value) success,
    required TResult Function(_onError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_onLoading value)? loading,
    TResult? Function(_onSuccess value)? success,
    TResult? Function(_onError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_onLoading value)? loading,
    TResult Function(_onSuccess value)? success,
    TResult Function(_onError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _onLoading implements CharacterInfoState {
  const factory _onLoading() = _$onLoadingImpl;
}

/// @nodoc
abstract class _$$onSuccessImplCopyWith<$Res> {
  factory _$$onSuccessImplCopyWith(
          _$onSuccessImpl value, $Res Function(_$onSuccessImpl) then) =
      __$$onSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterTotalModel> list});
}

/// @nodoc
class __$$onSuccessImplCopyWithImpl<$Res>
    extends _$CharacterInfoStateCopyWithImpl<$Res, _$onSuccessImpl>
    implements _$$onSuccessImplCopyWith<$Res> {
  __$$onSuccessImplCopyWithImpl(
      _$onSuccessImpl _value, $Res Function(_$onSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$onSuccessImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CharacterTotalModel>,
    ));
  }
}

/// @nodoc

class _$onSuccessImpl implements _onSuccess {
  const _$onSuccessImpl(final List<CharacterTotalModel> list) : _list = list;

  final List<CharacterTotalModel> _list;
  @override
  List<CharacterTotalModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'CharacterInfoState.success(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSuccessImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onSuccessImplCopyWith<_$onSuccessImpl> get copyWith =>
      __$$onSuccessImplCopyWithImpl<_$onSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterTotalModel> list) success,
    required TResult Function() error,
  }) {
    return success(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterTotalModel> list)? success,
    TResult? Function()? error,
  }) {
    return success?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterTotalModel> list)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_onLoading value) loading,
    required TResult Function(_onSuccess value) success,
    required TResult Function(_onError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_onLoading value)? loading,
    TResult? Function(_onSuccess value)? success,
    TResult? Function(_onError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_onLoading value)? loading,
    TResult Function(_onSuccess value)? success,
    TResult Function(_onError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _onSuccess implements CharacterInfoState {
  const factory _onSuccess(final List<CharacterTotalModel> list) =
      _$onSuccessImpl;

  List<CharacterTotalModel> get list;
  @JsonKey(ignore: true)
  _$$onSuccessImplCopyWith<_$onSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onErrorImplCopyWith<$Res> {
  factory _$$onErrorImplCopyWith(
          _$onErrorImpl value, $Res Function(_$onErrorImpl) then) =
      __$$onErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onErrorImplCopyWithImpl<$Res>
    extends _$CharacterInfoStateCopyWithImpl<$Res, _$onErrorImpl>
    implements _$$onErrorImplCopyWith<$Res> {
  __$$onErrorImplCopyWithImpl(
      _$onErrorImpl _value, $Res Function(_$onErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onErrorImpl implements _onError {
  const _$onErrorImpl();

  @override
  String toString() {
    return 'CharacterInfoState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharacterTotalModel> list) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharacterTotalModel> list)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharacterTotalModel> list)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_onLoading value) loading,
    required TResult Function(_onSuccess value) success,
    required TResult Function(_onError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_onLoading value)? loading,
    TResult? Function(_onSuccess value)? success,
    TResult? Function(_onError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_onLoading value)? loading,
    TResult Function(_onSuccess value)? success,
    TResult Function(_onError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _onError implements CharacterInfoState {
  const factory _onError() = _$onErrorImpl;
}
