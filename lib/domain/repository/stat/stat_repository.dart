import 'package:maple_info_app/domain/repository/repository.dart';

import '../../model/stat/stat_model.dart';

abstract class StatRepository extends Repository {

  Future<StatModel> getCharacterStat({
    required String ocid,
    required String date,
  });

}