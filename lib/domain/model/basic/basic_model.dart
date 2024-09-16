import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_model.freezed.dart';
part 'basic_model.g.dart';

@freezed
class BasicModel with _$BasicModel {
  const factory BasicModel ({
    required String character_name,
    required String world_name,
    required String character_class,
    required int character_level,
    required int character_exp,
    required String character_exp_rate,
    required String character_guild_name,
    required String character_image,
    required String character_date_create,
    required String liberation_quest_clear_flag,
  }) = _BasicModel;



  factory BasicModel.fromJson(Map<String, dynamic> json) =>
      _$BasicModelFromJson(json);
}