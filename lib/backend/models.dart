//Make a network request

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts/1' as Uri);
  
  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

//create a class to hold the data from the network request
class Post {
  int userId;
  int id;
  String title;

   Post({required this.userId, required this.id, required this.title});
  // this includes a factory constructor to create a Post from a JSON object
  //To parse the Json data into a Dart object, you can use the factory constructor.
  //The factory constructor is used to return an instance of the class from the method.
  //Now in the context on working with APTs, you often receive a JSON response and to efficiently use it in your app, you need to parse it into a Dart object.
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


class PostNetwork extends StatefulWidget {
  const PostNetwork({super.key});

  @override
  State<PostNetwork> createState() => _PostNetworkState();
}
@override
void initState() {
  //Fetching of data
  fetchPost();
}

class _PostNetworkState extends State<PostNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      //Displaying the data
      child: FutureBuilder(future: fetchPost(), builder: (context, snapshot){
        if(snapshot.hasData) {
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        //By default, show a loading spinner
        return const CircularProgressIndicator();
      }),
     ),
    );
  }
}
//To fetch data from the web services, you need to provide authorization. The authorization http header is used to provide authentication information.


// Future<fetchFost> fetchFost({required userId, required id}) async {
//   final response = await http.get(
//     Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
//     headers: <String, String>{
//       HttpHeaders.authorizationHeader : 'Bearer your_api_token',
//     });
//     final responseJson = json.decode(response.body) as Map<String, dynamic>;
//     return Post.fromJson(responseJson);
// }

// class fetchFost {
//   int userId;
//   int id; 
//   String title;

//   fetchFost({required this.userId, required this.id, required this.title});

//   factory fetchFost.fromJson(Map<String, dynamic> json) {
//     return fetchFost(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }


//Sending data to the internet

//To send data to the internet, you can use the http.post() method. The http.post() method sends data to the server. The data to be sent is provided as the body parameter. The body parameter can be a string, a byte array, or a stream. The http.post() method returns a Future that contains the response from the server.
