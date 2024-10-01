import 'package:maple_info_app/data/data_source/remote/basic/basic.api.dart';
import 'package:maple_info_app/data/mapper/basic/basic.mapper.dart';
import 'package:maple_info_app/domain/model/basic/basic_model.dart';
import 'package:maple_info_app/domain/repository/basic/basic_repository.dart';

class BasicRepositoryImpl extends BasicRepository {

  final BasicApi _basicApi;

  BasicRepositoryImpl(this._basicApi);

  @override
  Future<BasicModel> getCharacterBasic({
    required String ocid,
    required String date,
  }) async {

    try {
      print('api -> ${(_basicApi == null) ? 'api 없음' : 'api 있음'} / ocid -> $ocid / date -> $date');
      final response = await _basicApi.getCharacterBasic(ocid, date);
      print('Response received: ${response.toString()}');
      print('@@@@@@@@@@@@@@@@@2');  // 여기까지 실행되는지 확인
      return response.toModel();
    } catch (e) {
      print('에러 발생 ;;;; Error occurred: $e');
    }

    final response = await _basicApi.getCharacterBasic(ocid, date);
    return response.toModel();
  }




}