



import 'package:maple_info_app/data/dto/character/stat/stat.dto.dart';
import 'package:maple_info_app/domain/model/stat/stat_model.dart';

extension StatX on StatDto {

  StatModel toModel() {
    return StatModel(
        final_stat: final_stat,
    );
  }
}