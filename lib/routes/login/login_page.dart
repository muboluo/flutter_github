import 'package:flutter/material.dart';
import 'package:flutter_github/common/style/styles.dart';

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
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      //  scaffold 是脚手架，作为每个页面的跟布局
      //  布局思维是从外到内的，一层层的去实现。
      child: Scaffold(
        // todo 为什么这里是 Container?
        body: Container(
          color: Theme.of(context).primaryColor,
          // 因为界面中包括三个层级：背景渐变动画/ 圆球上移动画 / 中间卡片内容区域
          // 所以用了 stack 层级布局来实现。类似于 android的帧布局
          child: Stack(
            children: [
              //卡片是屏幕居中的
              Center(
                child: SafeArea(
                  // 防止 overflow现象，什么是overflow现象？https://www.jianshu.com/p/5d3654c39c34
                  child: SingleChildScrollView(
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      color: ZHStyle.cardWhite,
                      margin: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, top: 40.0, right: 30.0, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image(
                                image:
                                    new AssetImage(ZHIcons.DEFAULT_USER_ICON),
                                width: 90.0,
                                height: 90.0),
                            Padding(padding: EdgeInsets.all(100)),
                            // todo 输入widget name
                            Padding(padding: EdgeInsets.all(10.0)),
                            // todo 输入 widget pwd



                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
