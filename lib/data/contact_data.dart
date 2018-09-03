import 'package:flutter/material.dart';

class Contact {
  final IconData iconData;
  final String name;
  final String phone;

  const Contact({this.iconData, this.name, this.phone });
}

const kContactsJuliaca = const <Contact>[
    const Contact(
      iconData: Icons.contact_phone,
      name:'CNA',
      phone:'951680203',
    ),
    const Contact(
      iconData: Icons.contact_phone,
      name:'Serenazgo',
      phone: '051329001',
    ),
    const Contact(
      iconData: Icons.contact_phone,
      name:'Policia Nacional',
      phone: '980121998',
    ),
    const Contact(
      iconData: Icons.contact_phone,
      name:'Bomberos',
      phone: '051321333',
    ),  
  ];
  
  const kContactsPuno = const <Contact>[
    const Contact(
      iconData: Icons.contact_phone,
      name:'CNA',
      phone:'951680203',
    ),
    const Contact(
      iconData: Icons.contact_phone,
      name:'Policia Nacional',
      phone: '980121998',
    ),
    const Contact(
      iconData: Icons.contact_phone,
      name:'Serenazgo',
      phone: '051329001',
    ),
    const Contact(
      iconData: Icons.contact_phone,
      name:'Bomberos',
      phone: '051321333',
    ),  
  ];