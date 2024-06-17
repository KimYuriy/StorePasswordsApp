// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() usingOffline,
    required TResult Function(User data) usingOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? usingOffline,
    TResult? Function(User data)? usingOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? usingOffline,
    TResult Function(User data)? usingOnline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_UsingOffline value) usingOffline,
    required TResult Function(_UsingOnline value) usingOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_UsingOffline value)? usingOffline,
    TResult? Function(_UsingOnline value)? usingOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_UsingOffline value)? usingOffline,
    TResult Function(_UsingOnline value)? usingOnline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatesCopyWith<$Res> {
  factory $UserStatesCopyWith(
          UserStates value, $Res Function(UserStates) then) =
      _$UserStatesCopyWithImpl<$Res, UserStates>;
}

/// @nodoc
class _$UserStatesCopyWithImpl<$Res, $Val extends UserStates>
    implements $UserStatesCopyWith<$Res> {
  _$UserStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$UserStatesCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'UserStates.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() usingOffline,
    required TResult Function(User data) usingOnline,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? usingOffline,
    TResult? Function(User data)? usingOnline,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? usingOffline,
    TResult Function(User data)? usingOnline,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_UsingOffline value) usingOffline,
    required TResult Function(_UsingOnline value) usingOnline,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_UsingOffline value)? usingOffline,
    TResult? Function(_UsingOnline value)? usingOnline,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_UsingOffline value)? usingOffline,
    TResult Function(_UsingOnline value)? usingOnline,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements UserStates {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$UsingOfflineImplCopyWith<$Res> {
  factory _$$UsingOfflineImplCopyWith(
          _$UsingOfflineImpl value, $Res Function(_$UsingOfflineImpl) then) =
      __$$UsingOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsingOfflineImplCopyWithImpl<$Res>
    extends _$UserStatesCopyWithImpl<$Res, _$UsingOfflineImpl>
    implements _$$UsingOfflineImplCopyWith<$Res> {
  __$$UsingOfflineImplCopyWithImpl(
      _$UsingOfflineImpl _value, $Res Function(_$UsingOfflineImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsingOfflineImpl implements _UsingOffline {
  const _$UsingOfflineImpl();

  @override
  String toString() {
    return 'UserStates.usingOffline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsingOfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() usingOffline,
    required TResult Function(User data) usingOnline,
  }) {
    return usingOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? usingOffline,
    TResult? Function(User data)? usingOnline,
  }) {
    return usingOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? usingOffline,
    TResult Function(User data)? usingOnline,
    required TResult orElse(),
  }) {
    if (usingOffline != null) {
      return usingOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_UsingOffline value) usingOffline,
    required TResult Function(_UsingOnline value) usingOnline,
  }) {
    return usingOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_UsingOffline value)? usingOffline,
    TResult? Function(_UsingOnline value)? usingOnline,
  }) {
    return usingOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_UsingOffline value)? usingOffline,
    TResult Function(_UsingOnline value)? usingOnline,
    required TResult orElse(),
  }) {
    if (usingOffline != null) {
      return usingOffline(this);
    }
    return orElse();
  }
}

abstract class _UsingOffline implements UserStates {
  const factory _UsingOffline() = _$UsingOfflineImpl;
}

/// @nodoc
abstract class _$$UsingOnlineImplCopyWith<$Res> {
  factory _$$UsingOnlineImplCopyWith(
          _$UsingOnlineImpl value, $Res Function(_$UsingOnlineImpl) then) =
      __$$UsingOnlineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User data});

  $UserCopyWith<$Res> get data;
}

/// @nodoc
class __$$UsingOnlineImplCopyWithImpl<$Res>
    extends _$UserStatesCopyWithImpl<$Res, _$UsingOnlineImpl>
    implements _$$UsingOnlineImplCopyWith<$Res> {
  __$$UsingOnlineImplCopyWithImpl(
      _$UsingOnlineImpl _value, $Res Function(_$UsingOnlineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UsingOnlineImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get data {
    return $UserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UsingOnlineImpl implements _UsingOnline {
  const _$UsingOnlineImpl({required this.data});

  @override
  final User data;

  @override
  String toString() {
    return 'UserStates.usingOnline(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsingOnlineImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsingOnlineImplCopyWith<_$UsingOnlineImpl> get copyWith =>
      __$$UsingOnlineImplCopyWithImpl<_$UsingOnlineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() usingOffline,
    required TResult Function(User data) usingOnline,
  }) {
    return usingOnline(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? usingOffline,
    TResult? Function(User data)? usingOnline,
  }) {
    return usingOnline?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? usingOffline,
    TResult Function(User data)? usingOnline,
    required TResult orElse(),
  }) {
    if (usingOnline != null) {
      return usingOnline(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_UsingOffline value) usingOffline,
    required TResult Function(_UsingOnline value) usingOnline,
  }) {
    return usingOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_UsingOffline value)? usingOffline,
    TResult? Function(_UsingOnline value)? usingOnline,
  }) {
    return usingOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_UsingOffline value)? usingOffline,
    TResult Function(_UsingOnline value)? usingOnline,
    required TResult orElse(),
  }) {
    if (usingOnline != null) {
      return usingOnline(this);
    }
    return orElse();
  }
}

