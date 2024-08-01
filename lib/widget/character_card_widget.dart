import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/character_base_model.dart';


class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({
    super.key,
    required this.characterBase,
  });

  final CharacterBaseModel characterBase;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('카드 누름');
      },
      child: Hero(
        tag: characterBase.character_name,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.8),
              ),
              width: 200,
              clipBehavior: Clip.hardEdge,
              child: Transform.scale(
                scale: 1.5,
                child: Image.network(
                  characterBase.character_image,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(characterBase.character_name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}