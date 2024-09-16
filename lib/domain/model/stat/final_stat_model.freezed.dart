// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinalStatModel _$FinalStatModelFromJson(Map<String, dynamic> json) {
  return _FinalStatModel.fromJson(json);
}

/// @nodoc
mixin _$FinalStatModel {
  String get stat_name => throw _privateConstructorUsedError;
  String get stat_value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinalStatModelCopyWith<FinalStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalStatModelCopyWith<$Res> {
  factory $FinalStatModelCopyWith(
          FinalStatModel value, $Res Function(FinalStatModel) then) =
      _$FinalStatModelCopyWithImpl<$Res, FinalStatModel>;
  @useResult
  $Res call({String stat_name, String stat_value});
}

/// @nodoc
class _$FinalStatModelCopyWithImpl<$Res, $Val extends FinalStatModel>
    implements $FinalStatModelCopyWith<$Res> {
  _$FinalStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat_name = null,
    Object? stat_value = null,
  }) {
    return _then(_value.copyWith(
      stat_name: null == stat_name
          ? _value.stat_name
          : stat_name // ignore: cast_nullable_to_non_nullable
              as String,
      stat_value: null == stat_value
          ? _value.stat_value
          : stat_value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinalStatModelImplCopyWith<$Res>
    implements $FinalStatModelCopyWith<$Res> {
  factory _$$FinalStatModelImplCopyWith(_$FinalStatModelImpl value,
          $Res Function(_$FinalStatModelImpl) then) =
      __$$FinalStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stat_name, String stat_value});
}

/// @nodoc
class __$$FinalStatModelImplCopyWithImpl<$Res>
    extends _$FinalStatModelCopyWithImpl<$Res, _$FinalStatModelImpl>
    implements _$$FinalStatModelImplCopyWith<$Res> {
  __$$FinalStatModelImplCopyWithImpl(
      _$FinalStatModelImpl _value, $Res Function(_$FinalStatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat_name = null,
    Object? stat_value = null,
  }) {
    return _then(_$FinalStatModelImpl(
      stat_name: null == stat_name
          ? _value.stat_name
          : stat_name // ignore: cast_nullable_to_non_nullable
              as String,
      stat_value: null == stat_value
          ? _value.stat_value
          : stat_value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalStatModelImpl implements _FinalStatModel {
  const _$FinalStatModelImpl(
      {required this.stat_name, required this.stat_value});

  factory _$FinalStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalStatModelImplFromJson(json);

  @override
  final String stat_name;
  @override
  final String stat_value;

  @override
  String toString() {
    return 'FinalStatModel(stat_name: $stat_name, stat_value: $stat_value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalStatModelImpl &&
            (identical(other.stat_name, stat_name) ||
                other.stat_name == stat_name) &&
            (identical(other.stat_value, stat_value) ||
                other.stat_value == stat_value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stat_name, stat_value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalStatModelImplCopyWith<_$FinalStatModelImpl> get copyWith =>
      __$$FinalStatModelImplCopyWithImpl<_$FinalStatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalStatModelImplToJson(
      this,
    );
  }
}

abstract class _FinalStatModel implements FinalStatModel {
  const factory _FinalStatModel(
      {required final String stat_name,
      required final String stat_value}) = _$FinalStatModelImpl;

  factory _FinalStatModel.fromJson(Map<String, dynamic> json) =
      _$FinalStatModelImpl.fromJson;

  @override
  String get stat_name;
  @override
  String get stat_value;
  @override
  @JsonKey(ignore: true)
  _$$FinalStatModelImplCopyWith<_$FinalStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
