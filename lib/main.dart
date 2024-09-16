import 'package:flutter/material.dart';
import 'package:maple_info_app/ui/home_screen.dart';

import 'core/locator/service_locator.dart';

void main() {
  setLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}



