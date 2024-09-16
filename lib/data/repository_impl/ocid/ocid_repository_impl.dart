import 'package:maple_info_app/data/mapper/ocid/ocid.mapper.dart';
import 'package:maple_info_app/domain/model/ocid/ocid_model.dart';
import 'package:maple_info_app/domain/repository/ocid/ocid_repository.dart';

import '../../data_source/remote/ocid/ocid.api.dart';

class OcidRepositoryImpl implements OcidRepository {

  final OcidApi _ocidApi;

  OcidRepositoryImpl(this._ocidApi);

  @override
  Future<OcidModel> getOcid({
    required String characterName
  }) async {

    print('[3-1] Repository Impl Request -> $characterName');
   final response = await _ocidApi.getOcid(characterName);

    print('[3-2] Repository Impl Response -> ${response.ocid}');
   return response.toModel();
  }

}