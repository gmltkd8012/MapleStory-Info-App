import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../dto/character/stat/stat.dto.dart';

part 'stat.api.g.dart';

@RestApi()
abstract class StatApi {

  factory StatApi(Dio dio, {String baseUrl}) = _StatApi;

  @GET('/maplestory/v1/character/stat')
  Future<StatDto> getCharacterBasic(
      @Query('ocid') String ocid,
      @Query('date') String date,
  );
}