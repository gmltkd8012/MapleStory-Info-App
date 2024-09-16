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
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: Column(
            children: [
              Text('필터',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
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
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop('전투력');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.2),
                  border: Border.all(
                      width: 1,
                      color: Colors.white
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.grey,
                      Colors.black.withOpacity(0.5),
                    ],
                  )
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
                Navigator.of(context).pop('레벨');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.2),
                  border: Border.all(
                      width: 1,
                      color: Colors.white
                  ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.grey,
                        Colors.black.withOpacity(0.5),
                      ],
                    )
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
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop('좆사기직업');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.2),
                  border: Border.all(
                    width: 1,
                    color: Colors.white
                  ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.grey,
                        Colors.black.withOpacity(0.5),
                      ],
                    )
                ),
                width: 200,
                height: 50,
                child: Center(
                  child: Text('좆사기직업',
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
                Navigator.of(context).pop('캐릭터 생성일');
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.2),
                    border: Border.all(
                        width: 1,
                        color: Colors.white
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.grey,
                        Colors.black.withOpacity(0.5),
                      ],
                    )
                ),
                width: 200,
                height: 50,
                child: Center(
                  child: Text('캐릭터 생성일',
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
