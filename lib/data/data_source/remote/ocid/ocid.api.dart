import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../dto/character/ocid/ocid.dto.dart';

part 'ocid.api.g.dart';

@RestApi()
abstract class OcidApi {

  factory OcidApi(Dio dio, {String baseUrl}) = _OcidApi;

  @GET('/maplestory/v1/id')
  Future<OcidDto> getOcid(
    @Query('character_name') String characterName,
  );
}