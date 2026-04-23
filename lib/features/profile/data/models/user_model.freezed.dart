// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 int get id; String get username; bool get admin;@JsonKey(name: 'login_attempts') int get loginAttempts; bool get locked; String get created; String get modified;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'UserModel(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 int id, String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,Object? created = null,Object? modified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool,loginAttempts: null == loginAttempts ? _self.loginAttempts : loginAttempts // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked,  String created,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.username,_that.admin,_that.loginAttempts,_that.locked,_that.created,_that.modified);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked,  String created,  String modified)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.username,_that.admin,_that.loginAttempts,_that.locked,_that.created,_that.modified);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked,  String created,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.username,_that.admin,_that.loginAttempts,_that.locked,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.username, required this.admin, @JsonKey(name: 'login_attempts') required this.loginAttempts, required this.locked, required this.created, required this.modified});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  int id;
@override final  String username;
@override final  bool admin;
@override@JsonKey(name: 'login_attempts') final  int loginAttempts;
@override final  bool locked;
@override final  String created;
@override final  String modified;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'UserModel(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,Object? created = null,Object? modified = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool,loginAttempts: null == loginAttempts ? _self.loginAttempts : loginAttempts // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateUserRequestModel {

 String get username; bool get admin;@JsonKey(name: 'login_attempts') int get loginAttempts; bool get locked;
/// Create a copy of CreateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserRequestModelCopyWith<CreateUserRequestModel> get copyWith => _$CreateUserRequestModelCopyWithImpl<CreateUserRequestModel>(this as CreateUserRequestModel, _$identity);

  /// Serializes this CreateUserRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,admin,loginAttempts,locked);

@override
String toString() {
  return 'CreateUserRequestModel(username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked)';
}


}

