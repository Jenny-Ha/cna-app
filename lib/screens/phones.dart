import 'package:flutter/material.dart';
import '../data/contact_data.dart';


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
              new ContactList(kContactsJuliaca),
              new ContactList(kContactsPuno),
            ],
          ),
        ),
      );
  }
}

class ContactList extends StatelessWidget {
  final List<Contact> _contacts;
  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      shrinkWrap: true,
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactList()
    );
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => new _ContactListItem(contact)).toList();
  }

}



class _ContactListItem extends ListTile {

  _ContactListItem(Contact contact) :
    super(
      title : new Text(contact.name),
      subtitle: new Text(contact.phone),
      leading: new CircleAvatar(
        child: new Text(contact.name[0])
      )
      //TODO:  leading: const Icon(Icons.event_seat),
    );

}
