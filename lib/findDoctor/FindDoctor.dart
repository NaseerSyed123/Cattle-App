class FindDoctor {
  List<Data> _data;

  FindDoctor({List<Data> data}) {
    this._data = data;
  }

  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;

  FindDoctor.fromJson(Map<String, dynamic> json) {
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
  String _email;
  int _startCode;
  String _apiToken;
  Null _permissions;
  String _lastLogin;
  String _firstName;
  String _lastName;
  Null _stripeRegisterId;
  Null _stripeAccountId;
  Null _abnNumber;
  Null _cardLast4;
  String _createdAt;
  String _updatedAt;
  Null _deletedAt;
  Null _bio;
  String _gender;
  Null _dob;
  String _pic;
  String _country;
  String _state;
  String _city;
  Null _cnic;
  Null _licenseNo;
  Null _licenseExpiry;
  String _address;
  Null _permanentAddress;
  String _lat;
  String _long;
  Null _destinationLat;
  Null _destinationLong;
  String _coordinate;
  Null _deviceName;
  Null _deviceId;
  Null _uniqueDeviceId;
  Null _appVersion;
  String _reffarlNo;
  Null _postal;
  int _loyaltyPoints;
  Null _pointsExpired;
  String _balance;
  int _useWalletBalance;
  int _status;
  int _isLocationServices;
  int _isBackgroundServices;
  int _accountBlock;
  int _inOut;
  int _lastTrip;
  int _approved;
  String _phone;
  String _rating;
  Null _verificationCode;
  Null _phoneVerifiedAt;
  int _availableNextRide;
  Null _twilioServiceId;
  int _isTestUser;
  String _experienced;
  String _degree;
  String _degreeAddress;
  int _maximumResponseTime;
  int _inPersonVerification;
  int _emailVerification;
  int _phoneVerification;
  int _addressVerification;
  int _documentVerification;
  int _locationGpsVerification;
  List<Null> _creditCards;
  List<Diseases> _diseases;

  Data(
      {int id,
        String email,
        int startCode,
        String apiToken,
        Null permissions,
        String lastLogin,
        String firstName,
        String lastName,
        Null stripeRegisterId,
        Null stripeAccountId,
        Null abnNumber,
        Null cardLast4,
        String createdAt,
        String updatedAt,
        Null deletedAt,
        Null bio,
        String gender,
        Null dob,
        String pic,
        String country,
        String state,
        String city,
        Null cnic,
        Null licenseNo,
        Null licenseExpiry,
        String address,
        Null permanentAddress,
        String lat,
        String long,
        Null destinationLat,
        Null destinationLong,
        String coordinate,
        Null deviceName,
        Null deviceId,
        Null uniqueDeviceId,
        Null appVersion,
        String reffarlNo,
        Null postal,
        int loyaltyPoints,
        Null pointsExpired,
        String balance,
        int useWalletBalance,
        int status,
        int isLocationServices,
        int isBackgroundServices,
        int accountBlock,
        int inOut,
        int lastTrip,
        int approved,
        String phone,
        String rating,
        Null verificationCode,
        Null phoneVerifiedAt,
        int availableNextRide,
        Null twilioServiceId,
        int isTestUser,
        String experienced,
        String degree,
        String degreeAddress,
        int maximumResponseTime,
        int inPersonVerification,
        int emailVerification,
        int phoneVerification,
        int addressVerification,
        int documentVerification,
        int locationGpsVerification,
        List<Null> creditCards,
        List<Diseases> diseases}) {
    this._id = id;
    this._email = email;
    this._startCode = startCode;
    this._apiToken = apiToken;
    this._permissions = permissions;
    this._lastLogin = lastLogin;
    this._firstName = firstName;
    this._lastName = lastName;
    this._stripeRegisterId = stripeRegisterId;
    this._stripeAccountId = stripeAccountId;
    this._abnNumber = abnNumber;
    this._cardLast4 = cardLast4;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._deletedAt = deletedAt;
    this._bio = bio;
    this._gender = gender;
    this._dob = dob;
    this._pic = pic;
    this._country = country;
    this._state = state;
    this._city = city;
    this._cnic = cnic;
    this._licenseNo = licenseNo;
    this._licenseExpiry = licenseExpiry;
    this._address = address;
    this._permanentAddress = permanentAddress;
    this._lat = lat;
    this._long = long;
    this._destinationLat = destinationLat;
    this._destinationLong = destinationLong;
    this._coordinate = coordinate;
    this._deviceName = deviceName;
    this._deviceId = deviceId;
    this._uniqueDeviceId = uniqueDeviceId;
    this._appVersion = appVersion;
    this._reffarlNo = reffarlNo;
    this._postal = postal;
    this._loyaltyPoints = loyaltyPoints;
    this._pointsExpired = pointsExpired;
    this._balance = balance;
    this._useWalletBalance = useWalletBalance;
    this._status = status;
    this._isLocationServices = isLocationServices;
    this._isBackgroundServices = isBackgroundServices;
    this._accountBlock = accountBlock;
    this._inOut = inOut;
    this._lastTrip = lastTrip;
    this._approved = approved;
    this._phone = phone;
    this._rating = rating;
    this._verificationCode = verificationCode;
    this._phoneVerifiedAt = phoneVerifiedAt;
    this._availableNextRide = availableNextRide;
    this._twilioServiceId = twilioServiceId;
    this._isTestUser = isTestUser;
    this._experienced = experienced;
    this._degree = degree;
    this._degreeAddress = degreeAddress;
    this._maximumResponseTime = maximumResponseTime;
    this._inPersonVerification = inPersonVerification;
    this._emailVerification = emailVerification;
    this._phoneVerification = phoneVerification;
    this._addressVerification = addressVerification;
    this._documentVerification = documentVerification;
    this._locationGpsVerification = locationGpsVerification;
    this._creditCards = creditCards;
    this._diseases = diseases;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get email => _email;
  set email(String email) => _email = email;
  int get startCode => _startCode;
  set startCode(int startCode) => _startCode = startCode;
  String get apiToken => _apiToken;
  set apiToken(String apiToken) => _apiToken = apiToken;
  Null get permissions => _permissions;
  set permissions(Null permissions) => _permissions = permissions;
  String get lastLogin => _lastLogin;
  set lastLogin(String lastLogin) => _lastLogin = lastLogin;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  Null get stripeRegisterId => _stripeRegisterId;
  set stripeRegisterId(Null stripeRegisterId) =>
      _stripeRegisterId = stripeRegisterId;
  Null get stripeAccountId => _stripeAccountId;
  set stripeAccountId(Null stripeAccountId) =>
      _stripeAccountId = stripeAccountId;
  Null get abnNumber => _abnNumber;
  set abnNumber(Null abnNumber) => _abnNumber = abnNumber;
  Null get cardLast4 => _cardLast4;
  set cardLast4(Null cardLast4) => _cardLast4 = cardLast4;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  Null get deletedAt => _deletedAt;
  set deletedAt(Null deletedAt) => _deletedAt = deletedAt;
  Null get bio => _bio;
  set bio(Null bio) => _bio = bio;
  String get gender => _gender;
  set gender(String gender) => _gender = gender;
  Null get dob => _dob;
  set dob(Null dob) => _dob = dob;
  String get pic => _pic;
  set pic(String pic) => _pic = pic;
  String get country => _country;
  set country(String country) => _country = country;
  String get state => _state;
  set state(String state) => _state = state;
  String get city => _city;
  set city(String city) => _city = city;
  Null get cnic => _cnic;
  set cnic(Null cnic) => _cnic = cnic;
  Null get licenseNo => _licenseNo;
  set licenseNo(Null licenseNo) => _licenseNo = licenseNo;
  Null get licenseExpiry => _licenseExpiry;
  set licenseExpiry(Null licenseExpiry) => _licenseExpiry = licenseExpiry;
  String get address => _address;
  set address(String address) => _address = address;
  Null get permanentAddress => _permanentAddress;
  set permanentAddress(Null permanentAddress) =>
      _permanentAddress = permanentAddress;
  String get lat => _lat;
  set lat(String lat) => _lat = lat;
  String get long => _long;
  set long(String long) => _long = long;
  Null get destinationLat => _destinationLat;
  set destinationLat(Null destinationLat) => _destinationLat = destinationLat;
  Null get destinationLong => _destinationLong;
  set destinationLong(Null destinationLong) =>
      _destinationLong = destinationLong;
  String get coordinate => _coordinate;
  set coordinate(String coordinate) => _coordinate = coordinate;
  Null get deviceName => _deviceName;
  set deviceName(Null deviceName) => _deviceName = deviceName;
  Null get deviceId => _deviceId;
  set deviceId(Null deviceId) => _deviceId = deviceId;
  Null get uniqueDeviceId => _uniqueDeviceId;
  set uniqueDeviceId(Null uniqueDeviceId) => _uniqueDeviceId = uniqueDeviceId;
  Null get appVersion => _appVersion;
  set appVersion(Null appVersion) => _appVersion = appVersion;
  String get reffarlNo => _reffarlNo;
  set reffarlNo(String reffarlNo) => _reffarlNo = reffarlNo;
  Null get postal => _postal;
  set postal(Null postal) => _postal = postal;
  int get loyaltyPoints => _loyaltyPoints;
  set loyaltyPoints(int loyaltyPoints) => _loyaltyPoints = loyaltyPoints;
  Null get pointsExpired => _pointsExpired;
  set pointsExpired(Null pointsExpired) => _pointsExpired = pointsExpired;
  String get balance => _balance;
  set balance(String balance) => _balance = balance;
  int get useWalletBalance => _useWalletBalance;
  set useWalletBalance(int useWalletBalance) =>
      _useWalletBalance = useWalletBalance;
  int get status => _status;
  set status(int status) => _status = status;
  int get isLocationServices => _isLocationServices;
  set isLocationServices(int isLocationServices) =>
      _isLocationServices = isLocationServices;
  int get isBackgroundServices => _isBackgroundServices;
  set isBackgroundServices(int isBackgroundServices) =>
      _isBackgroundServices = isBackgroundServices;
  int get accountBlock => _accountBlock;
  set accountBlock(int accountBlock) => _accountBlock = accountBlock;
  int get inOut => _inOut;
  set inOut(int inOut) => _inOut = inOut;
  int get lastTrip => _lastTrip;
  set lastTrip(int lastTrip) => _lastTrip = lastTrip;
  int get approved => _approved;
  set approved(int approved) => _approved = approved;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  String get rating => _rating;
  set rating(String rating) => _rating = rating;
  Null get verificationCode => _verificationCode;
  set verificationCode(Null verificationCode) =>
      _verificationCode = verificationCode;
  Null get phoneVerifiedAt => _phoneVerifiedAt;
  set phoneVerifiedAt(Null phoneVerifiedAt) =>
      _phoneVerifiedAt = phoneVerifiedAt;
  int get availableNextRide => _availableNextRide;
  set availableNextRide(int availableNextRide) =>
      _availableNextRide = availableNextRide;
  Null get twilioServiceId => _twilioServiceId;
  set twilioServiceId(Null twilioServiceId) =>
      _twilioServiceId = twilioServiceId;
  int get isTestUser => _isTestUser;
  set isTestUser(int isTestUser) => _isTestUser = isTestUser;
  String get experienced => _experienced;
  set experienced(String experienced) => _experienced = experienced;
  String get degree => _degree;
  set degree(String degree) => _degree = degree;
  String get degreeAddress => _degreeAddress;
  set degreeAddress(String degreeAddress) => _degreeAddress = degreeAddress;
  int get maximumResponseTime => _maximumResponseTime;
  set maximumResponseTime(int maximumResponseTime) =>
      _maximumResponseTime = maximumResponseTime;
  int get inPersonVerification => _inPersonVerification;
  set inPersonVerification(int inPersonVerification) =>
      _inPersonVerification = inPersonVerification;
  int get emailVerification => _emailVerification;
  set emailVerification(int emailVerification) =>
      _emailVerification = emailVerification;
  int get phoneVerification => _phoneVerification;
  set phoneVerification(int phoneVerification) =>
      _phoneVerification = phoneVerification;
  int get addressVerification => _addressVerification;
  set addressVerification(int addressVerification) =>
      _addressVerification = addressVerification;
  int get documentVerification => _documentVerification;
  set documentVerification(int documentVerification) =>
      _documentVerification = documentVerification;
  int get locationGpsVerification => _locationGpsVerification;
  set locationGpsVerification(int locationGpsVerification) =>
      _locationGpsVerification = locationGpsVerification;
  List<Null> get creditCards => _creditCards;
  set creditCards(List<Null> creditCards) => _creditCards = creditCards;
  List<Diseases> get diseases => _diseases;
  set diseases(List<Diseases> diseases) => _diseases = diseases;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _email = json['email'];
    _startCode = json['start_code'];
    _apiToken = json['api_token'];
    _permissions = json['permissions'];
    _lastLogin = json['last_login'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _stripeRegisterId = json['stripe_register_id'];
    _stripeAccountId = json['stripe_account_id'];
    _abnNumber = json['abn_number'];
    _cardLast4 = json['card_last4'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _bio = json['bio'];
    _gender = json['gender'];
    _dob = json['dob'];
    _pic = json['pic'];
    _country = json['country'];
    _state = json['state'];
    _city = json['city'];
    _cnic = json['cnic'];
    _licenseNo = json['license_no'];
    _licenseExpiry = json['license_expiry'];
    _address = json['address'];
    _permanentAddress = json['permanent_address'];
    _lat = json['lat'];
    _long = json['long'];
    _destinationLat = json['destination_lat'];
    _destinationLong = json['destination_long'];
    _coordinate = json['coordinate'];
    _deviceName = json['device_name'];
    _deviceId = json['device_id'];
    _uniqueDeviceId = json['unique_device_id'];
    _appVersion = json['app_version'];
    _reffarlNo = json['reffarl_no'];
    _postal = json['postal'];
    _loyaltyPoints = json['loyalty_points'];
    _pointsExpired = json['points_expired'];
    _balance = json['balance'];
    _useWalletBalance = json['use_wallet_balance'];
    _status = json['status'];
    _isLocationServices = json['is_location_services'];
    _isBackgroundServices = json['is_background_services'];
    _accountBlock = json['account_block'];
    _inOut = json['in_out'];
    _lastTrip = json['last_trip'];
    _approved = json['approved'];
    _phone = json['phone'];
    _rating = json['rating'];
    _verificationCode = json['verification_code'];
    _phoneVerifiedAt = json['phone_verified_at'];
    _availableNextRide = json['available_next_ride'];
    _twilioServiceId = json['twilio_service_id'];
    _isTestUser = json['is_test_user'];
    _experienced = json['experienced'];
    _degree = json['degree'];
    _degreeAddress = json['degree_address'];
    _maximumResponseTime = json['maximum_response_time'];
    _inPersonVerification = json['in_person_verification'];
    _emailVerification = json['email_verification'];
    _phoneVerification = json['phone_verification'];
    _addressVerification = json['address_verification'];
    _documentVerification = json['document_verification'];
    _locationGpsVerification = json['location_gps_verification'];
    if (json['CreditCards'] != null) {
      _creditCards = new List<Null>();
      json['CreditCards'].forEach((v) {
        _creditCards.add(null); // .add(new Null.fromJson(v));
      });
    }
    if (json['Diseases'] != null) {
      _diseases = new List<Diseases>();
      json['Diseases'].forEach((v) {
        _diseases.add(new Diseases.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['email'] = this._email;
    data['start_code'] = this._startCode;
    data['api_token'] = this._apiToken;
    data['permissions'] = this._permissions;
    data['last_login'] = this._lastLogin;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['stripe_register_id'] = this._stripeRegisterId;
    data['stripe_account_id'] = this._stripeAccountId;
    data['abn_number'] = this._abnNumber;
    data['card_last4'] = this._cardLast4;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['deleted_at'] = this._deletedAt;
    data['bio'] = this._bio;
    data['gender'] = this._gender;
    data['dob'] = this._dob;
    data['pic'] = this._pic;
    data['country'] = this._country;
    data['state'] = this._state;
    data['city'] = this._city;
    data['cnic'] = this._cnic;
    data['license_no'] = this._licenseNo;
    data['license_expiry'] = this._licenseExpiry;
    data['address'] = this._address;
    data['permanent_address'] = this._permanentAddress;
    data['lat'] = this._lat;
    data['long'] = this._long;
    data['destination_lat'] = this._destinationLat;
    data['destination_long'] = this._destinationLong;
    data['coordinate'] = this._coordinate;
    data['device_name'] = this._deviceName;
    data['device_id'] = this._deviceId;
    data['unique_device_id'] = this._uniqueDeviceId;
    data['app_version'] = this._appVersion;
    data['reffarl_no'] = this._reffarlNo;
    data['postal'] = this._postal;
    data['loyalty_points'] = this._loyaltyPoints;
    data['points_expired'] = this._pointsExpired;
    data['balance'] = this._balance;
    data['use_wallet_balance'] = this._useWalletBalance;
    data['status'] = this._status;
    data['is_location_services'] = this._isLocationServices;
    data['is_background_services'] = this._isBackgroundServices;
    data['account_block'] = this._accountBlock;
    data['in_out'] = this._inOut;
    data['last_trip'] = this._lastTrip;
    data['approved'] = this._approved;
    data['phone'] = this._phone;
    data['rating'] = this._rating;
    data['verification_code'] = this._verificationCode;
    data['phone_verified_at'] = this._phoneVerifiedAt;
    data['available_next_ride'] = this._availableNextRide;
    data['twilio_service_id'] = this._twilioServiceId;
    data['is_test_user'] = this._isTestUser;
    data['experienced'] = this._experienced;
    data['degree'] = this._degree;
    data['degree_address'] = this._degreeAddress;
    data['maximum_response_time'] = this._maximumResponseTime;
    data['in_person_verification'] = this._inPersonVerification;
    data['email_verification'] = this._emailVerification;
    data['phone_verification'] = this._phoneVerification;
    data['address_verification'] = this._addressVerification;
    data['document_verification'] = this._documentVerification;
    data['location_gps_verification'] = this._locationGpsVerification;
    if (this._creditCards != null) {
      data['CreditCards'] = null; // this._creditCards.map((v) => v.toJson()).toList();
    }
    if (this._diseases != null) {
      data['Diseases'] = this._diseases.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Diseases {
  int _id;
  int _userId;
  int _diseasId;

  Diseases({int id, int userId, int diseasId}) {
    this._id = id;
    this._userId = userId;
    this._diseasId = diseasId;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  int get diseasId => _diseasId;
  set diseasId(int diseasId) => _diseasId = diseasId;

  Diseases.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _userId = json['user_id'];
    _diseasId = json['diseas_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['user_id'] = this._userId;
    data['diseas_id'] = this._diseasId;
    return data;
  }
}
