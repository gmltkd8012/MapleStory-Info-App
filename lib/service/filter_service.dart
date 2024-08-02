import 'package:maple_info_app/model/character_total_model.dart';
import 'package:maple_info_app/service/api_service.dart';

class FilterService {


  static Future<List<CharacterTotalModel>> getFilterData(String? tag) async {
    List<CharacterTotalModel> sortedList = [];

    final characterData = await Apiservice.getCharacterTotalList();

    for (var data in characterData) {
      sortedList.add(data);
    }

    switch (tag) {
      case 'Combat': {
        sortedList.sort((b, a) =>
            int.parse(a.characterStat[42].stat_value).compareTo(
                int.parse(b.characterStat[42].stat_value)
            )
        );
        break;
      }
      case 'Level': {
        sortedList.sort((b, a) =>
            a.characterBase.character_level.compareTo(
                b.characterBase.character_level
            )
        );
        break;
      }
      default: {
        break;
      }
    }

    return sortedList;
  }

}