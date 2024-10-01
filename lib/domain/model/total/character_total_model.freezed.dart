// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_total_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterTotalModel _$CharacterTotalModelFromJson(Map<String, dynamic> json) {
  return _CharacterTotalModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterTotalModel {
  String get ocid => throw _privateConstructorUsedError;
  BasicModel get characterBasic => throw _privateConstructorUsedError;
  StatModel get characterStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterTotalModelCopyWith<CharacterTotalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterTotalModelCopyWith<$Res> {
  factory $CharacterTotalModelCopyWith(
          CharacterTotalModel value, $Res Function(CharacterTotalModel) then) =
      _$CharacterTotalModelCopyWithImpl<$Res, CharacterTotalModel>;
  @useResult
  $Res call({String ocid, BasicModel characterBasic, StatModel characterStat});

  $BasicModelCopyWith<$Res> get characterBasic;
  $StatModelCopyWith<$Res> get characterStat;
}

/// @nodoc
class _$CharacterTotalModelCopyWithImpl<$Res, $Val extends CharacterTotalModel>
    implements $CharacterTotalModelCopyWith<$Res> {
  _$CharacterTotalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocid = null,
    Object? characterBasic = null,
    Object? characterStat = null,
  }) {
    return _then(_value.copyWith(
      ocid: null == ocid
          ? _value.ocid
          : ocid // ignore: cast_nullable_to_non_nullable
              as String,
      characterBasic: null == characterBasic
          ? _value.characterBasic
          : characterBasic // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      characterStat: null == characterStat
          ? _value.characterStat
          : characterStat // ignore: cast_nullable_to_non_nullable
              as StatModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicModelCopyWith<$Res> get characterBasic {
    return $BasicModelCopyWith<$Res>(_value.characterBasic, (value) {
      return _then(_value.copyWith(characterBasic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatModelCopyWith<$Res> get characterStat {
    return $StatModelCopyWith<$Res>(_value.characterStat, (value) {
      return _then(_value.copyWith(characterStat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterTotalModelImplCopyWith<$Res>
    implements $CharacterTotalModelCopyWith<$Res> {
  factory _$$CharacterTotalModelImplCopyWith(_$CharacterTotalModelImpl value,
          $Res Function(_$CharacterTotalModelImpl) then) =
      __$$CharacterTotalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ocid, BasicModel characterBasic, StatModel characterStat});

  @override
  $BasicModelCopyWith<$Res> get characterBasic;
  @override
  $StatModelCopyWith<$Res> get characterStat;
}

/// @nodoc
class __$$CharacterTotalModelImplCopyWithImpl<$Res>
    extends _$CharacterTotalModelCopyWithImpl<$Res, _$CharacterTotalModelImpl>
    implements _$$CharacterTotalModelImplCopyWith<$Res> {
  __$$CharacterTotalModelImplCopyWithImpl(_$CharacterTotalModelImpl _value,
      $Res Function(_$CharacterTotalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocid = null,
    Object? characterBasic = null,
    Object? characterStat = null,
  }) {
    return _then(_$CharacterTotalModelImpl(
      ocid: null == ocid
          ? _value.ocid
          : ocid // ignore: cast_nullable_to_non_nullable
              as String,
      characterBasic: null == characterBasic
          ? _value.characterBasic
          : characterBasic // ignore: cast_nullable_to_non_nullable
              as BasicModel,
      characterStat: null == characterStat
          ? _value.characterStat
          : characterStat // ignore: cast_nullable_to_non_nullable
              as StatModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterTotalModelImpl implements _CharacterTotalModel {
  const _$CharacterTotalModelImpl(
      {required this.ocid,
      required this.characterBasic,
      required this.characterStat});

  factory _$CharacterTotalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterTotalModelImplFromJson(json);

  @override
  final String ocid;
  @override
  final BasicModel characterBasic;
  @override
  final StatModel characterStat;

  @override
  String toString() {
    return 'CharacterTotalModel(ocid: $ocid, characterBasic: $characterBasic, characterStat: $characterStat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterTotalModelImpl &&
            (identical(other.ocid, ocid) || other.ocid == ocid) &&
            (identical(other.characterBasic, characterBasic) ||
                other.characterBasic == characterBasic) &&
            (identical(other.characterStat, characterStat) ||
                other.characterStat == characterStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ocid, characterBasic, characterStat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterTotalModelImplCopyWith<_$CharacterTotalModelImpl> get copyWith =>
      __$$CharacterTotalModelImplCopyWithImpl<_$CharacterTotalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterTotalModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterTotalModel implements CharacterTotalModel {
  const factory _CharacterTotalModel(
      {required final String ocid,
      required final BasicModel characterBasic,
      required final StatModel characterStat}) = _$CharacterTotalModelImpl;

  factory _CharacterTotalModel.fromJson(Map<String, dynamic> json) =
      _$CharacterTotalModelImpl.fromJson;

  @override
  String get ocid;
  @override
  BasicModel get characterBasic;
  @override
  StatModel get characterStat;
  @override
  @JsonKey(ignore: true)
  _$$CharacterTotalModelImplCopyWith<_$CharacterTotalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
