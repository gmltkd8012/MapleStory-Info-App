import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maple_info_app/domain/model/stat/final_stat_model.dart';

part 'stat.dto.freezed.dart';
part 'stat.dto.g.dart';

@freezed
class StatDto with _$StatDto {
  const factory StatDto ({
    required String date,
    required String character_class,
    required List<FinalStatModel> final_stat,
    required int remain_ap,
  }) = _StatDto;



  factory StatDto.fromJson(Map<String, dynamic> json) => _$StatDtoFromJson(json);
}