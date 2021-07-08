import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_github/models/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static SharedPreferences _preferences;

  //存储用户登录后的信息，bean类
  static Profile profile = Profile();

  // static NetCache netCache = NetCache();

  // 可选主题列表
  static List<MaterialColor> get themes => _themes;

  static Future init() async {

    _preferences = await SharedPreferences.getInstance();
    var _profile = _preferences.getString("profile");
    
    if(_profile !=null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        print(e);
      }
    }

    profile.cache ?? CacheConfig()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;

    //初始化网络请求的任务
    //Git.init();
    
  }
  
  static saveProfile() =>
      _preferences.setString("profile", jsonEncode(profile.toJson()));

}
