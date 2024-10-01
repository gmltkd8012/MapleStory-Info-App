import 'package:freezed_annotation/freezed_annotation.dart';

import '../basic/basic_model.dart';
import '../stat/stat_model.dart';

part 'character_total_model.freezed.dart';
part 'character_total_model.g.dart';

@freezed
class CharacterTotalModel with _$CharacterTotalModel {
  const factory CharacterTotalModel ({
    required String ocid,
    required BasicModel characterBasic,
    required StatModel characterStat,
  }) = _CharacterTotalModel;



  factory CharacterTotalModel.fromJson(Map<String, dynamic> json) => _$CharacterTotalModelFromJson(json);
}