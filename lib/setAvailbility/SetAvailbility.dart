class SetAvailbility {
  List<Data> _data;

  SetAvailbility({List<Data> data}) {
    this._data = data;
  }

  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;

  SetAvailbility.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      _data = new List<Data>();
      json['Data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['Data'] = this._data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int _id;
  String _availabledate;
  String _status;
  int _userId;
  Null _rememberToken;
  List<Timing> _timing;

  Data(
      {int id,
        String availabledate,
        String status,
        int userId,
        Null rememberToken,
        List<Timing> timing}) {
    this._id = id;
    this._availabledate = availabledate;
    this._status = status;
    this._userId = userId;
    this._rememberToken = rememberToken;
    this._timing = timing;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get availabledate => _availabledate;
  set availabledate(String availabledate) => _availabledate = availabledate;
  String get status => _status;
  set status(String status) => _status = status;
  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  Null get rememberToken => _rememberToken;
  set rememberToken(Null rememberToken) => _rememberToken = rememberToken;
  List<Timing> get timing => _timing;
  set timing(List<Timing> timing) => _timing = timing;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _availabledate = json['availabledate'];
    _status = json['status'];
    _userId = json['user_id'];
    _rememberToken = json['remember_token'];
    if (json['Timing'] != null) {
      _timing = new List<Timing>();
      json['Timing'].forEach((v) {
        _timing.add(new Timing.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['availabledate'] = this._availabledate;
    data['status'] = this._status;
    data['user_id'] = this._userId;
    data['remember_token'] = this._rememberToken;
    if (this._timing != null) {
      data['Timing'] = this._timing.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Timing {
  int _id;
  int _availabilityclanderId;
  String _fromTime;
  String _toTime;
  int _status;

  Timing(
      {int id,
        int availabilityclanderId,
        String fromTime,
        String toTime,
        int status}) {
    this._id = id;
    this._availabilityclanderId = availabilityclanderId;
    this._fromTime = fromTime;
    this._toTime = toTime;
    this._status = status;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get availabilityclanderId => _availabilityclanderId;
  set availabilityclanderId(int availabilityclanderId) =>
      _availabilityclanderId = availabilityclanderId;
  String get fromTime => _fromTime;
  set fromTime(String fromTime) => _fromTime = fromTime;
  String get toTime => _toTime;
  set toTime(String toTime) => _toTime = toTime;
  int get status => _status;
  set status(int status) => _status = status;

  Timing.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _availabilityclanderId = json['availabilityclander_id'];
    _fromTime = json['from_time'];
    _toTime = json['to_time'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['availabilityclander_id'] = this._availabilityclanderId;
    data['from_time'] = this._fromTime;
    data['to_time'] = this._toTime;
    data['status'] = this._status;
    return data;
  }
}
