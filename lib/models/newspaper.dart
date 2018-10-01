import 'package:flutter/material.dart';

class Newspaper {
  final String id;
  final String name;
  final String image;
  final Color background;

  const Newspaper({this.id, this.name, this.image, this.background});
}

List<Newspaper> newspapers = [
  const Newspaper(
      id: "1",
      name: "El Comercio",
      image: "assets/logo_comercio.png",
      background: Color.fromRGBO(247, 207, 0, 1.0)),
  const Newspaper(
      id: "2",
      name: "Perú 21",
      image: "assets/logo_p21.png",
      background: Color.fromRGBO(14, 109, 193, 1.0)),
  const Newspaper(
      id: "3",
      name: "La República",
      image: "assets/logo-republica.png",
      background: Color.fromRGBO(255, 1, 2, 1.0)),
];
