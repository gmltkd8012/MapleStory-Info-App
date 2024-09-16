import 'package:maple_info_app/domain/model/ocid/ocid_model.dart';
import 'package:maple_info_app/domain/repository/repository.dart';

abstract class OcidRepository extends Repository {

  Future<OcidModel> getOcid({
    required String characterName,
  });
}