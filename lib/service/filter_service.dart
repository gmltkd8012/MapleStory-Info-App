
import '../domain/model/total/character_total_model.dart';

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
            a.characterBasic.character_level.compareTo(
                b.characterBasic.character_level
            )
        );
        break;
      }
      case '캐릭터 생성일': {
        sortedList.sort((b, a) {
          DateTime dateA = DateTime.parse(
              a.characterBasic.character_date_create);

          DateTime dateB = DateTime.parse(
              b.characterBasic.character_date_create);

          return dateB.compareTo(dateA);
        });
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