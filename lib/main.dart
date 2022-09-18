import 'package:flutter/material.dart';
import 'package:food_recip_ui_flutter/views/screens/page_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  PageSwitcher(),
    );
  }
}

