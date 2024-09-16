import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocid_model.freezed.dart';
part 'ocid_model.g.dart';

@freezed
class OcidModel with _$OcidModel {
  const factory OcidModel ({
    required String ocid,
  }) = _OcidModel;

  factory OcidModel.fromJson(Map<String, dynamic> json) => _$OcidModelFromJson(json);
}