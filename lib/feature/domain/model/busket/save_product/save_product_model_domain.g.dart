// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_product_model_domain.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class Busket extends TypeAdapter<SaveProductModelDomain> {
  @override
  final int typeId = 1;

  @override
  SaveProductModelDomain read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveProductModelDomain(
      image: fields[0] as String,
      name: fields[1] as String,
      count: fields[2] as int,
      price: fields[3] as int,
      isSelected: fields[4] as bool,
      id: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SaveProductModelDomain obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.isSelected)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Busket &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