abstract class _UsingOnline implements UserStates {
  const factory _UsingOnline({required final User data}) = _$UsingOnlineImpl;

  User get data;
  @JsonKey(ignore: true)
  _$$UsingOnlineImplCopyWith<_$UsingOnlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clickedOffline,
    required TResult Function(User userData) clickedAuth,
    required TResult Function() checkOfflineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clickedOffline,
    TResult? Function(User userData)? clickedAuth,
    TResult? Function()? checkOfflineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clickedOffline,
    TResult Function(User userData)? clickedAuth,
    TResult Function()? checkOfflineStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickedOffline value) clickedOffline,
    required TResult Function(_ClickedAuth value) clickedAuth,
    required TResult Function(_CheckOfflineStatus value) checkOfflineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickedOffline value)? clickedOffline,
    TResult? Function(_ClickedAuth value)? clickedAuth,
    TResult? Function(_CheckOfflineStatus value)? checkOfflineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickedOffline value)? clickedOffline,
    TResult Function(_ClickedAuth value)? clickedAuth,
    TResult Function(_CheckOfflineStatus value)? checkOfflineStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventsCopyWith<$Res> {
  factory $UserEventsCopyWith(
          UserEvents value, $Res Function(UserEvents) then) =
      _$UserEventsCopyWithImpl<$Res, UserEvents>;
}

/// @nodoc
class _$UserEventsCopyWithImpl<$Res, $Val extends UserEvents>
    implements $UserEventsCopyWith<$Res> {
  _$UserEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClickedOfflineImplCopyWith<$Res> {
  factory _$$ClickedOfflineImplCopyWith(_$ClickedOfflineImpl value,
          $Res Function(_$ClickedOfflineImpl) then) =
      __$$ClickedOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClickedOfflineImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$ClickedOfflineImpl>
    implements _$$ClickedOfflineImplCopyWith<$Res> {
  __$$ClickedOfflineImplCopyWithImpl(
      _$ClickedOfflineImpl _value, $Res Function(_$ClickedOfflineImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClickedOfflineImpl implements _ClickedOffline {
  const _$ClickedOfflineImpl();

  @override
  String toString() {
    return 'UserEvents.clickedOffline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClickedOfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clickedOffline,
    required TResult Function(User userData) clickedAuth,
    required TResult Function() checkOfflineStatus,
  }) {
    return clickedOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clickedOffline,
    TResult? Function(User userData)? clickedAuth,
    TResult? Function()? checkOfflineStatus,
  }) {
    return clickedOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clickedOffline,
    TResult Function(User userData)? clickedAuth,
    TResult Function()? checkOfflineStatus,
    required TResult orElse(),
  }) {
    if (clickedOffline != null) {
      return clickedOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickedOffline value) clickedOffline,
    required TResult Function(_ClickedAuth value) clickedAuth,
    required TResult Function(_CheckOfflineStatus value) checkOfflineStatus,
  }) {
    return clickedOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickedOffline value)? clickedOffline,
    TResult? Function(_ClickedAuth value)? clickedAuth,
    TResult? Function(_CheckOfflineStatus value)? checkOfflineStatus,
  }) {
    return clickedOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickedOffline value)? clickedOffline,
    TResult Function(_ClickedAuth value)? clickedAuth,
    TResult Function(_CheckOfflineStatus value)? checkOfflineStatus,
    required TResult orElse(),
  }) {
    if (clickedOffline != null) {
      return clickedOffline(this);
    }
    return orElse();
  }
}

abstract class _ClickedOffline implements UserEvents {
  const factory _ClickedOffline() = _$ClickedOfflineImpl;
}

/// @nodoc
abstract class _$$ClickedAuthImplCopyWith<$Res> {
  factory _$$ClickedAuthImplCopyWith(
          _$ClickedAuthImpl value, $Res Function(_$ClickedAuthImpl) then) =
      __$$ClickedAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User userData});

  $UserCopyWith<$Res> get userData;
}

