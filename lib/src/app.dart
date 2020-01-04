import 'package:flutter/material.dart';

class App extends StatefulWidget {
  
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context){
    return MaterialApp(
        home: Scaffold(
          body: Text('You have $counter images'),
          appBar: AppBar(
            title: Text('You Pictures'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Icon(Icons.add_photo_alternate)
          ),
          ),
      );
  }
}
