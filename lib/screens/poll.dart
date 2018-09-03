import 'package:flutter/material.dart';
import '../routes.dart';

class Poll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Encuesta'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Poll Encuesta'),
          onPressed: () {
            // Navigate to second screen when tapped!
          },
        ),
      ),
    );
  }
}