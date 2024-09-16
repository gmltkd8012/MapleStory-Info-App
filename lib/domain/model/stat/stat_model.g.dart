// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatModelImpl _$$StatModelImplFromJson(Map<String, dynamic> json) =>
    _$StatModelImpl(
      final_stat: (json['final_stat'] as List<dynamic>)
          .map((e) => FinalStatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StatModelImplToJson(_$StatModelImpl instance) =>
    <String, dynamic>{
      'final_stat': instance.final_stat,
    };
