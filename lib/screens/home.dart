import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
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

// TODO: escoger colores complementarios y que armonizen con cada boton
// TODO: Colocar una sombra interna en cada card (= app anterior)
// TODO: Intentar importar íconos de la app anterior

List<Widget> _tiles = const <Widget>[
  const _ServiceTile(Colors.amber, NewIcons.television, "Televisión en Vivo", '/livetv'),
  const _ServiceTile(Colors.deepOrange, Icons.web, "Web", 'https://www.cna.pe'),
  
  const _ServiceTile(Colors.deepPurple, NewIcons.encuesta, "La Encuesta", '/poll'),
  const _ServiceTile(Colors.red, NewIcons.radio, "Radio en vivo", '/radioLive'),
  
  const _ServiceTile(Colors.teal, NewIcons.telefono, "Teléfonos de emergencia", '/phones'),
  const _ServiceTile(Colors.lime, NewIcons.rrss, "Redes Sociales", '/socials'),

  const _ServiceTile(Colors.lightBlue, NewIcons.periodico, "Periódicos", '/newspaper'),
  const _ServiceTile(Colors.cyan, NewIcons.servicios, "Servicios", '/services'),
  const _ServiceTile(Colors.blue, NewIcons.ondas, "Radios", '/radios'),
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
  final String route;

  const _ServiceTile(this.backgroundColor, this.iconData, this.title, this.route);

  Future _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      print('Lo sentimos, no se puede acceder a $url'); 
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {
          if (route.contains('http')) {
            _launchURL(route);
          } else {
            Navigator.pushNamed(context, route);
          }
        },
        child: new Padding(
          padding: const EdgeInsets.all(4.0),
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                iconData,
                color: Colors.white,
                size: 36.0,
              ),
              new Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 1.0,
                ),
                child: new Text(
                  title,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}