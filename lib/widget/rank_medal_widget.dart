import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RankMedalWidget extends StatelessWidget {
  final int? index;
  final double textSize;
  final FontWeight textWeight;

  const RankMedalWidget({
    super.key,
    required this.index,
    required this.textSize,
    required this.textWeight,
  });

  Color rankMedalBgColor() {
    switch (index) {
      case 0: { // Gold
        return Colors.amber;
      }
      case 1: { // Sliver
        return Color(0xFFC0C0C0);
      }
      case 2: { // Bronze
        return Color(0xFFCD7F32);
      }
      default: {
        return Color(0xFF3D454C);
      }
    }
  }

  Color rankMedalTextColor() {
    switch (index) {
      case 1:
        { // Sliver
          return Colors.black;
        }
      default: {
        return Colors.white;
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
        color: rankMedalBgColor(),
      ),
      width: 50,
      height: 50,
      child: Center(
        child: Text('${index! + 1}',
          style: TextStyle(
            fontSize: textSize,
            fontWeight: textWeight,
            color: rankMedalTextColor(),
          ),
        ),
      ),
    );
  }
}
