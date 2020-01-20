import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I AM POOR'),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Image(
            image: AssetImage('images/i_am_poor.jpg'),
          ),
        ),
      ),
    ),
  );
}
