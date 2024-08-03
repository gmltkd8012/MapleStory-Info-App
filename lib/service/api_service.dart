import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:maple_info_app/model/character_stat_model.dart';
import 'package:maple_info_app/model/character_total_model.dart';
import 'package:maple_info_app/model/ocid_model.dart';

import '../model/character_base_model.dart';
import '../model/character_stat_detail_model.dart';

class Apiservice {


  /// 공용 API 키 & Header
  static const String apiHeader = "x-nxopen-api-key";
  static const String apiKey = "test_3b6a949347190572d7375b76ab18f2ac0a7bfac78da8ade3a4243cf87808e139efe8d04e6d233bd35cf2fabdeb93fb0d";

  // Base Url
  static const String baseUrl = "https://open.api.nexon.com";

  // Ocid API 및 Params
  static const String ocidEndPoint = "maplestory/v1/id";
  static const String ocidCharacterParams1 = "character_name";


  // 캐릭터 기본 정보 조회 API 및 Params
  static const String characterBaseEndPoint = "maplestory/v1/character/basic";
  static const String characterBaseParams1 = "ocid";
  static const String characterBaseParams2 = "date";

  // 캐릭터 스텟 조회 API 및 Params
  static const String characterStatEndPoint = "maplestory/v1/character/stat";
  static const String characterStatParams1 = "ocid";
  static const String characterStatParams2 = "date";

  // 개별 Input 데이터
  static const List<String> characterNameList = ['셔칸', '맥겐', 'hongPD', '펠슈판', '내주량4병', '예티쿠션'];

  // ocid cache list
  static List<String> ocidList = [];

  // 조회 날짜 DATE
  static String date = DateFormat('yyyy-MM-dd').format(
      (DateTime.now()).subtract(
          Duration(days: 1)
      )
  );


  // 캐릭터 식별자 조회 API
  static Future<OcidModel> getOcidData(String name) async {

    final response = await http.get(
      Uri.parse('$baseUrl/$ocidEndPoint?'
          '$ocidCharacterParams1=$name'),
      headers: <String, String> {
        apiHeader : apiKey
      },
    );

    if (response.statusCode == 200) {
      print('성공 -> ${response.body}');
      OcidModel ocidModel = OcidModel.fromjson(jsonDecode(response.body));
      ocidList.add(ocidModel.ocid);
      return ocidModel;
    }

    throw Error();
  }

  // 기본 정보 조회 API
  static Future<CharacterBaseModel> getCharacterBaseData(String ocid) async {
    try {
      print(date);
      final response = await http.get(
        Uri.parse('$baseUrl/$characterBaseEndPoint?'
            '$characterBaseParams1=$ocid&'
            '$characterBaseParams2=$date'),
        headers: <String, String> {
          apiHeader : apiKey
        },
      );

      if (response.statusCode == 200) {
        print('캐릭터 정보 조회 성공 -> ${response.body}');
        return CharacterBaseModel.fromjson(jsonDecode(response.body));
      } else {
        print('캐릭터 정보 조회 실패 -> ${response.body}');
      }
    } catch (e) {
      print('오류 -> $e');
    }

    throw Error();
  }

  // 종합 능력치 정보 조회 API
  static Future<List<CharacterStatDetailModel>> getCharacterStatData(String ocid) async {
    final reponse = await http.get(
      Uri.parse('$baseUrl/$characterStatEndPoint?'
          '$characterStatParams1=$ocid&'
          '$characterStatParams2=$date'),
      headers: <String, String> {
        apiHeader : apiKey
      },
    );

    if (reponse.statusCode == 200) {
      CharacterStatModel characterStatModel =
      CharacterStatModel.fromjson(jsonDecode(reponse.body));

      return characterStatModel.final_stat;
    }

    throw Error();
  }


  // ===========================================================================
  // ===========================================================================
  // ===========================================================================


  // 식별자, 기본 정보, 종합 능력치 합친 데이터 모델
  static Future<List<CharacterTotalModel>> getCharacterTotalList() async {
    List<CharacterTotalModel> characterInfoList = [];

    for (var name in characterNameList) {
      OcidModel ocidModel = await getOcidData(name);
      CharacterBaseModel characterBaseModel = await getCharacterBaseData(ocidModel.ocid);
      List<CharacterStatDetailModel> characterStatModel = await getCharacterStatData(ocidModel.ocid);

      characterInfoList.add(
          CharacterTotalModel(
            ocid: ocidModel.ocid,
            characterBase: characterBaseModel,
            characterStat: characterStatModel,
          )
      );
    }

    return characterInfoList;
  }
}