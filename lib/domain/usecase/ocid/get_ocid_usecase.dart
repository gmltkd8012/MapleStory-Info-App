import 'package:maple_info_app/domain/repository/ocid/ocid_repository.dart';
import 'package:maple_info_app/domain/usecase/remote_usecase.dart';

class GetOcidUsecase extends RemoteUsecase<OcidRepository> {

  final String characterName;

  GetOcidUsecase(this.characterName);

  @override
  Future call(OcidRepository repository) async {
    print('[2] usecase call request @@@@@@');
    final response =  await repository.getOcid(characterName: characterName);
    print('[@] usecase call response -> ${response.ocid}');
    return response;
  }
}