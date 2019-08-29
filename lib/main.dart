import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0XFFFF3334),
        accentColor: Color(0XFFFF3334),
        fontFamily: 'Gilroy',
      ),
    );
  }
}
