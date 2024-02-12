
import 'package:hive_flutter/hive_flutter.dart';
part 'task_model.g.dart';

//Hive supports primitive data types List stc, but if you want to store other objects you have to 
//register a typeadapters for them, which is responsible for converting the object to and from bytes or binaries.
//Now to generate Typeadapters for this class, we annotate with HiveType and typeId and HiveField.
//Every type has a unique typeId which is used to find the correct adapter when a value is brought back from disk

@HiveType(typeId: 0)
class Todo {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final bool isCompleted;

  const Todo({
    required this.title, required this.content, required this.isCompleted
  });
}