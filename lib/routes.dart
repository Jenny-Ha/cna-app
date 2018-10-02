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

const url = "https://pub.dartlang.org";

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
    url: url,
    appBar: new AppBar(
      title: const Text('El Comercio'),
    ),
    withZoom: true,
    withLocalStorage: true,
  )
};