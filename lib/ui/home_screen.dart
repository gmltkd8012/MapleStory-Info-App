import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/model/ocid_model.dart';
import 'package:maple_info_app/service/api_service.dart';

import '../widget/character_card_widget.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<CharacterBaseModel>> charcterBase = Apiservice.getCharacterBaseList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D454C),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.2),
        foregroundColor: Colors.white.withOpacity(0.8),
        title: const Text('캐릭터 랭킹',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: charcterBase,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return Text("...");
        },
      ),
    );
  }

  // 캐릭터 정보 아이템 리스트
  ListView makeList(AsyncSnapshot<List<CharacterBaseModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var characterBase = snapshot.data![index];
        return CharacterCardWidget(characterBase: characterBase);
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}


