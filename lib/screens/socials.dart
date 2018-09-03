import 'package:flutter/material.dart';
import '../routes.dart';

class Socials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redes Sociales'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Socials screen'),
          onPressed: () {
            // Navigate to second screen when tapped!
          },
        ),
      ),
    );
  }
}