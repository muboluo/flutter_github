import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/common/style/styles.dart';

/**
 *   首页，欢迎页面
 */
class WelcomePage extends StatefulWidget {
  static final name = "/";

  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: new Container(
        color: ZHStyle.white,
        child: Stack(
          children: <Widget>[
            new Center(
              child: Image(
                image: AssetImage('static/images/welcome.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
