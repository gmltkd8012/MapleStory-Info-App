import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maple_info_app/widget/stat_detail_widget.dart';

import '../model/character_stat_detail_model.dart';
import '../ui/detail_screen.dart';

class StatWidget extends StatelessWidget {
  const StatWidget({
    super.key,
    required this.widget,
    required this.f,
    required this.statList,
  });

  final DetailScreen widget;
  final NumberFormat f;
  final Future<List<CharacterStatDetailModel>> statList;

  @override
  Widget build(BuildContext context) {
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
              '서버 : ${widget.characterBaseByOcid.characterBase.world_name}',
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
              'Lv: ${widget.characterBaseByOcid.characterBase.character_level}',
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
              'Exp : ${f.format(widget.characterBaseByOcid.characterBase.character_exp)} (${widget.characterBaseByOcid.characterBase.character_exp_rate}%)',
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
              '직업 : ${widget.characterBaseByOcid.characterBase.character_class}',
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
              '길드 : ${widget.characterBaseByOcid.characterBase.character_guild_name}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            StatDetailWidget(statList: statList),
          ],
        ),
      ),
    );
  }
}