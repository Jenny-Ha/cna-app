import 'package:flutter/material.dart';
import '../routes.dart';

class Phones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teléfonos de Emergencia'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Phones screen'),
          onPressed: () {
              Navigator.pop(context);
          },
        ),
      ),
    );
  }
}