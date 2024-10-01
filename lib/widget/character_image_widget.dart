import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/widget/rank_medal_widget.dart';

import '../domain/model/total/character_total_model.dart';

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
            border: Border.all(
              width: 2,
              color: Colors.grey,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey.withOpacity(0.8),
                Colors.grey.withOpacity(0.5),
                Colors.grey.withOpacity(0.2),
              ]
            )
          ),
          width: 200,
          height: 200,
          clipBehavior: Clip.hardEdge,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RankMedalWidget(
                  index: index,
                  textSize: 24,
                  textWeight: FontWeight.w700,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45
                  ),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Image.network(
                      characterData.characterBasic.character_image,
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
}
