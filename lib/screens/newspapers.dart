import 'package:flutter/material.dart';
import '../routes.dart';

class Newspapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periódicos'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Newspapers screen'),
          onPressed: () {
            // Navigate to Periódicos when tapped!
          },
        ),
      ),
    );
  }
}