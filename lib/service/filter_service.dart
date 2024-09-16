import 'package:maple_info_app/model/character_total_model.dart';
import 'package:maple_info_app/service/api_service.dart';

class FilterService {


  static Future<List<CharacterTotalModel>> getFilterData(String? tag, Future<List<CharacterTotalModel>> characterData) async {
    List<CharacterTotalModel> sortedList = [];

    for (var data in await characterData) {
      sortedList.add(data);
    }

    switch (tag) {
      case '전투력': {
        sortedList.sort((b, a) =>
            int.parse(a.characterStat.final_stat[42].stat_value).compareTo(
                int.parse(b.characterStat.final_stat[42].stat_value)
            )
        );
        break;
      }
      case '레벨': {
        sortedList.sort((b, a) =>
            a.characterBase.character_level.compareTo(
                b.characterBase.character_level
            )
        );
        break;
      }
      case '좆사기직업': {
        break;
      }
      default: {
        sortedList.sort((b, a) =>
            int.parse(a.characterStat.final_stat[42].stat_value).compareTo(
                int.parse(b.characterStat.final_stat[42].stat_value)
            )
        );
        break;
      }
    }

    return sortedList;
  }

}