import 'package:flutter/material.dart';
import '../routes.dart';

class Phones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Phones screen'),
          onPressed: () {
              Navigator.of(context).pop(true);
          },
        ),
      ),
    );
  }
}