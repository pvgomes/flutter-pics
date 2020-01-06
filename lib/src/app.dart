import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    print("vai jacare");
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    print(response);
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context){
    return MaterialApp(
        home: Scaffold(
          body: ImageList(images),
          appBar: AppBar(
            title: Text('You Pictures'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: fetchImage,
            child: Icon(Icons.add_photo_alternate)
          ),
          ),
      );
  }
}
