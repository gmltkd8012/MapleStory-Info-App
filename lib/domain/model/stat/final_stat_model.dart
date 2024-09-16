import 'package:freezed_annotation/freezed_annotation.dart';

part 'final_stat_model.freezed.dart';
part 'final_stat_model.g.dart';

@freezed
class FinalStatModel with _$FinalStatModel {
  const factory FinalStatModel ({
    required String stat_name,
    required String stat_value,
  }) = _FinalStatModel;



  factory FinalStatModel.fromJson(Map<String, dynamic> json) => _$FinalStatModelFromJson(json);
}