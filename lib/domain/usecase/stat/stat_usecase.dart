import 'package:maple_info_app/domain/repository/stat/stat_repository.dart';

import '../remote_usecase.dart';

class StatUsecase {


  final StatRepository _statRepository;

  StatUsecase(this._statRepository);

  Future execute<T>({
    required RemoteUsecase usecase
  }) async {
    final result = await usecase(_statRepository);
    return result;
  }
}