// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemeDataItemAdapter extends TypeAdapter<ThemeDataItem> {
  @override
  final int typeId = 0;

  @override
  ThemeDataItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThemeDataItem(
      appTheme: fields[0] as String,
      primaryColor: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ThemeDataItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.appTheme)
      ..writeByte(1)
      ..write(obj.primaryColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeDataItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
