// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatDto _$StatDtoFromJson(Map<String, dynamic> json) {
  return _StatDto.fromJson(json);
}

/// @nodoc
mixin _$StatDto {
  String get date => throw _privateConstructorUsedError;
  String get character_class => throw _privateConstructorUsedError;
  List<FinalStatModel> get final_stat => throw _privateConstructorUsedError;
  int get remain_ap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatDtoCopyWith<StatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatDtoCopyWith<$Res> {
  factory $StatDtoCopyWith(StatDto value, $Res Function(StatDto) then) =
      _$StatDtoCopyWithImpl<$Res, StatDto>;
  @useResult
  $Res call(
      {String date,
      String character_class,
      List<FinalStatModel> final_stat,
      int remain_ap});
}

/// @nodoc
class _$StatDtoCopyWithImpl<$Res, $Val extends StatDto>
    implements $StatDtoCopyWith<$Res> {
  _$StatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? character_class = null,
    Object? final_stat = null,
    Object? remain_ap = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      character_class: null == character_class
          ? _value.character_class
          : character_class // ignore: cast_nullable_to_non_nullable
              as String,
      final_stat: null == final_stat
          ? _value.final_stat
          : final_stat // ignore: cast_nullable_to_non_nullable
              as List<FinalStatModel>,
      remain_ap: null == remain_ap
          ? _value.remain_ap
          : remain_ap // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatDtoImplCopyWith<$Res> implements $StatDtoCopyWith<$Res> {
  factory _$$StatDtoImplCopyWith(
          _$StatDtoImpl value, $Res Function(_$StatDtoImpl) then) =
      __$$StatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String character_class,
      List<FinalStatModel> final_stat,
      int remain_ap});
}

/// @nodoc
class __$$StatDtoImplCopyWithImpl<$Res>
    extends _$StatDtoCopyWithImpl<$Res, _$StatDtoImpl>
    implements _$$StatDtoImplCopyWith<$Res> {
  __$$StatDtoImplCopyWithImpl(
      _$StatDtoImpl _value, $Res Function(_$StatDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? character_class = null,
    Object? final_stat = null,
    Object? remain_ap = null,
  }) {
    return _then(_$StatDtoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      character_class: null == character_class
          ? _value.character_class
          : character_class // ignore: cast_nullable_to_non_nullable
              as String,
      final_stat: null == final_stat
          ? _value._final_stat
          : final_stat // ignore: cast_nullable_to_non_nullable
              as List<FinalStatModel>,
      remain_ap: null == remain_ap
          ? _value.remain_ap
          : remain_ap // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatDtoImpl implements _StatDto {
  const _$StatDtoImpl(
      {required this.date,
      required this.character_class,
      required final List<FinalStatModel> final_stat,
      required this.remain_ap})
      : _final_stat = final_stat;

  factory _$StatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatDtoImplFromJson(json);

  @override
  final String date;
  @override
  final String character_class;
  final List<FinalStatModel> _final_stat;
  @override
  List<FinalStatModel> get final_stat {
    if (_final_stat is EqualUnmodifiableListView) return _final_stat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_final_stat);
  }

  @override
  final int remain_ap;

  @override
  String toString() {
    return 'StatDto(date: $date, character_class: $character_class, final_stat: $final_stat, remain_ap: $remain_ap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatDtoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.character_class, character_class) ||
                other.character_class == character_class) &&
            const DeepCollectionEquality()
                .equals(other._final_stat, _final_stat) &&
            (identical(other.remain_ap, remain_ap) ||
                other.remain_ap == remain_ap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, character_class,
      const DeepCollectionEquality().hash(_final_stat), remain_ap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatDtoImplCopyWith<_$StatDtoImpl> get copyWith =>
      __$$StatDtoImplCopyWithImpl<_$StatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatDtoImplToJson(
      this,
    );
  }
}

abstract class _StatDto implements StatDto {
  const factory _StatDto(
      {required final String date,
      required final String character_class,
      required final List<FinalStatModel> final_stat,
      required final int remain_ap}) = _$StatDtoImpl;

  factory _StatDto.fromJson(Map<String, dynamic> json) = _$StatDtoImpl.fromJson;

  @override
  String get date;
  @override
  String get character_class;
  @override
  List<FinalStatModel> get final_stat;
  @override
  int get remain_ap;
  @override
  @JsonKey(ignore: true)
  _$$StatDtoImplCopyWith<_$StatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
