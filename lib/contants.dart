import 'package:flutter/material.dart';
import 'package:flutter_netwoking/homepage.dart';
import 'package:flutter_netwoking/models/task_model.dart';
const Color primaryColor = Colors.black;
const Color textColor = Colors.white;


final TextEditingController titleController = TextEditingController();
final TextEditingController contentController = TextEditingController();


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
                    },
                    child: TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
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
                    },
                    child:TextField(
                      controller: contentController,
                      decoration: const InputDecoration(
                        hintText: "Content",
                        fillColor: primaryColor,
                        filled: true
                      ),
                  ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    final String title = titleController.text;
                    final String content = contentController.text;
                    //This is how to get values from the textfield
                    //This line creates a new Todo object. It appears that Todo is a custom class representing a task or to-do item.

                    Todo todo = Todo(title: title, content: content, isCompleted: false);
                    //This line adds the newly created Todo object to a box, which is presumably some form of data storage.

                    todoBox.add(todo);

                    Navigator.pop(context);
                  },
                   child: const Text("Save", style: TextStyle(
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