import 'package:flutter/material.dart';
import 'package:page3/screen/main_screen.dart';
import 'package:page3/screen/page1.dart';
import 'package:page3/screen/page2.dart';
import 'package:page3/screen/page3.dart';
import 'package:page3/widget/common_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: bg_color,
        primarySwatch: Colors.blue,
      ),
      home:Page1() ,
    );
  }
}

