import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@freezed
class Resource with _$Resource {
  @HiveType(typeId: 0, adapterName: 'ResourceAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory Resource({
    @HiveField(0) @JsonKey(name: 'id') int? id,
    @HiveField(1) @JsonKey(name: 'resource_name') required String resourceName,
    @HiveField(2) @JsonKey(name: 'login') required String login,
    @HiveField(3) @JsonKey(name: 'password') required String password,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);
  
  const Resource._();
}