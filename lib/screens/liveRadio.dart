import 'package:flutter/material.dart';
import '../routes.dart';

class LiveRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio en vivo'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('LiveRadio'),
          onPressed: () {
            // Navigate to second screen when tapped!
          },
        ),
      ),
    );
  }
}