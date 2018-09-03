import 'package:flutter/material.dart';
import '../routes.dart';


class Phones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(text: 'Juliaca'),
                new Tab(text: "Puno"),
              ],
            ),
            title: new Text('Teléfonos de Emergencia'),
          ),
          body: new TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      );
  }
}