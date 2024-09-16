import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocid.dto.freezed.dart';
part 'ocid.dto.g.dart';

@freezed
class  OcidDto with _$OcidDto {
  const factory OcidDto ({
    required String ocid,
  }) = _OcidDto;

  factory OcidDto.fromJson(Map<String, dynamic> json) => _$OcidDtoFromJson(json);
}