import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/model/character_base_by_ocid_model.dart';
import 'package:maple_info_app/model/character_base_model.dart';

class CharacterImageWidget extends StatelessWidget {
  final CharacterBaseByOcidModel characterBaseByOcid;

  const CharacterImageWidget({
    super.key,
    required this.characterBaseByOcid,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: characterBaseByOcid.ocid,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.8),
          ),
          width: 200,
          clipBehavior: Clip.hardEdge,
          child: Transform.scale(
            scale: 1.5,
            child: Image.network(
              characterBaseByOcid.characterBase.character_image,
            ),
          ),
        ),
      ),
    );
  }
}
