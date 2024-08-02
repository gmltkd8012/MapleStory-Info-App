import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/model/character_total_model.dart';
import 'package:maple_info_app/model/ocid_model.dart';
import 'package:maple_info_app/service/api_service.dart';
import 'package:maple_info_app/service/filter_service.dart';

import '../dialog/filter_dialog.dart';
import '../widget/character_card_widget.dart';



class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<CharacterTotalModel>> totalData;
  String? filter;


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() {
    setState(() {
      totalData = FilterService.getFilterData(filter);
    });
  }

  void _showDilterDialog() async {
    final result = await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return FilterDialog();
      }
    );

    if (result != null) {
      setState(() {
        filter = result;
        fetchData();
      });
    }
  }

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
        actions: [
          IconButton(
            onPressed: _showDilterDialog,
            icon: Icon(
              Icons.filter_list_rounded
            )
          ),
        ],
      ),
      body: FutureBuilder(
        future: totalData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                    ),
                    child: makeList(snapshot),
                  ),
                ),
              ],
            );
          }
          return Center(
            child: Text('로딩중...',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  // 캐릭터 정보 아이템 리스트
  ListView makeList(AsyncSnapshot<List<CharacterTotalModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var characterData = snapshot.data![index];
        return CharacterCardWidget(
          characterData: characterData,
          index: index,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}

