// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatModel _$StatModelFromJson(Map<String, dynamic> json) {
  return _StatModel.fromJson(json);
}

/// @nodoc
mixin _$StatModel {
  List<FinalStatModel> get final_stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatModelCopyWith<StatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatModelCopyWith<$Res> {
  factory $StatModelCopyWith(StatModel value, $Res Function(StatModel) then) =
      _$StatModelCopyWithImpl<$Res, StatModel>;
  @useResult
  $Res call({List<FinalStatModel> final_stat});
}

/// @nodoc
class _$StatModelCopyWithImpl<$Res, $Val extends StatModel>
    implements $StatModelCopyWith<$Res> {
  _$StatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? final_stat = null,
  }) {
    return _then(_value.copyWith(
      final_stat: null == final_stat
          ? _value.final_stat
          : final_stat // ignore: cast_nullable_to_non_nullable
              as List<FinalStatModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatModelImplCopyWith<$Res>
    implements $StatModelCopyWith<$Res> {
  factory _$$StatModelImplCopyWith(
          _$StatModelImpl value, $Res Function(_$StatModelImpl) then) =
      __$$StatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FinalStatModel> final_stat});
}

/// @nodoc
class __$$StatModelImplCopyWithImpl<$Res>
    extends _$StatModelCopyWithImpl<$Res, _$StatModelImpl>
    implements _$$StatModelImplCopyWith<$Res> {
  __$$StatModelImplCopyWithImpl(
      _$StatModelImpl _value, $Res Function(_$StatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? final_stat = null,
  }) {
    return _then(_$StatModelImpl(
      final_stat: null == final_stat
          ? _value._final_stat
          : final_stat // ignore: cast_nullable_to_non_nullable
              as List<FinalStatModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatModelImpl implements _StatModel {
  const _$StatModelImpl({required final List<FinalStatModel> final_stat})
      : _final_stat = final_stat;

  factory _$StatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatModelImplFromJson(json);

  final List<FinalStatModel> _final_stat;
  @override
  List<FinalStatModel> get final_stat {
    if (_final_stat is EqualUnmodifiableListView) return _final_stat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_final_stat);
  }

  @override
  String toString() {
    return 'StatModel(final_stat: $final_stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatModelImpl &&
            const DeepCollectionEquality()
                .equals(other._final_stat, _final_stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_final_stat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatModelImplCopyWith<_$StatModelImpl> get copyWith =>
      __$$StatModelImplCopyWithImpl<_$StatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatModelImplToJson(
      this,
    );
  }
}

abstract class _StatModel implements StatModel {
  const factory _StatModel({required final List<FinalStatModel> final_stat}) =
      _$StatModelImpl;

  factory _StatModel.fromJson(Map<String, dynamic> json) =
      _$StatModelImpl.fromJson;

  @override
  List<FinalStatModel> get final_stat;
  @override
  @JsonKey(ignore: true)
  _$$StatModelImplCopyWith<_$StatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
