import 'package:flutter/material.dart';
import '../routes.dart';

class Radios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radios'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Radios screen'),
          onPressed: () {
            // Navigate to second screen when tapped!
          },
        ),
      ),
    );
  }
}