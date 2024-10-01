// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_total_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterTotalModelImpl _$$CharacterTotalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterTotalModelImpl(
      ocid: json['ocid'] as String,
      characterBasic:
          BasicModel.fromJson(json['characterBasic'] as Map<String, dynamic>),
      characterStat:
          StatModel.fromJson(json['characterStat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharacterTotalModelImplToJson(
        _$CharacterTotalModelImpl instance) =>
    <String, dynamic>{
      'ocid': instance.ocid,
      'characterBasic': instance.characterBasic,
      'characterStat': instance.characterStat,
    };
