// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResourceAdapter extends TypeAdapter<_$ResourceImpl> {
  @override
  final int typeId = 0;

  @override
  _$ResourceImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ResourceImpl(
      id: fields[0] as int?,
      resourceName: fields[1] as String,
      login: fields[2] as String,
      password: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ResourceImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.resourceName)
      ..writeByte(2)
      ..write(obj.login)
      ..writeByte(3)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourceImpl _$$ResourceImplFromJson(Map<String, dynamic> json) =>
    _$ResourceImpl(
      id: json['id'] as int?,
      resourceName: json['resource_name'] as String,
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ResourceImplToJson(_$ResourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource_name': instance.resourceName,
      'login': instance.login,
      'password': instance.password,
    };
