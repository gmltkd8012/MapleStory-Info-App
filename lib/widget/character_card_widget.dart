import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/ui/detail_screen.dart';
import 'package:maple_info_app/widget/character_image_widget.dart';

import '../domain/model/total/character_total_model.dart';



class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({
    super.key,
    required this.characterData,
    required this.index,
  });

  final CharacterTotalModel characterData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
              DetailScreen(
                characterData: characterData,
                index: index,
              ),
            fullscreenDialog: false,
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CharacterImageWidget(
            characterData: characterData,
            index: index,
          ),
          SizedBox(
            height: 20,
          ),
          Text(characterData.characterBasic.character_name,
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