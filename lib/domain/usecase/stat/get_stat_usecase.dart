import 'package:maple_info_app/domain/repository/stat/stat_repository.dart';
import 'package:maple_info_app/domain/usecase/remote_usecase.dart';

class GetStatUsecase extends RemoteUsecase<StatRepository> {

  final String ocid;
  final String date;

  GetStatUsecase(
      this.ocid,
      this.date,
  );

  @override
  Future call(StatRepository repository) async {

    final response = await repository.getCharacterStat(ocid: ocid, date: date);
    return response;
  }

}