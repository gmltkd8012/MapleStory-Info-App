import 'package:maple_info_app/domain/repository/basic/basic_repository.dart';
import 'package:maple_info_app/domain/usecase/basic/get_basic_usecase.dart';
import 'package:maple_info_app/domain/usecase/remote_usecase.dart';

class BasicUsecase {


  BasicRepository _basicRepository;

  BasicUsecase(this._basicRepository);


  Future execute<T> ({
    required RemoteUsecase usecase,
  }) async {
    final result = await usecase(_basicRepository);
    print('[@] usecase execute response -> $result');
    return result;
  }

}