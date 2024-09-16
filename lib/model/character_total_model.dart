import '../domain/model/basic/basic_model.dart';
import '../domain/model/stat/stat_model.dart';


class CharacterTotalModel {

  final String ocid;
  final BasicModel characterBase;
  final StatModel characterStat;

  CharacterTotalModel ({
    required this.ocid,
    required this.characterBase,
    required this.characterStat,
  });

}