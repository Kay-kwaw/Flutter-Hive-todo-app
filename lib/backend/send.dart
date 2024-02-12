import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Fetch> createFetch(String title, String body) async {
  final response = await http.post(
    Uri.parse("https://jsonplaceholder.typicode.com/albums"),
    headers: <String, String> {
      'Content-Type': 'application.json; charset=UTF-8',
    },
    body: jsonEncode(<String, String> {
      "title": title 
    })
  );

  if (response.statusCode == 201) {
    return Fetch.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create fetch');
  }
}

class Fetch {
  final int Id; 
  final String title;

  const Fetch ( { required this.Id, required this.title});

  factory Fetch.fromJson (Map<String, dynamic> json){
    return Fetch(Id: json['id'], title: json['title']);
  }
}