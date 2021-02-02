import 'package:hive/hive.dart';
part '../adapters/auth_data.g.dart';

@HiveType(typeId: 0)
class AuthData {
  AuthData({
    this.user,
    this.accessToken,
  });

  @HiveField(0)
  User user;
  @HiveField(1)
  String accessToken;

  factory AuthData.fromMap(Map<String, dynamic> json) => AuthData(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        accessToken: json["accessToken"] == null ? null : json["accessToken"],
      );

  Map<String, dynamic> toMap() => {
        "user": user == null ? null : user.toMap(),
        "accessToken": accessToken == null ? null : accessToken,
      };
}

@HiveType(typeId: 1)
class User {
  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phoneNumber,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String email;
  @HiveField(3)
  String password;
  @HiveField(4)
  String phoneNumber;

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "phone_number": phoneNumber == null ? null : phoneNumber,
      };
}

@HiveType(typeId: 2)
class Country {
  Country({
    this.countryId,
    this.countryCode,
    this.countryName,
    this.language,
    this.dialCode,
    this.currencyName,
    this.currencySymbol,
    this.currencyCode,
    this.countryStatus,
    this.createdAt,
    this.updatedAt,
  });
  @HiveField(0)
  int countryId;
  @HiveField(1)
  String countryCode;
  @HiveField(2)
  String countryName;
  @HiveField(3)
  String language;
  @HiveField(4)
  int dialCode;
  @HiveField(5)
  String currencyName;
  @HiveField(6)
  String currencySymbol;
  @HiveField(7)
  String currencyCode;
  @HiveField(8)
  String countryStatus;
  @HiveField(9)
  DateTime createdAt;
  @HiveField(10)
  dynamic updatedAt;

  factory Country.fromMap(Map<String, dynamic> json) => Country(
        countryId: json["country_id"] == null ? null : json["country_id"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        language: json["language"] == null ? null : json["language"],
        dialCode: json["dial_code"] == null ? null : json["dial_code"],
        currencyName:
            json["currency_name"] == null ? null : json["currency_name"],
        currencySymbol:
            json["currency_symbol"] == null ? null : json["currency_symbol"],
        currencyCode:
            json["currency_code"] == null ? null : json["currency_code"],
        countryStatus:
            json["country_status"] == null ? null : json["country_status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toMap() => {
        "country_id": countryId == null ? null : countryId,
        "country_code": countryCode == null ? null : countryCode,
        "country_name": countryName == null ? null : countryName,
        "language": language == null ? null : language,
        "dial_code": dialCode == null ? null : dialCode,
        "currency_name": currencyName == null ? null : currencyName,
        "currency_symbol": currencySymbol == null ? null : currencySymbol,
        "currency_code": currencyCode == null ? null : currencyCode,
        "country_status": countryStatus == null ? null : countryStatus,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt,
      };
}

@HiveType(typeId: 3)
class Region {
  Region({
    this.regionId,
    this.countryId,
    this.regionName,
    this.accountName,
    this.dailyTarget,
    this.createdAt,
    this.updatedAt,
  });
  @HiveField(0)
  int regionId;
  @HiveField(1)
  int countryId;
  @HiveField(2)
  String regionName;
  @HiveField(3)
  String accountName;
  @HiveField(4)
  int dailyTarget;
  @HiveField(5)
  DateTime createdAt;
  @HiveField(6)
  DateTime updatedAt;

  factory Region.fromMap(Map<String, dynamic> json) => Region(
        regionId: json["region_id"] == null ? null : json["region_id"],
        countryId: json["country_id"] == null ? null : json["country_id"],
        regionName: json["region_name"] == null ? null : json["region_name"],
        accountName: json["account_name"] == null ? null : json["account_name"],
        dailyTarget: json["daily_target"] == null ? null : json["daily_target"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "region_id": regionId == null ? null : regionId,
        "country_id": countryId == null ? null : countryId,
        "region_name": regionName == null ? null : regionName,
        "account_name": accountName == null ? null : accountName,
        "daily_target": dailyTarget == null ? null : dailyTarget,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}

@HiveType(typeId: 4)
class Usertype {
  Usertype({
    this.utypeId,
    this.utypeName,
    this.utypeDesc,
    this.status,
    this.salerType,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  @HiveField(0)
  int utypeId;
  @HiveField(1)
  String utypeName;
  @HiveField(2)
  String utypeDesc;
  @HiveField(3)
  String status;
  @HiveField(4)
  int salerType;
  @HiveField(5)
  DateTime createdAt;
  @HiveField(6)
  dynamic updatedAt;
  @HiveField(7)
  dynamic deletedAt;

  factory Usertype.fromMap(Map<String, dynamic> json) => Usertype(
        utypeId: json["utype_id"] == null ? null : json["utype_id"],
        utypeName: json["utype_name"] == null ? null : json["utype_name"],
        utypeDesc: json["utype_desc"] == null ? null : json["utype_desc"],
        status: json["status"] == null ? null : json["status"],
        salerType: json["saler_type"] == null ? null : json["saler_type"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toMap() => {
        "utype_id": utypeId == null ? null : utypeId,
        "utype_name": utypeName == null ? null : utypeName,
        "utype_desc": utypeDesc == null ? null : utypeDesc,
        "status": status == null ? null : status,
        "saler_type": salerType == null ? null : salerType,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
      };
}
