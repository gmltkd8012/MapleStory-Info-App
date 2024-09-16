import 'package:maple_info_app/data/dto/character/ocid/ocid.dto.dart';
import 'package:maple_info_app/domain/model/ocid/ocid_model.dart';

extension OcidX on OcidDto {
  OcidModel toModel() {
    return OcidModel(
        ocid: ocid,
    );
  }
}