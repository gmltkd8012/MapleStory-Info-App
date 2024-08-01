import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maple_info_app/model/character_base_by_ocid_model.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/service/api_service.dart';
import 'package:maple_info_app/widget/character_image_widget.dart';

import '../model/character_stat_detail_model.dart';

class DetailScreen extends StatefulWidget {
  final CharacterBaseByOcidModel characterBaseByOcid;

  const DetailScreen({
    super.key,
    required this.characterBaseByOcid,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}


class _DetailScreenState extends State<DetailScreen> {

  late Future<List<CharacterStatDetailModel>> statList;

  @override
  void initState() {
    super.initState();
    statList = Apiservice.getCharacterStatData(widget.characterBaseByOcid.ocid);
  }
  @override
  Widget build(BuildContext context) {

    var f = NumberFormat('###,###,###,###');

    return Scaffold(
      backgroundColor: Color(0xFF3D454C),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.black.withOpacity(0.2),
        foregroundColor: Colors.white.withOpacity(0.8),
        title: Text(widget.characterBaseByOcid.characterBase.character_name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: statList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50,
              ),
              child: Column(
                children: [
                  CharacterImageWidget(
                    characterBaseByOcid: widget.characterBaseByOcid,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
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
                          Text('서버 : ${widget.characterBaseByOcid.characterBase.world_name}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Lv.${widget.characterBaseByOcid.characterBase.character_level}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Exp : ${f.format(widget.characterBaseByOcid.characterBase.character_exp)} (${widget.characterBaseByOcid.characterBase.character_exp_rate}%)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('직업 : ${widget.characterBaseByOcid.characterBase.character_class}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('길드 : ${widget.characterBaseByOcid.characterBase.character_guild_name}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('${snapshot.data![20].stat_name}: ${snapshot.data![20].stat_value}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Text('...');
          }
        },
      ),
    );
  }
}
