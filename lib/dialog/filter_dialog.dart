import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({
    super.key,
  });

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      alignment: Alignment.topRight,
      backgroundColor: Color(0xFF3D454C),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      title: Center(
        child: Text('필터',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop('Combat');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                width: 200,
                height: 50,
                child: Center(
                  child: Text('전투력',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop('Level');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                width: 200,
                height: 50,
                child: Center(
                  child: Text('레벨',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
