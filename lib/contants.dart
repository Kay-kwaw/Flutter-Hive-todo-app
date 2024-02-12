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
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      // Handle action for Item 1
                    },
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Title",
                        hintStyle: TextStyle(color: textColor),
                        fillColor: primaryColor,
                        filled: true,
                      ),
                      
                      )
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      // Handle action for Item 2
                    },
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Content",
                        fillColor: primaryColor,
                        filled: true
                      ),
                  ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){}, child: const Text("Save", style: TextStyle(
                    color: primaryColor
                  ),))
                ],
              ),
            ),
          );
        },
       );
 },
 backgroundColor: primaryColor,
 child: const Icon(Icons.add,color: textColor),
 
 );
}