import 'package:maple_info_app/data/data_source/remote/stat/stat.api.dart';
import 'package:maple_info_app/data/mapper/stat/stat.mapper.dart';
import 'package:maple_info_app/domain/model/stat/stat_model.dart';
import 'package:maple_info_app/domain/repository/stat/stat_repository.dart';

class StatRepositoryImpl extends StatRepository {

  final StatApi _statApi;

  StatRepositoryImpl(this._statApi);
  @override
  Future<StatModel> getCharacterStat({
    required String ocid,
    required String date,
  }) async {
    final response = await _statApi.getCharacterBasic(ocid, date);
    return response.toModel();
  }
}