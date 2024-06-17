// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return _Resource.fromJson(json);
}

/// @nodoc
mixin _$Resource {
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'resource_name')
  String get resourceName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'login')
  String get login => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? id,
      @HiveField(1) @JsonKey(name: 'resource_name') String resourceName,
      @HiveField(2) @JsonKey(name: 'login') String login,
      @HiveField(3) @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? resourceName = null,
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      resourceName: null == resourceName
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? id,
      @HiveField(1) @JsonKey(name: 'resource_name') String resourceName,
      @HiveField(2) @JsonKey(name: 'login') String login,
      @HiveField(3) @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? resourceName = null,
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$ResourceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      resourceName: null == resourceName
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0, adapterName: 'ResourceAdapter')
@JsonSerializable(explicitToJson: true)
class _$ResourceImpl extends _Resource {
  const _$ResourceImpl(
      {@HiveField(0) @JsonKey(name: 'id') this.id,
      @HiveField(1) @JsonKey(name: 'resource_name') required this.resourceName,
      @HiveField(2) @JsonKey(name: 'login') required this.login,
      @HiveField(3) @JsonKey(name: 'password') required this.password})
      : super._();

  factory _$ResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'resource_name')
  final String resourceName;
  @override
  @HiveField(2)
  @JsonKey(name: 'login')
  final String login;
  @override
  @HiveField(3)
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'Resource(id: $id, resourceName: $resourceName, login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.resourceName, resourceName) ||
                other.resourceName == resourceName) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, resourceName, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceImplToJson(
      this,
    );
  }
}

abstract class _Resource extends Resource {
  const factory _Resource(
      {@HiveField(0) @JsonKey(name: 'id') final int? id,
      @HiveField(1)
      @JsonKey(name: 'resource_name')
      required final String resourceName,
      @HiveField(2) @JsonKey(name: 'login') required final String login,
      @HiveField(3)
      @JsonKey(name: 'password')
      required final String password}) = _$ResourceImpl;
  const _Resource._() : super._();

  factory _Resource.fromJson(Map<String, dynamic> json) =
      _$ResourceImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'resource_name')
  String get resourceName;
  @override
  @HiveField(2)
  @JsonKey(name: 'login')
  String get login;
  @override
  @HiveField(3)
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
