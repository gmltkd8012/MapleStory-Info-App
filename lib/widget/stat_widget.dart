import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maple_info_app/widget/stat_detail_widget.dart';

import '../domain/model/total/character_total_model.dart';

class StatWidget extends StatelessWidget {
  const StatWidget({
    super.key,
    required this.characterData,
  });

  final CharacterTotalModel characterData;

  @override
  Widget build(BuildContext context) {

    var f = NumberFormat("###,###,###,###");

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black.withOpacity(0.2),
      ),
      width: 400,
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '서버 : ${characterData.characterBasic.world_name}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lv: ${characterData.characterBasic.character_level}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Exp : ${f.format(characterData.characterBasic.character_exp)} (${characterData.characterBasic.character_exp_rate}%)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '직업 : ${characterData.characterBasic.character_class}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '길드 : ${characterData.characterBasic.character_guild_name}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            StatDetailWidget(
              characterData: characterData
            ),
          ],
        ),
      ),
    );
  }
}