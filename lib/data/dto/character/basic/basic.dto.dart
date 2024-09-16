import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic.dto.freezed.dart';
part 'basic.dto.g.dart';

@freezed
class BasicDto with _$BasicDto {
  const factory BasicDto ({
    required String date,
    required String character_name,
    required String world_name,
    required String character_gender,
    required String character_class,
    required String character_class_level,
    required int character_level,
    required int character_exp,
    required String character_exp_rate,
    required String character_guild_name,
    required String character_image,
    required String character_date_create,
    required String liberation_quest_clear_flag,
  }) = _BasicDto;

  factory BasicDto.fromJson(Map<String, dynamic> json) => _$BasicDtoFromJson(json);
}