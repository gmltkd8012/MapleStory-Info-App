import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/model/character_total_model.dart';
import 'package:maple_info_app/model/ocid_model.dart';
import 'package:maple_info_app/service/api_service.dart';
import 'package:maple_info_app/service/filter_service.dart';
import 'package:maple_info_app/widget/rank_medal_widget.dart';

import '../dialog/filter_dialog.dart';
import '../widget/character_card_widget.dart';



class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<CharacterTotalModel>> totalData = Apiservice.getCharacterTotalList();
  late Future<List<CharacterTotalModel>> sortedData;
  String? filter;


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() {
    setState(() {
      sortedData = FilterService.getFilterData(filter, totalData);
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
        future: sortedData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.2),
                          border: Border.all(
                            width: 2,
                            color: Colors.grey,
                          )
                        ),
                        width: 120,
                        height: 50,
                        child: Center(
                          child: Text(
                            (filter != null) ? filter! : '전투력',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(Apiservice.date,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    flex: 4,
                    child: makeList(snapshot),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.2),
                            Colors.grey,
                          ]
                        ),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey,
                        )
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Text('캐릭터명',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Text('|',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Text(
                                    (filter != null) ? filter! : '전투력',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                              ],
                            )
                          ),
                          Expanded(
                            flex: 8,
                            child: makeRankList(snapshot)
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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

  // 캐릭터 랭킹 리스트
  ListView makeRankList(AsyncSnapshot<List<CharacterTotalModel>> snapshot) {

    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var characterData = snapshot.data![index];
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: RankMedalWidget(
                      index: index,
                      textSize: 14,
                      textWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: SizedBox(
                      width: 80,
                      height: 25,
                      child: Text(characterData.characterBase.character_name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: SizedBox(
                      height: 25,
                      child: Text(filterData(characterData),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }

  String formatNumber(int number) {
    if (number == 0) return '0';

    const List<String> units = ['', '만', '억'];
    int unitIndex = 0;
    String result = '';

    while (number > 0) {
      int part = number % 10000;
      if (part > 0) {
        result = '$part${units[unitIndex]} $result';
      }
      number ~/= 10000;
      unitIndex++;
    }
    return result.trim();
  }

  String filterData(CharacterTotalModel data) {
    switch(filter) {
      case '전투력':
        return formatNumber(int.parse(data.characterStat[42].stat_value));
      case '레벨':
        return 'Lv. ${data.characterBase.character_level}';
      case '좆사기직업':
        return data.characterBase.character_class;
      default:
        return formatNumber(int.parse(data.characterStat[42].stat_value));
    }
  }
}

