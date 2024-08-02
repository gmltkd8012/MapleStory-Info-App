import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_info_app/model/character_base_model.dart';
import 'package:maple_info_app/model/character_total_model.dart';

class CharacterImageWidget extends StatelessWidget {
  final CharacterTotalModel characterData;

  const CharacterImageWidget({
    super.key,
    required this.characterData,
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.amber,
                  ),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text('1',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
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
}
