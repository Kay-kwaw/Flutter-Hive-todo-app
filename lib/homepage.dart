import 'package:flutter/material.dart';
import 'package:flutter_netwoking/contants.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

enum FilterOptions {
  all,
  completed,
  incomplete,
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
         actions:[
          //FilterOptions is an enum representing the options in the popup menu.
         PopupMenuButton<FilterOptions>(
            onSelected: (FilterOptions selectedValue) {
              switch (selectedValue) {
                case FilterOptions.all:
                  break;
                case FilterOptions.completed:
                  break;
                case FilterOptions.incomplete:
                  break;
              }
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('All'),
              ),
              const PopupMenuItem(
                value: FilterOptions.completed,
                child: Text('Completed'),
              ),
              const PopupMenuItem(
                value: FilterOptions.incomplete,
                child: Text('Incomplete'),
              ),
            ],
          ),
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