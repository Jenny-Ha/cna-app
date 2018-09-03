import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../utils/NewIcons.dart';
import '../routes.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  // const StaggeredTile.count(ancho, alto),
  const StaggeredTile.count(6, 5),
  const StaggeredTile.count(4, 5),

  const StaggeredTile.count(4, 5),
  const StaggeredTile.count(6, 5),

  const StaggeredTile.count(5, 5),
  const StaggeredTile.count(5, 5),
  
  const StaggeredTile.count(3, 5),
  const StaggeredTile.count(4, 5),
  const StaggeredTile.count(3, 5),
];


List<Widget> _tiles = const <Widget>[
  const _ServiceTile(Colors.green, NewIcons.television, "Televisión en Vivo"),
  const _ServiceTile(Colors.lightBlue, Icons.web, "Web"),
  const _ServiceTile(Colors.amber, NewIcons.encuesta, "La Encuesta"),
  const _ServiceTile(Colors.indigo, NewIcons.radio, "Radio en vivo"),
  const _ServiceTile(Colors.brown, NewIcons.telefono, "Teléfonos de Emergencia"),
  const _ServiceTile(Colors.deepOrange, NewIcons.rrss, "Redes Sociales"),
  const _ServiceTile(Colors.green, NewIcons.periodico, "Periódicos"),
  const _ServiceTile(Colors.red, NewIcons.servicios, "Servicios"),
  const _ServiceTile(Colors.lightBlue, NewIcons.ondas, "Radios"),
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
                size: 28.0,
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