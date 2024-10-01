import '../../core/locator/service_locator.dart';
import '../../domain/model/basic/basic_model.dart';
import '../../domain/model/ocid/ocid_model.dart';
import '../../domain/model/stat/stat_model.dart';
import '../../domain/repository/basic/basic_repository.dart';
import '../../domain/repository/ocid/ocid_repository.dart';
import '../../domain/repository/stat/stat_repository.dart';
import '../../domain/usecase/basic/basic_usecase.dart';
import '../../domain/usecase/basic/get_basic_usecase.dart';
import '../../domain/usecase/ocid/get_ocid_usecase.dart';
import '../../domain/usecase/ocid/ocid_usecase.dart';
import '../../domain/usecase/stat/get_stat_usecase.dart';
import '../../domain/usecase/stat/stat_usecase.dart';

mixin FetchUtil {

  Future<OcidModel> fetchOcid(String characterName) async {

    OcidUsecase ocidUsecase = OcidUsecase(locator<OcidRepository>());
    final result = await ocidUsecase.execute(
        usecase: GetOcidUsecase(characterName)
    );

    return result;
  }

  Future<BasicModel> fetchBasic(String ocid, String date) async {

    BasicUsecase basicUsecase = BasicUsecase(locator<BasicRepository>());

    final result = await basicUsecase.execute(
      usecase: GetBasicUsecase(ocid, date),
    );

    return result;
  }

  Future<StatModel> fetchStat(String ocid, String date) async {

    StatUsecase statUsecase = StatUsecase(locator<StatRepository>());
    final result = await statUsecase.execute(
      usecase: GetStatUsecase(ocid, date),
    );

    return result;
  }
}