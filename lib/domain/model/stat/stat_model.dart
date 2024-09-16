import 'package:freezed_annotation/freezed_annotation.dart';

import 'final_stat_model.dart';

part 'stat_model.freezed.dart';
part 'stat_model.g.dart';

@freezed
class StatModel with _$StatModel {
  const factory StatModel ({
    required List<FinalStatModel> final_stat,
  }) = _StatModel;

  factory StatModel.fromJson(Map<String, dynamic> json) => _$StatModelFromJson(json);
}