/// @nodoc
abstract mixin class $CreateUserRequestModelCopyWith<$Res>  {
  factory $CreateUserRequestModelCopyWith(CreateUserRequestModel value, $Res Function(CreateUserRequestModel) _then) = _$CreateUserRequestModelCopyWithImpl;
@useResult
$Res call({
 String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked
});




}
/// @nodoc
class _$CreateUserRequestModelCopyWithImpl<$Res>
    implements $CreateUserRequestModelCopyWith<$Res> {
  _$CreateUserRequestModelCopyWithImpl(this._self, this._then);

  final CreateUserRequestModel _self;
  final $Res Function(CreateUserRequestModel) _then;

/// Create a copy of CreateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool,loginAttempts: null == loginAttempts ? _self.loginAttempts : loginAttempts // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserRequestModel].
extension CreateUserRequestModelPatterns on CreateUserRequestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserRequestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserRequestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserRequestModel() when $default != null:
return $default(_that.username,_that.admin,_that.loginAttempts,_that.locked);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked)  $default,) {final _that = this;
switch (_that) {
case _CreateUserRequestModel():
return $default(_that.username,_that.admin,_that.loginAttempts,_that.locked);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked)?  $default,) {final _that = this;
switch (_that) {
case _CreateUserRequestModel() when $default != null:
return $default(_that.username,_that.admin,_that.loginAttempts,_that.locked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateUserRequestModel implements CreateUserRequestModel {
  const _CreateUserRequestModel({required this.username, required this.admin, @JsonKey(name: 'login_attempts') required this.loginAttempts, required this.locked});
  factory _CreateUserRequestModel.fromJson(Map<String, dynamic> json) => _$CreateUserRequestModelFromJson(json);

@override final  String username;
@override final  bool admin;
@override@JsonKey(name: 'login_attempts') final  int loginAttempts;
@override final  bool locked;

/// Create a copy of CreateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserRequestModelCopyWith<_CreateUserRequestModel> get copyWith => __$CreateUserRequestModelCopyWithImpl<_CreateUserRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUserRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,admin,loginAttempts,locked);

@override
String toString() {
  return 'CreateUserRequestModel(username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked)';
}


}

/// @nodoc
abstract mixin class _$CreateUserRequestModelCopyWith<$Res> implements $CreateUserRequestModelCopyWith<$Res> {
  factory _$CreateUserRequestModelCopyWith(_CreateUserRequestModel value, $Res Function(_CreateUserRequestModel) _then) = __$CreateUserRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked
});




}
/// @nodoc
class __$CreateUserRequestModelCopyWithImpl<$Res>
    implements _$CreateUserRequestModelCopyWith<$Res> {
  __$CreateUserRequestModelCopyWithImpl(this._self, this._then);

  final _CreateUserRequestModel _self;
  final $Res Function(_CreateUserRequestModel) _then;

/// Create a copy of CreateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,}) {
  return _then(_CreateUserRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool,loginAttempts: null == loginAttempts ? _self.loginAttempts : loginAttempts // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateUserRequestModel {

 String get username; bool get admin;@JsonKey(name: 'login_attempts') int get loginAttempts; bool get locked;
/// Create a copy of UpdateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserRequestModelCopyWith<UpdateUserRequestModel> get copyWith => _$UpdateUserRequestModelCopyWithImpl<UpdateUserRequestModel>(this as UpdateUserRequestModel, _$identity);

  /// Serializes this UpdateUserRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,admin,loginAttempts,locked);

@override
String toString() {
  return 'UpdateUserRequestModel(username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked)';
}


}

/// @nodoc
abstract mixin class $UpdateUserRequestModelCopyWith<$Res>  {
  factory $UpdateUserRequestModelCopyWith(UpdateUserRequestModel value, $Res Function(UpdateUserRequestModel) _then) = _$UpdateUserRequestModelCopyWithImpl;
@useResult
$Res call({
 String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked
});




}
/// @nodoc
class _$UpdateUserRequestModelCopyWithImpl<$Res>
    implements $UpdateUserRequestModelCopyWith<$Res> {
  _$UpdateUserRequestModelCopyWithImpl(this._self, this._then);

  final UpdateUserRequestModel _self;
  final $Res Function(UpdateUserRequestModel) _then;

/// Create a copy of UpdateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool,loginAttempts: null == loginAttempts ? _self.loginAttempts : loginAttempts // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserRequestModel].
extension UpdateUserRequestModelPatterns on UpdateUserRequestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserRequestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserRequestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserRequestModel() when $default != null:
return $default(_that.username,_that.admin,_that.loginAttempts,_that.locked);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserRequestModel():
return $default(_that.username,_that.admin,_that.loginAttempts,_that.locked);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  bool admin, @JsonKey(name: 'login_attempts')  int loginAttempts,  bool locked)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserRequestModel() when $default != null:
return $default(_that.username,_that.admin,_that.loginAttempts,_that.locked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUserRequestModel implements UpdateUserRequestModel {
  const _UpdateUserRequestModel({required this.username, required this.admin, @JsonKey(name: 'login_attempts') required this.loginAttempts, required this.locked});
  factory _UpdateUserRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateUserRequestModelFromJson(json);

@override final  String username;
@override final  bool admin;
@override@JsonKey(name: 'login_attempts') final  int loginAttempts;
@override final  bool locked;

/// Create a copy of UpdateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserRequestModelCopyWith<_UpdateUserRequestModel> get copyWith => __$UpdateUserRequestModelCopyWithImpl<_UpdateUserRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,admin,loginAttempts,locked);

@override
String toString() {
  return 'UpdateUserRequestModel(username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserRequestModelCopyWith<$Res> implements $UpdateUserRequestModelCopyWith<$Res> {
  factory _$UpdateUserRequestModelCopyWith(_UpdateUserRequestModel value, $Res Function(_UpdateUserRequestModel) _then) = __$UpdateUserRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked
});




}
/// @nodoc
class __$UpdateUserRequestModelCopyWithImpl<$Res>
    implements _$UpdateUserRequestModelCopyWith<$Res> {
  __$UpdateUserRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateUserRequestModel _self;
  final $Res Function(_UpdateUserRequestModel) _then;

/// Create a copy of UpdateUserRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,}) {
  return _then(_UpdateUserRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,admin: null == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool,loginAttempts: null == loginAttempts ? _self.loginAttempts : loginAttempts // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
