/// data : {"id":12,"created_by":"Superadmin","title":"Cermati Obligasi dan Reksadana, Pelaku Pasar Beralih ke Portofolio Berisiko Rendah","cover":"https://oforu.talenavi.com/storage/informations/covers/0e932775683ce322be7e695e4237bf4b.jpg","type":"pdf","external_url":"https://oforu.talenavi.com/storage/informations/pdfs/2_1626660389_Mock Up OFORU.pdf","youtube_id":"","content":null,"date":"2021-07-19","active":true}

class DetailInformation {
  Data? _data;
  String? message;

  Data? get data => _data;

  DetailInformation(this.message,{
      required Data data}){
    _data = data;
}

  DetailInformation.fromJson(dynamic json) {
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data?.toJson();
    }
    return map;
  }

}

/// id : 12
/// created_by : "Superadmin"
/// title : "Cermati Obligasi dan Reksadana, Pelaku Pasar Beralih ke Portofolio Berisiko Rendah"
/// cover : "https://oforu.talenavi.com/storage/informations/covers/0e932775683ce322be7e695e4237bf4b.jpg"
/// type : "pdf"
/// external_url : "https://oforu.talenavi.com/storage/informations/pdfs/2_1626660389_Mock Up OFORU.pdf"
/// youtube_id : ""
/// content : null
/// date : "2021-07-19"
/// active : true

class Data {
  int? _id;
  String? _createdBy;
  String? _title;
  String? _cover;
  String? _type;
  String? _externalUrl;
  String? _youtubeId;
  dynamic? _content;
  String? _date;
  bool? _active;

  int? get id => _id;
  String? get createdBy => _createdBy;
  String? get title => _title;
  String? get cover => _cover;
  String? get type => _type;
  String? get externalUrl => _externalUrl;
  String? get youtubeId => _youtubeId;
  dynamic? get content => _content;
  String? get date => _date;
  bool? get active => _active;

  Data({
    required int id,
    required String createdBy,
    required String title,
    required String cover,
    required String type,
    required String externalUrl,
    required String youtubeId,
      dynamic content,
    required String date,
    required bool active}){
    _id = id;
    _createdBy = createdBy;
    _title = title;
    _cover = cover;
    _type = type;
    _externalUrl = externalUrl;
    _youtubeId = youtubeId;
    _content = content;
    _date = date;
    _active = active;
}

  Data.fromJson(dynamic json) {
    _id = json["id"];
    _createdBy = json["created_by"];
    _title = json["title"];
    _cover = json["cover"];
    _type = json["type"];
    _externalUrl = json["external_url"];
    _youtubeId = json["youtube_id"];
    _content = json["content"];
    _date = json["date"];
    _active = json["active"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["created_by"] = _createdBy;
    map["title"] = _title;
    map["cover"] = _cover;
    map["type"] = _type;
    map["external_url"] = _externalUrl;
    map["youtube_id"] = _youtubeId;
    map["content"] = _content;
    map["date"] = _date;
    map["active"] = _active;
    return map;
  }

}