import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const PAGE_NAME = "LoginPage";

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Center(
              child: Text("login page"),
            )
          ],
        ),
      ),
    );
  }
}
