// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

 int get id; String get username; bool get admin;@JsonKey(name: 'login_attempts') int get loginAttempts; bool get locked; String get created; String get modified;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'ProfileModel(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 int id, String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
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


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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
case _ProfileModel() when $default != null:
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
case _ProfileModel():
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
case _ProfileModel() when $default != null:
return $default(_that.id,_that.username,_that.admin,_that.loginAttempts,_that.locked,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel implements ProfileModel {
  const _ProfileModel({required this.id, required this.username, required this.admin, @JsonKey(name: 'login_attempts') required this.loginAttempts, required this.locked, required this.created, required this.modified});
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  int id;
@override final  String username;
@override final  bool admin;
@override@JsonKey(name: 'login_attempts') final  int loginAttempts;
@override final  bool locked;
@override final  String created;
@override final  String modified;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'ProfileModel(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, bool admin,@JsonKey(name: 'login_attempts') int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,Object? created = null,Object? modified = null,}) {
  return _then(_ProfileModel(
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

// dart format on
