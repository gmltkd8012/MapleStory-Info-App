import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/model/character_total_model.dart';

class CharacterImageWidget extends StatelessWidget {
  final CharacterTotalModel characterData;
  final int? index;

  const CharacterImageWidget({
    super.key,
    required this.characterData,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: characterData.ocid,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.8),
          ),
          width: 200,
          height: 200,
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                makeRankContainer(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45
                  ),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Image.network(
                      characterData.characterBase.character_image,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container makeRankContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: rankMedalBgColor(),
      ),
      width: 50,
      height: 50,
      child: Center(
        child: Text('${index! + 1}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: rankMedalTextColor(),
          ),
        ),
      ),
    );
  }

  Color rankMedalBgColor() {
    switch (index) {
      case 0: { // Gold
        return Colors.amber;
      }
      case 1: { // Sliver
        return Color(0xFFC0C0C0);
      }
      case 2: { // Bronze
        return Color(0xFFCD7F32);
      }
      default: {
        return Color(0xFF3D454C);
      }
    }
  }

  Color rankMedalTextColor() {
    switch (index) {
      case 1:
      { // Sliver
        return Colors.black;
      }
      default: {
        return Colors.white;
      }
    }
  }
}
