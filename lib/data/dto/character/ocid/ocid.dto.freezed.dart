// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocid.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OcidDto _$OcidDtoFromJson(Map<String, dynamic> json) {
  return _OcidDto.fromJson(json);
}

/// @nodoc
mixin _$OcidDto {
  String get ocid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcidDtoCopyWith<OcidDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcidDtoCopyWith<$Res> {
  factory $OcidDtoCopyWith(OcidDto value, $Res Function(OcidDto) then) =
      _$OcidDtoCopyWithImpl<$Res, OcidDto>;
  @useResult
  $Res call({String ocid});
}

/// @nodoc
class _$OcidDtoCopyWithImpl<$Res, $Val extends OcidDto>
    implements $OcidDtoCopyWith<$Res> {
  _$OcidDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$OcidDtoImplCopyWith<$Res> implements $OcidDtoCopyWith<$Res> {
  factory _$$OcidDtoImplCopyWith(
          _$OcidDtoImpl value, $Res Function(_$OcidDtoImpl) then) =
      __$$OcidDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ocid});
}

/// @nodoc
class __$$OcidDtoImplCopyWithImpl<$Res>
    extends _$OcidDtoCopyWithImpl<$Res, _$OcidDtoImpl>
    implements _$$OcidDtoImplCopyWith<$Res> {
  __$$OcidDtoImplCopyWithImpl(
      _$OcidDtoImpl _value, $Res Function(_$OcidDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocid = null,
  }) {
    return _then(_$OcidDtoImpl(
      ocid: null == ocid
          ? _value.ocid
          : ocid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcidDtoImpl implements _OcidDto {
  const _$OcidDtoImpl({required this.ocid});

  factory _$OcidDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcidDtoImplFromJson(json);

  @override
  final String ocid;

  @override
  String toString() {
    return 'OcidDto(ocid: $ocid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcidDtoImpl &&
            (identical(other.ocid, ocid) || other.ocid == ocid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ocid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OcidDtoImplCopyWith<_$OcidDtoImpl> get copyWith =>
      __$$OcidDtoImplCopyWithImpl<_$OcidDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcidDtoImplToJson(
      this,
    );
  }
}

abstract class _OcidDto implements OcidDto {
  const factory _OcidDto({required final String ocid}) = _$OcidDtoImpl;

  factory _OcidDto.fromJson(Map<String, dynamic> json) = _$OcidDtoImpl.fromJson;

  @override
  String get ocid;
  @override
  @JsonKey(ignore: true)
  _$$OcidDtoImplCopyWith<_$OcidDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
