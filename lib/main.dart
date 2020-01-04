import 'package:flutter/material.dart';

void main() {
  
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('You Pictures'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hi there');
        },
        child: Icon(Icons.add_photo_alternate)
      ),
      ),
  );
  
  runApp(app);
}
