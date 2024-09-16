// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OcidModel _$OcidModelFromJson(Map<String, dynamic> json) {
  return _OcidModel.fromJson(json);
}

/// @nodoc
mixin _$OcidModel {
  String get ocid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcidModelCopyWith<OcidModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcidModelCopyWith<$Res> {
  factory $OcidModelCopyWith(OcidModel value, $Res Function(OcidModel) then) =
      _$OcidModelCopyWithImpl<$Res, OcidModel>;
  @useResult
  $Res call({String ocid});
}

/// @nodoc
class _$OcidModelCopyWithImpl<$Res, $Val extends OcidModel>
    implements $OcidModelCopyWith<$Res> {
  _$OcidModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocid = null,
  }) {
    return _then(_value.copyWith(
      ocid: null == ocid
          ? _value.ocid
          : ocid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OcidModelImplCopyWith<$Res>
    implements $OcidModelCopyWith<$Res> {
  factory _$$OcidModelImplCopyWith(
          _$OcidModelImpl value, $Res Function(_$OcidModelImpl) then) =
      __$$OcidModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ocid});
}

/// @nodoc
class __$$OcidModelImplCopyWithImpl<$Res>
    extends _$OcidModelCopyWithImpl<$Res, _$OcidModelImpl>
    implements _$$OcidModelImplCopyWith<$Res> {
  __$$OcidModelImplCopyWithImpl(
      _$OcidModelImpl _value, $Res Function(_$OcidModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocid = null,
  }) {
    return _then(_$OcidModelImpl(
      ocid: null == ocid
          ? _value.ocid
          : ocid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcidModelImpl implements _OcidModel {
  const _$OcidModelImpl({required this.ocid});

  factory _$OcidModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcidModelImplFromJson(json);

  @override
  final String ocid;

  @override
  String toString() {
    return 'OcidModel(ocid: $ocid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcidModelImpl &&
            (identical(other.ocid, ocid) || other.ocid == ocid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ocid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OcidModelImplCopyWith<_$OcidModelImpl> get copyWith =>
      __$$OcidModelImplCopyWithImpl<_$OcidModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcidModelImplToJson(
      this,
    );
  }
}

abstract class _OcidModel implements OcidModel {
  const factory _OcidModel({required final String ocid}) = _$OcidModelImpl;

  factory _OcidModel.fromJson(Map<String, dynamic> json) =
      _$OcidModelImpl.fromJson;

  @override
  String get ocid;
  @override
  @JsonKey(ignore: true)
  _$$OcidModelImplCopyWith<_$OcidModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
