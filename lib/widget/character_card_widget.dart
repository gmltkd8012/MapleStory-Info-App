import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/model/character_base_by_ocid_model.dart';
import 'package:maple_info_app/ui/detail_screen.dart';
import 'package:maple_info_app/widget/character_image_widget.dart';

import '../model/character_base_model.dart';


class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({
    super.key,
    required this.characterBaseByOcid,
  });

  final CharacterBaseByOcidModel characterBaseByOcid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
              DetailScreen(
                characterBaseByOcid: characterBaseByOcid,
              ),
            fullscreenDialog: false,
          ),
        );
      },
      child: Column(
        children: [
          CharacterImageWidget(
              characterBaseByOcid: characterBaseByOcid,
          ),
          SizedBox(
            height: 20,
          ),
          Text(characterBaseByOcid.characterBase.character_name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}