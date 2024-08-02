import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteMoveWidget extends StatelessWidget {
  final String character_name;

  const WebsiteMoveWidget({
    super.key,
    required this.character_name,
  });

  onButtonTap() async {
    final url = Uri.parse("https://maplescouter.com/info?name=$character_name&preset=00000");
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onButtonTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFFFC84B),
        ),
        width: 400,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('자세히 보기',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            SizedBox(
              width: 105,
            ),
            Icon(Icons.arrow_forward_ios_rounded,
              color: Colors.black.withOpacity(0.8),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),

    );
  }
}
