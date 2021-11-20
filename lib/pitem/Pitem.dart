class Pitem {
  int _id;
  int _iid;
  Null _refId;
  String _qitem;
  String _publish;
  String _name;
  String _description;
  List<SevenImages> _sevenImages;

  Pitem(
      {int id,
        int iid,
        Null refId,
        String qitem,
        String publish,
        String name,
        String description,
        List<SevenImages> sevenImages}) {
    this._id = id;
    this._iid = iid;
    this._refId = refId;
    this._qitem = qitem;
    this._publish = publish;
    this._name = name;
    this._description = description;
    this._sevenImages = sevenImages;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get iid => _iid;
  set iid(int iid) => _iid = iid;
  Null get refId => _refId;
  set refId(Null refId) => _refId = refId;
  String get qitem => _qitem;
  set qitem(String qitem) => _qitem = qitem;
  String get publish => _publish;
  set publish(String publish) => _publish = publish;
  String get name => _name;
  set name(String name) => _name = name;
  String get description => _description;
  set description(String description) => _description = description;
  List<SevenImages> get sevenImages => _sevenImages;
  set sevenImages(List<SevenImages> sevenImages) => _sevenImages = sevenImages;

  Pitem.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _iid = json['iid'];
    _refId = json['ref_id'];
    _qitem = json['qitem'];
    _publish = json['publish'];
    _name = json['name'];
    _description = json['description'];
    if (json['SevenImages'] != null) {
      _sevenImages = new List<SevenImages>();
      json['SevenImages'].forEach((v) {
        _sevenImages.add(new SevenImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['iid'] = this._iid;
    data['ref_id'] = this._refId;
    data['qitem'] = this._qitem;
    data['publish'] = this._publish;
    data['name'] = this._name;
    data['description'] = this._description;
    if (this._sevenImages != null) {
      data['SevenImages'] = this._sevenImages.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SevenImages {
  String _image;
  int _imgPlay;

  SevenImages({String image, int imgPlay}) {
    this._image = image;
    this._imgPlay = imgPlay;
  }

  String get image => _image;
  set image(String image) => _image = image;
  int get imgPlay => _imgPlay;
  set imgPlay(int imgPlay) => _imgPlay = imgPlay;

  SevenImages.fromJson(Map<String, dynamic> json) {
    _image = json['image'];
    _imgPlay = json['img_play'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this._image;
    data['img_play'] = this._imgPlay;
    return data;
  }
}
