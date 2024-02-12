import 'package:flutter/material.dart';
const Color primaryColor = Colors.black;
const Color textColor = Colors.white;


final ThemeData myCustomTheme = ThemeData(
  primaryColor: Colors.black,
  hintColor: Colors.white,
  fontFamily: 'Roboto', // Change this to your desired font family
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: textColor),
    displayMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
  ),
);


 FloatingActionButton myFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(100.0, 100.0, 100.0, 100.0),
        items: [
          const PopupMenuItem(
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem(
                    child: Text('Item 2'),
                  ),
        ],
      );
    },
    backgroundColor: primaryColor,
    child: const Icon(Icons.add, color: textColor),
  );
}