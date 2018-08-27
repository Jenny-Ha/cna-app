import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../routes.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  // const StaggeredTile.count(ancho, alto),
  const StaggeredTile.count(6, 5),
  const StaggeredTile.count(4, 5),

  const StaggeredTile.count(4, 5),
  const StaggeredTile.count(6, 5),

  const StaggeredTile.count(3, 5),
  const StaggeredTile.count(4, 5),
  const StaggeredTile.count(3, 5),

  const StaggeredTile.count(6, 5),
  const StaggeredTile.count(4, 5),
];

List<Widget> _tiles = const <Widget>[
  const _ServiceTile(Colors.green, Icons.widgets, "TV en Vivo"),
  const _ServiceTile(Colors.lightBlue, Icons.wifi, "Web Movil"),
  const _ServiceTile(Colors.amber, Icons.panorama_wide_angle, "La Encuesta"),
  const _ServiceTile(Colors.indigo, Icons.airline_seat_flat, "Radio en Vivo"),
  const _ServiceTile(Colors.brown, Icons.map, "Teléfonos de Emergencia"),
  const _ServiceTile(Colors.deepOrange, Icons.send, "Redes Sociales"),
  const _ServiceTile(Colors.red, Icons.bluetooth, "Servicios"),
  const _ServiceTile(Colors.green, Icons.widgets, "Periódicos"),
  const _ServiceTile(Colors.lightBlue, Icons.wifi, "Radios"),
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(
            padding: const EdgeInsets.only(top: 30.0), //TODO: save rea 
            child: new StaggeredGridView.count(
              crossAxisCount: 10,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 3.0,
              crossAxisSpacing: 3.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _ServiceTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData iconData;
  final String title;

  const _ServiceTile(this.backgroundColor, this.iconData, this.title);

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Padding(
          padding: const EdgeInsets.all(4.0),
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                iconData,
                color: Colors.white,
              ),
              new Text(
                title,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}