import 'package:CNA/models/newspaper.dart';
import 'package:flutter/material.dart';
import '../utils/NewIcons.dart';


class Newspapers extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Periódicos'),
      ),*/
      body: Column(
          children: <Widget>[
            new Expanded(
              child: new SafeArea(
                child: new CustomScrollView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  slivers: <Widget>[
                    new SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      sliver: new SliverList(
                          delegate: new SliverChildBuilderDelegate(
                                (context, index) => new NewspaperRow(newspapers[index]),
                            childCount: newspapers.length,
                          ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
      ),
    );
  }
}

class NewspaperRow extends StatelessWidget {

  final Newspaper newspaper;

  NewspaperRow(this.newspaper);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      height: 210.0,
      color: this.newspaper.background,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Image.asset(
            this.newspaper.image,
            width: 160.0,
          ),
        ],
      ),
    );
  }
}

