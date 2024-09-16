import 'package:maple_info_app/domain/repository/repository.dart';

import '../../model/basic/basic_model.dart';

abstract class BasicRepository extends Repository {
  Future<BasicModel> getCharacterBasic({
    required String ocid,
    required String date,
  });
}