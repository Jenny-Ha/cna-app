import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../routes.dart';

class LiveTV extends StatefulWidget {
  @override
  _LiveTVState createState() => _LiveTVState();
}

class _LiveTVState extends State<LiveTV> {
  final webView = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    webView.close();
  }

  @override
  void dispose() {
    webView.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Televisión en vivo'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('TV screen'),
          onPressed: () {
            Navigator.of(context).pushNamed('/livetv');
          },
        ),
      ),
    );
  }
}

/*import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';*/

/*class LiveTV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoFullPage(
                          'https://www.youtube.com/watch?v=mgI_pH8TOVY',
                        )),
              );
            },
            child: Text("full play video"),
          ),
          Container(
            height: 256.0,
            color: Colors.black,
            child: Center(
              child: NetVideo("https://www.youtube.com/watch?v=mgI_pH8TOVY"),
            ),
          ),
        ],
      ),
    );
  }
}*/
