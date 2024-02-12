import 'package:flutter/material.dart';
import 'package:flutter_netwoking/contants.dart';
import 'package:flutter_netwoking/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myCustomTheme,
      home: const Homepage() ,
    );
  }
}

