
class CacheConfig {
    bool enable;
    int maxAge;
    int maxCount;

    CacheConfig({this.enable, this.maxAge, this.maxCount});

    CacheConfig.fromJson(Map<String, dynamic> json) {
        enable = json['enable'];
        maxAge = json['maxAge'];
        maxCount = json['maxCount'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['enable'] = this.enable;
        data['maxAge'] = this.maxAge;
        data['maxCount'] = this.maxCount;
        return data;
    }
}
