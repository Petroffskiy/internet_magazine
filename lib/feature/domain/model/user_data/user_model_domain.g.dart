// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_domain.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class User extends TypeAdapter<UserModelDomain> {
  @override
  final int typeId = 0;

  @override
  UserModelDomain read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModelDomain(
      id: fields[0] as String,
      name: fields[1] as String,
      password: fields[2] as String,
      role: fields[3] as bool,
      login: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserModelDomain obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.role)
      ..writeByte(4)
      ..write(obj.login);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
