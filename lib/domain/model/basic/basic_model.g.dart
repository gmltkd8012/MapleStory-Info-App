// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicModelImpl _$$BasicModelImplFromJson(Map<String, dynamic> json) =>
    _$BasicModelImpl(
      character_name: json['character_name'] as String,
      world_name: json['world_name'] as String,
      character_class: json['character_class'] as String,
      character_level: (json['character_level'] as num).toInt(),
      character_exp: (json['character_exp'] as num).toInt(),
      character_exp_rate: json['character_exp_rate'] as String,
      character_guild_name: json['character_guild_name'] as String,
      character_image: json['character_image'] as String,
      character_date_create: json['character_date_create'] as String,
      liberation_quest_clear_flag:
          json['liberation_quest_clear_flag'] as String,
    );

Map<String, dynamic> _$$BasicModelImplToJson(_$BasicModelImpl instance) =>
    <String, dynamic>{
      'character_name': instance.character_name,
      'world_name': instance.world_name,
      'character_class': instance.character_class,
      'character_level': instance.character_level,
      'character_exp': instance.character_exp,
      'character_exp_rate': instance.character_exp_rate,
      'character_guild_name': instance.character_guild_name,
      'character_image': instance.character_image,
      'character_date_create': instance.character_date_create,
      'liberation_quest_clear_flag': instance.liberation_quest_clear_flag,
    };
