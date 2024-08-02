import 'package:maple_info_app/model/character_stat_detail_model.dart';

import 'character_base_model.dart';

class CharacterTotalModel {

  final String ocid;
  final CharacterBaseModel characterBase;
  final List<CharacterStatDetailModel> characterStat;

  CharacterTotalModel ({
    required this.ocid,
    required this.characterBase,
    required this.characterStat,
  });

}