// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthDataAdapter extends TypeAdapter<AuthData> {
  @override
  final int typeId = 0;

  @override
  AuthData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthData(
      user: fields[0] as User,
      accessToken: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AuthData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.accessToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as int,
      name: fields[1] as String,
      email: fields[2] as String,
      password: fields[3] as String,
      phoneNumber: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CountryAdapter extends TypeAdapter<Country> {
  @override
  final int typeId = 2;

  @override
  Country read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Country(
      countryId: fields[0] as int,
      countryCode: fields[1] as String,
      countryName: fields[2] as String,
      language: fields[3] as String,
      dialCode: fields[4] as int,
      currencyName: fields[5] as String,
      currencySymbol: fields[6] as String,
      currencyCode: fields[7] as String,
      countryStatus: fields[8] as String,
      createdAt: fields[9] as DateTime,
      updatedAt: fields[10] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Country obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.countryId)
      ..writeByte(1)
      ..write(obj.countryCode)
      ..writeByte(2)
      ..write(obj.countryName)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(4)
      ..write(obj.dialCode)
      ..writeByte(5)
      ..write(obj.currencyName)
      ..writeByte(6)
      ..write(obj.currencySymbol)
      ..writeByte(7)
      ..write(obj.currencyCode)
      ..writeByte(8)
      ..write(obj.countryStatus)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RegionAdapter extends TypeAdapter<Region> {
  @override
  final int typeId = 3;

  @override
  Region read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Region(
      regionId: fields[0] as int,
      countryId: fields[1] as int,
      regionName: fields[2] as String,
      accountName: fields[3] as String,
      dailyTarget: fields[4] as int,
      createdAt: fields[5] as DateTime,
      updatedAt: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Region obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.regionId)
      ..writeByte(1)
      ..write(obj.countryId)
      ..writeByte(2)
      ..write(obj.regionName)
      ..writeByte(3)
      ..write(obj.accountName)
      ..writeByte(4)
      ..write(obj.dailyTarget)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UsertypeAdapter extends TypeAdapter<Usertype> {
  @override
  final int typeId = 4;

  @override
  Usertype read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Usertype(
      utypeId: fields[0] as int,
      utypeName: fields[1] as String,
      utypeDesc: fields[2] as String,
      status: fields[3] as String,
      salerType: fields[4] as int,
      createdAt: fields[5] as DateTime,
      updatedAt: fields[6] as dynamic,
      deletedAt: fields[7] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Usertype obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.utypeId)
      ..writeByte(1)
      ..write(obj.utypeName)
      ..writeByte(2)
      ..write(obj.utypeDesc)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.salerType)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.deletedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsertypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
