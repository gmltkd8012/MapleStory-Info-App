import 'package:maple_info_app/data/dto/character/basic/basic.dto.dart';

import '../../../domain/model/basic/basic_model.dart';

extension BasicX on BasicDto {

  BasicModel toModel() {
    return BasicModel(
        character_name: character_name,
        world_name: world_name,
        character_class: character_class,
        character_level: character_level,
        character_exp: character_exp,
        character_exp_rate: character_exp_rate,
        character_guild_name: character_guild_name,
        character_image: character_image,
        character_date_create: character_date_create,
        liberation_quest_clear_flag: liberation_quest_clear_flag
    );
  }
}