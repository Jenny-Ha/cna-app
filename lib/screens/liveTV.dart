import 'package:flutter/material.dart';
import '../routes.dart';

class LiveTV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Televisión en vivo'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('TV screen'),
          onPressed: () {
            // Navigate to second screen when tapped!
          },
        ),
      ),
    );
  }
}