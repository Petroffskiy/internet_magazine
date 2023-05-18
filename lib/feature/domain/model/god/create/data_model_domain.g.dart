// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_domain.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class Parameter extends TypeAdapter<DataModelDomain> {
  @override
  final int typeId = 3;

  @override
  DataModelDomain read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataModelDomain(
      key: fields[0] as String,
      value: fields[1] as String,
      id: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DataModelDomain obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.value)
      ..writeByte(2)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Parameter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
