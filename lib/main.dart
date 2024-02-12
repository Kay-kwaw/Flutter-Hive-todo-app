
import 'package:flutter/material.dart';
import 'package:flutter_netwoking/contants.dart';
import 'package:flutter_netwoking/homepage.dart';
import 'package:flutter_netwoking/models/task_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

const String todoBoxName = "todo";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //To use the Type Adapters, you need to register before you use it.
  // Hive.registerAdapter(TodoAdapter());
  // await Hive.initFlutter();
  // await Hive.openBox("documentBoxName");
   WidgetsFlutterBinding.ensureInitialized();
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>(todoBoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive TO-d0 Demo',
      theme: myCustomTheme,
      home: const Homepage() ,
    );
  }
}

