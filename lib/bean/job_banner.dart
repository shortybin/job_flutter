/// errno : 0
/// errmsg : "SUCCESS"
/// userInfo : null
/// data : [{"id":150,"name":"黄霏自动化数据-勿动","image_src":"http://s.laoyaoba.com/jwImg/f63839f1e23dcb2b.png","has_href":true},{"id":123,"name":"于斌新增a001","image_src":"http://s.laoyaoba.com/jwImg/8ebdb5391d059df1.jpeg","has_href":true},{"id":134,"name":"于斌新增a012","image_src":"http://s.laoyaoba.com/jwImg/d724bf5dea16c120.jpg","has_href":true},{"id":144,"name":"0803演示-预告阶段","image_src":"http://s.laoyaoba.com/jwImg/be5511958906dcb4.png","has_href":true},{"id":135,"name":"于彬彬新增s001","image_src":"http://s.laoyaoba.com/jwImg/f93f89117a9b6834.png","has_href":true},{"id":114,"name":"职场改版-有链接无报名属性","image_src":"http://s.laoyaoba.com/jwImg/5ef036eacc8ee360.jpg","has_href":true},{"id":141,"name":"YSQ0801空宣走查-banner名称","image_src":"http://s.laoyaoba.com/jwImg/8f713c9504e70213.png","has_href":true},{"id":142,"name":"John0801空宣走查","image_src":"http://s.laoyaoba.com/jwImg/fa4795f289338e18.png","has_href":true},{"id":119,"name":"孙祥丹测试","image_src":"http://s.laoyaoba.com/jwImg/71350e65119cfda5.jpeg","has_href":true}]
/// timestamp : 1664444949
/// logId : 3774811428

class JobBanner {
  JobBanner({
      num? errno, 
      String? errmsg, 
      dynamic userInfo, 
      List<Data>? data, 
      num? timestamp, 
      num? logId,}){
    _errno = errno;
    _errmsg = errmsg;
    _userInfo = userInfo;
    _data = data;
    _timestamp = timestamp;
    _logId = logId;
}

  JobBanner.fromJson(dynamic json) {
    _errno = json['errno'];
    _errmsg = json['errmsg'];
    _userInfo = json['userInfo'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _timestamp = json['timestamp'];
    _logId = json['logId'];
  }
  num? _errno;
  String? _errmsg;
  dynamic _userInfo;
  List<Data>? _data;
  num? _timestamp;
  num? _logId;
JobBanner copyWith({  num? errno,
  String? errmsg,
  dynamic userInfo,
  List<Data>? data,
  num? timestamp,
  num? logId,
}) => JobBanner(  errno: errno ?? _errno,
  errmsg: errmsg ?? _errmsg,
  userInfo: userInfo ?? _userInfo,
  data: data ?? _data,
  timestamp: timestamp ?? _timestamp,
  logId: logId ?? _logId,
);
  num? get errno => _errno;
  String? get errmsg => _errmsg;
  dynamic get userInfo => _userInfo;
  List<Data>? get data => _data;
  num? get timestamp => _timestamp;
  num? get logId => _logId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['errno'] = _errno;
    map['errmsg'] = _errmsg;
    map['userInfo'] = _userInfo;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['timestamp'] = _timestamp;
    map['logId'] = _logId;
    return map;
  }

}

/// id : 150
/// name : "黄霏自动化数据-勿动"
/// image_src : "http://s.laoyaoba.com/jwImg/f63839f1e23dcb2b.png"
/// has_href : true

class Data {
  Data({
      num? id, 
      String? name, 
      String? imageSrc,
      bool? hasHref,}){
    _id = id;
    _name = name;
    _imageSrc = imageSrc;
    _hasHref = hasHref;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _imageSrc = json['image_src'];
    _hasHref = json['has_href'];
  }
  num? _id;
  String? _name;
  String? _imageSrc;
  bool? _hasHref;
Data copyWith({  num? id,
  String? name,
  String? imageSrc,
  bool? hasHref,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  imageSrc: imageSrc ?? _imageSrc,
  hasHref: hasHref ?? _hasHref,
);
  num? get id => _id;
  String? get name => _name;
  String? get imageSrc => _imageSrc;
  bool? get hasHref => _hasHref;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image_src'] = _imageSrc;
    map['has_href'] = _hasHref;
    return map;
  }

}