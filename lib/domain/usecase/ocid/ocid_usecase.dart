import 'package:maple_info_app/domain/repository/ocid/ocid_repository.dart';
import 'package:maple_info_app/domain/repository/repository.dart';
import 'package:maple_info_app/domain/usecase/remote_usecase.dart';

class OcidUsecase {

  final OcidRepository _ocidRepository;

  OcidUsecase(this._ocidRepository);

 Future execute<T>({
  required RemoteUsecase usecase
 }) async {
   print('[1] usecase execute @@@@@@');
   final result = await usecase(_ocidRepository);
   print('[@] usecase execute response -> $result');
   return result;
 }


}