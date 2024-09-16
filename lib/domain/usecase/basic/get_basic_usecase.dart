import 'package:maple_info_app/domain/repository/basic/basic_repository.dart';
import 'package:maple_info_app/domain/usecase/remote_usecase.dart';

class GetBasicUsecase extends RemoteUsecase<BasicRepository> {

  final String ocid;
  final String date;

  GetBasicUsecase(
    this.ocid,
    this.date,
  );

  @override
  Future call(BasicRepository repository) async {
    final response = await repository.getCharacterBasic(ocid: ocid, date: date);
    print(response.character_guild_name);
    return response;
  }

}