import 'character_stat_detail_model.dart';

class CharacterStatModel {
  final String date, character_class;
  final List<CharacterStatDetailModel> final_stat;

  CharacterStatModel({
    required this.date,
    required this.character_class,
    required this.final_stat,
  });

  factory CharacterStatModel.fromjson(Map<String, dynamic> json) {
    var list = json['final_stat'] as List;
    List<CharacterStatDetailModel> finalStatList = list.map((i) =>
      CharacterStatDetailModel.fromjson(i)).toList();

    return CharacterStatModel(
      date: json['date'],
      character_class: json['character_class'],
      final_stat: finalStatList,
    );
  }
}