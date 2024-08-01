class CharacterBaseModel {
  final String date,
      character_name,
      world_name,
      character_gender,
      character_class,
      character_class_level,
      character_exp_rate,
      character_guild_name,
      character_image;

  final int character_level, character_exp;

  CharacterBaseModel.fromjson(Map<String, dynamic> json)
      : date = json['date'],
        character_name = json['character_name'],
        world_name = json['world_name'],
        character_gender = json['character_gender'],
        character_class = json['character_class'],
        character_class_level = json['character_class_level'],
        character_level = json['character_level'],
        character_exp = json['character_exp'],
        character_exp_rate = json['character_exp_rate'],
        character_guild_name = json['character_guild_name'],
        character_image = json['character_image'];
  }