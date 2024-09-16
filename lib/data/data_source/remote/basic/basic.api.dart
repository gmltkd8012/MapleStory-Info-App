import 'package:dio/dio.dart';
import 'package:maple_info_app/data/dto/character/basic/basic.dto.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'basic.api.g.dart';

@RestApi()
abstract class BasicApi {
  
  factory BasicApi(Dio dio, {String baseUrl}) = _BasicApi;
  
  @GET('/maplestory/v1/character/basic')
  Future<BasicDto> getCharacterBasic(
    @Query('ocid') String ocid,
    @Query('date') String date,
  );
}