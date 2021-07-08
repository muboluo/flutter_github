import 'dart:convert';

import 'package:flutter_github/models/cacheConfig.dart';
import 'package:flutter_github/models/user.dart';

class Profile {
    User user;
    String token;
    int theme;
    CacheConfig cache;
    String lastLogin;
    String locale;

    Profile(
        {this.user,
            this.token,
            this.theme,
            this.cache,
            this.lastLogin,
            this.locale});

    Profile.fromJson(Map<String, dynamic> json) {
        user =  jsonDecode(json['user']);
        token = json['token'];
        theme = json['theme'];
        cache =  jsonDecode(json['cache']);
        lastLogin = json['lastLogin'];
        locale = json['locale'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['user'] = this.user.toJson();
        data['token'] = this.token;
        data['theme'] = this.theme;
        data['cache'] = this.cache.toJson();
        data['lastLogin'] = this.lastLogin;
        data['locale'] = this.locale;
        return data;
    }
}
