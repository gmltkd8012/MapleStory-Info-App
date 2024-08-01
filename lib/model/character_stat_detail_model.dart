class CharacterStatDetailModel {
  final String stat_name, stat_value;

  CharacterStatDetailModel.fromjson(Map<String, dynamic> json)
    : stat_name = json['stat_name'],
      stat_value = json['stat_value'];
}