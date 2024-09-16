// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatDtoImpl _$$StatDtoImplFromJson(Map<String, dynamic> json) =>
    _$StatDtoImpl(
      date: json['date'] as String,
      character_class: json['character_class'] as String,
      final_stat: (json['final_stat'] as List<dynamic>)
          .map((e) => FinalStatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      remain_ap: (json['remain_ap'] as num).toInt(),
    );

Map<String, dynamic> _$$StatDtoImplToJson(_$StatDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'character_class': instance.character_class,
      'final_stat': instance.final_stat,
      'remain_ap': instance.remain_ap,
    };
