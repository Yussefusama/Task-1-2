import 'package:first_flutter/Counter.dart';
import 'package:first_flutter/HomeScreen.dart';
import 'package:first_flutter/InfoScreen.dart';
import 'package:first_flutter/Login.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),


  );
}
}





