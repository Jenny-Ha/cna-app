import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import routes
// import 'screens/example.dart';
import 'screens/home.dart';
import 'screens/liveRadio.dart';
import 'screens/liveTV.dart';
import 'screens/newspapers.dart';
import 'screens/phones.dart';
import 'screens/poll.dart';
import 'screens/radios.dart';
import 'screens/services.dart';
import 'screens/socials.dart';

const String homeRoute = '/';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  // '/': (BuildContext context) => new ContactsDemo(),
  '/': (BuildContext context) => new Home(),
  '/liveRadio': (BuildContext context) => new LiveRadio(),
  '/liveTV': (BuildContext context) => new LiveTV(),
  '/newspaper': (BuildContext context) => new Newspapers(),
  '/phones': (BuildContext context) => new Phones(),
  '/poll': (BuildContext context) => new Poll(),
  '/radios': (BuildContext context) => new Radios(),
  '/services': (BuildContext context) => new Services(),
  '/socials': (BuildContext context) => new Socials(),

  '/comercio': (_) => new WebviewScaffold(
    url: 'https://elcomercio.pe/',
    appBar: new AppBar(
      title: const Text('El Comercio'),
    ),
  ),
  '/peru21': (_) => new WebviewScaffold(
    url: 'https://peru21.pe/',
    appBar: new AppBar(
      title: const Text('Peru 21'),
    ),
  ),
  '/republica': (_) => new WebviewScaffold(
    url: 'https://larepublica.pe/',
    appBar: new AppBar(
      title: const Text('La República'),
    ),
  ),
  '/livetv': (_) => new WebviewScaffold(
    url: 'https://iblups.com/cosmosradiotvlive',
    appBar: new AppBar(
      title: const Text('Televisión en vivo'),
    ),

  ),
};