/// @nodoc
class __$$ClickedAuthImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$ClickedAuthImpl>
    implements _$$ClickedAuthImplCopyWith<$Res> {
  __$$ClickedAuthImplCopyWithImpl(
      _$ClickedAuthImpl _value, $Res Function(_$ClickedAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$ClickedAuthImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userData {
    return $UserCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$ClickedAuthImpl implements _ClickedAuth {
  const _$ClickedAuthImpl({required this.userData});

  @override
  final User userData;

  @override
  String toString() {
    return 'UserEvents.clickedAuth(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickedAuthImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickedAuthImplCopyWith<_$ClickedAuthImpl> get copyWith =>
      __$$ClickedAuthImplCopyWithImpl<_$ClickedAuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clickedOffline,
    required TResult Function(User userData) clickedAuth,
    required TResult Function() checkOfflineStatus,
  }) {
    return clickedAuth(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clickedOffline,
    TResult? Function(User userData)? clickedAuth,
    TResult? Function()? checkOfflineStatus,
  }) {
    return clickedAuth?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clickedOffline,
    TResult Function(User userData)? clickedAuth,
    TResult Function()? checkOfflineStatus,
    required TResult orElse(),
  }) {
    if (clickedAuth != null) {
      return clickedAuth(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickedOffline value) clickedOffline,
    required TResult Function(_ClickedAuth value) clickedAuth,
    required TResult Function(_CheckOfflineStatus value) checkOfflineStatus,
  }) {
    return clickedAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickedOffline value)? clickedOffline,
    TResult? Function(_ClickedAuth value)? clickedAuth,
    TResult? Function(_CheckOfflineStatus value)? checkOfflineStatus,
  }) {
    return clickedAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickedOffline value)? clickedOffline,
    TResult Function(_ClickedAuth value)? clickedAuth,
    TResult Function(_CheckOfflineStatus value)? checkOfflineStatus,
    required TResult orElse(),
  }) {
    if (clickedAuth != null) {
      return clickedAuth(this);
    }
    return orElse();
  }
}

abstract class _ClickedAuth implements UserEvents {
  const factory _ClickedAuth({required final User userData}) =
      _$ClickedAuthImpl;

  User get userData;
  @JsonKey(ignore: true)
  _$$ClickedAuthImplCopyWith<_$ClickedAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckOfflineStatusImplCopyWith<$Res> {
  factory _$$CheckOfflineStatusImplCopyWith(_$CheckOfflineStatusImpl value,
          $Res Function(_$CheckOfflineStatusImpl) then) =
      __$$CheckOfflineStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOfflineStatusImplCopyWithImpl<$Res>
    extends _$UserEventsCopyWithImpl<$Res, _$CheckOfflineStatusImpl>
    implements _$$CheckOfflineStatusImplCopyWith<$Res> {
  __$$CheckOfflineStatusImplCopyWithImpl(_$CheckOfflineStatusImpl _value,
      $Res Function(_$CheckOfflineStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckOfflineStatusImpl implements _CheckOfflineStatus {
  const _$CheckOfflineStatusImpl();

  @override
  String toString() {
    return 'UserEvents.checkOfflineStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckOfflineStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clickedOffline,
    required TResult Function(User userData) clickedAuth,
    required TResult Function() checkOfflineStatus,
  }) {
    return checkOfflineStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clickedOffline,
    TResult? Function(User userData)? clickedAuth,
    TResult? Function()? checkOfflineStatus,
  }) {
    return checkOfflineStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clickedOffline,
    TResult Function(User userData)? clickedAuth,
    TResult Function()? checkOfflineStatus,
    required TResult orElse(),
  }) {
    if (checkOfflineStatus != null) {
      return checkOfflineStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClickedOffline value) clickedOffline,
    required TResult Function(_ClickedAuth value) clickedAuth,
    required TResult Function(_CheckOfflineStatus value) checkOfflineStatus,
  }) {
    return checkOfflineStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClickedOffline value)? clickedOffline,
    TResult? Function(_ClickedAuth value)? clickedAuth,
    TResult? Function(_CheckOfflineStatus value)? checkOfflineStatus,
  }) {
    return checkOfflineStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClickedOffline value)? clickedOffline,
    TResult Function(_ClickedAuth value)? clickedAuth,
    TResult Function(_CheckOfflineStatus value)? checkOfflineStatus,
    required TResult orElse(),
  }) {
    if (checkOfflineStatus != null) {
      return checkOfflineStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckOfflineStatus implements UserEvents {
  const factory _CheckOfflineStatus() = _$CheckOfflineStatusImpl;
}
