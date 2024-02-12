import 'package:flutter/material.dart';
import 'package:flutter_netwoking/contant.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hive Todo",
         style:Theme.of(context).textTheme.displayLarge,
         textAlign: TextAlign.start,
         ),
         actions: const [
          Icon(Icons.abc, color: textColor,),
         ],
      ),
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Hello there!")
            ),
            Padding(padding: EdgeInsets.all(10)
            )
          ],
        ),
      ),
      floatingActionButton: myFloatingActionButton(context),
    );
  }
}