import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:maple_info_app/data/repository_impl/ocid/ocid_repository_impl.dart';
import 'package:maple_info_app/domain/model/stat/stat_model.dart';
import 'package:maple_info_app/domain/repository/basic/basic_repository.dart';
import 'package:maple_info_app/domain/repository/ocid/ocid_repository.dart';
import 'package:maple_info_app/domain/repository/stat/stat_repository.dart';
import 'package:maple_info_app/domain/usecase/basic/basic_usecase.dart';
import 'package:maple_info_app/domain/usecase/basic/get_basic_usecase.dart';
import 'package:maple_info_app/domain/usecase/ocid/get_ocid_usecase.dart';
import 'package:maple_info_app/domain/usecase/ocid/ocid_usecase.dart';
import 'package:maple_info_app/domain/usecase/stat/get_stat_usecase.dart';
import 'package:maple_info_app/domain/usecase/stat/stat_usecase.dart';


import '../core/locator/service_locator.dart';
import '../domain/model/basic/basic_model.dart';
import '../domain/model/ocid/ocid_model.dart';
import '../domain/model/total/character_total_model.dart';

class Apiservice {



  // 개별 Input 데이터
  static const List<String> characterNameList = ['셔칸'];


  // 조회 날짜 DATE
  static String date = DateFormat('yyyy-MM-dd').format(
      (DateTime.now()).subtract(
          Duration(days: 1)
      )
  );

  // ===========================================================================
  // ===========================================================================
  // ===========================================================================


  // 식별자, 기본 정보, 종합 능력치 합친 데이터 모델
  static Future<List<CharacterTotalModel>> getCharacterTotalList() async {
    List<CharacterTotalModel> characterInfoList = [];

    for (var name in characterNameList) {
      OcidModel ocidModel = await _fetchOcid(name);
      BasicModel characterBasicModel = await _fetchBasic(ocidModel.ocid, date);
      StatModel characterStatModel = await _fetchStat(ocidModel.ocid, date);

      characterInfoList.add(
          CharacterTotalModel(
            ocid: ocidModel.ocid,
            characterBasic: characterBasicModel,
            characterStat: characterStatModel,
          )
      );
    }

    return characterInfoList;
  }





  static Future<OcidModel> _fetchOcid(String characterName) async {

    OcidUsecase ocidUsecase = OcidUsecase(locator<OcidRepository>());

    final result = await ocidUsecase.execute(
        usecase: GetOcidUsecase(characterName)
    );

    print('[#] result -> ${result.ocid}');
    return result;
  }

  static Future<BasicModel> _fetchBasic(String ocid, String date) async {

    BasicUsecase basicUsecase = BasicUsecase(locator<BasicRepository>());

    final result = await basicUsecase.execute(
        usecase: GetBasicUsecase(ocid, date),
    );

    return result;
  }

  static Future<StatModel> _fetchStat(String ocid, String date) async {

    StatUsecase statUsecase = StatUsecase(locator<StatRepository>());
    final result = await statUsecase.execute(
      usecase: GetStatUsecase(ocid, date),
    );

    return result;
  }
}