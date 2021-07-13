import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/common/style/styles.dart';
import 'package:flutter_github/routes/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String text = "";
  double fontSize = 76;
  bool hasInit = false;

  // TODO 该方法什么时候被调用？为什么这里要设置一个防止多次进入的变量？
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (hasInit) {
      print("didChangeDependencies called again. hasInit $hasInit");
      return;
    }

    //防止多次进入
    hasInit = true;

    new Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        text = "welcome~";
        fontSize = 30;
      });
    });
    new Future.delayed(Duration(seconds: 2, milliseconds: 800), () {
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      });
    });

    // TODO 跳转 登录页面
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        color: ZHStyle.white,
        child: Stack(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('static/images/welcome.png'),
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.3),
              child: Text(
                text,
                style: GoogleFonts.akronim().copyWith(
                  color: ZHStyle.primaryColor,
                  fontSize: 60,
                ),
                maxLines: 1,
                textDirection: TextDirection.ltr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
