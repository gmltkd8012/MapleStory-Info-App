import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/character_stat_detail_model.dart';

class StatDetailWidget extends StatelessWidget {
  const StatDetailWidget({
    super.key,
    required this.statList,
  });

  final Future<List<CharacterStatDetailModel>> statList;

  String convertNumber(CharacterStatDetailModel data) {
    var f = NumberFormat('###,###,###,###');

    if ((data.stat_name.contains('스탯공격력') || data.stat_name.contains('전투력')) == true ) {
      return f.format(int.parse(data.stat_value)).toString();
    }

    return data.stat_value;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: statList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF3D454C).withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: 350,
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var stat = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      '${stat.stat_name}: ${convertNumber(stat)}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Text('...');
          }
        });
  }
}