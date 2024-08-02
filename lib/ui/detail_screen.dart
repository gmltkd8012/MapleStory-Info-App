import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maple_info_app/model/character_base_by_ocid_model.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/service/api_service.dart';
import 'package:maple_info_app/widget/character_image_widget.dart';

import '../model/character_stat_detail_model.dart';
import '../widget/stat_detail_widget.dart';
import '../widget/stat_widget.dart';
import '../widget/website_move_widget.dart';

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
        title: Text(
          widget.characterBaseByOcid.characterBase.character_name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
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
            StatWidget(
              widget: widget,
              f: f,
              statList: statList
            ),
            SizedBox(
              height: 20,
            ),
            WebsiteMoveWidget(
              character_name: widget.characterBaseByOcid.characterBase.character_name,
            )
          ],
        ),
      ),
    );
  }
}