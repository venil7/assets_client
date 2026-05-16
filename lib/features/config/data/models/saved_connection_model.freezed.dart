// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedConnectionModel {

 String get id; String get apiUrl; String get username; String get jwtToken; int get refreshBefore; int get expiresAt; int get refreshAt; int get lastUsedAt;
/// Create a copy of SavedConnectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedConnectionModelCopyWith<SavedConnectionModel> get copyWith => _$SavedConnectionModelCopyWithImpl<SavedConnectionModel>(this as SavedConnectionModel, _$identity);

  /// Serializes this SavedConnectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedConnectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.apiUrl, apiUrl) || other.apiUrl == apiUrl)&&(identical(other.username, username) || other.username == username)&&(identical(other.jwtToken, jwtToken) || other.jwtToken == jwtToken)&&(identical(other.refreshBefore, refreshBefore) || other.refreshBefore == refreshBefore)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.refreshAt, refreshAt) || other.refreshAt == refreshAt)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiUrl,username,jwtToken,refreshBefore,expiresAt,refreshAt,lastUsedAt);

@override
String toString() {
  return 'SavedConnectionModel(id: $id, apiUrl: $apiUrl, username: $username, jwtToken: $jwtToken, refreshBefore: $refreshBefore, expiresAt: $expiresAt, refreshAt: $refreshAt, lastUsedAt: $lastUsedAt)';
}


}

/// @nodoc
abstract mixin class $SavedConnectionModelCopyWith<$Res>  {
  factory $SavedConnectionModelCopyWith(SavedConnectionModel value, $Res Function(SavedConnectionModel) _then) = _$SavedConnectionModelCopyWithImpl;
@useResult
$Res call({
 String id, String apiUrl, String username, String jwtToken, int refreshBefore, int expiresAt, int refreshAt, int lastUsedAt
});




}
/// @nodoc
class _$SavedConnectionModelCopyWithImpl<$Res>
    implements $SavedConnectionModelCopyWith<$Res> {
  _$SavedConnectionModelCopyWithImpl(this._self, this._then);

  final SavedConnectionModel _self;
  final $Res Function(SavedConnectionModel) _then;

/// Create a copy of SavedConnectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? apiUrl = null,Object? username = null,Object? jwtToken = null,Object? refreshBefore = null,Object? expiresAt = null,Object? refreshAt = null,Object? lastUsedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiUrl: null == apiUrl ? _self.apiUrl : apiUrl // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,jwtToken: null == jwtToken ? _self.jwtToken : jwtToken // ignore: cast_nullable_to_non_nullable
as String,refreshBefore: null == refreshBefore ? _self.refreshBefore : refreshBefore // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,refreshAt: null == refreshAt ? _self.refreshAt : refreshAt // ignore: cast_nullable_to_non_nullable
as int,lastUsedAt: null == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedConnectionModel].
extension SavedConnectionModelPatterns on SavedConnectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedConnectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedConnectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedConnectionModel value)  $default,){
final _that = this;
switch (_that) {
case _SavedConnectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedConnectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _SavedConnectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String apiUrl,  String username,  String jwtToken,  int refreshBefore,  int expiresAt,  int refreshAt,  int lastUsedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedConnectionModel() when $default != null:
return $default(_that.id,_that.apiUrl,_that.username,_that.jwtToken,_that.refreshBefore,_that.expiresAt,_that.refreshAt,_that.lastUsedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String apiUrl,  String username,  String jwtToken,  int refreshBefore,  int expiresAt,  int refreshAt,  int lastUsedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedConnectionModel():
return $default(_that.id,_that.apiUrl,_that.username,_that.jwtToken,_that.refreshBefore,_that.expiresAt,_that.refreshAt,_that.lastUsedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String apiUrl,  String username,  String jwtToken,  int refreshBefore,  int expiresAt,  int refreshAt,  int lastUsedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedConnectionModel() when $default != null:
return $default(_that.id,_that.apiUrl,_that.username,_that.jwtToken,_that.refreshBefore,_that.expiresAt,_that.refreshAt,_that.lastUsedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedConnectionModel implements SavedConnectionModel {
  const _SavedConnectionModel({required this.id, required this.apiUrl, required this.username, required this.jwtToken, required this.refreshBefore, required this.expiresAt, required this.refreshAt, this.lastUsedAt = 0});
  factory _SavedConnectionModel.fromJson(Map<String, dynamic> json) => _$SavedConnectionModelFromJson(json);

@override final  String id;
@override final  String apiUrl;
@override final  String username;
@override final  String jwtToken;
@override final  int refreshBefore;
@override final  int expiresAt;
@override final  int refreshAt;
@override@JsonKey() final  int lastUsedAt;

/// Create a copy of SavedConnectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedConnectionModelCopyWith<_SavedConnectionModel> get copyWith => __$SavedConnectionModelCopyWithImpl<_SavedConnectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedConnectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedConnectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.apiUrl, apiUrl) || other.apiUrl == apiUrl)&&(identical(other.username, username) || other.username == username)&&(identical(other.jwtToken, jwtToken) || other.jwtToken == jwtToken)&&(identical(other.refreshBefore, refreshBefore) || other.refreshBefore == refreshBefore)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.refreshAt, refreshAt) || other.refreshAt == refreshAt)&&(identical(other.lastUsedAt, lastUsedAt) || other.lastUsedAt == lastUsedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiUrl,username,jwtToken,refreshBefore,expiresAt,refreshAt,lastUsedAt);

@override
String toString() {
  return 'SavedConnectionModel(id: $id, apiUrl: $apiUrl, username: $username, jwtToken: $jwtToken, refreshBefore: $refreshBefore, expiresAt: $expiresAt, refreshAt: $refreshAt, lastUsedAt: $lastUsedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedConnectionModelCopyWith<$Res> implements $SavedConnectionModelCopyWith<$Res> {
  factory _$SavedConnectionModelCopyWith(_SavedConnectionModel value, $Res Function(_SavedConnectionModel) _then) = __$SavedConnectionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String apiUrl, String username, String jwtToken, int refreshBefore, int expiresAt, int refreshAt, int lastUsedAt
});




}
/// @nodoc
class __$SavedConnectionModelCopyWithImpl<$Res>
    implements _$SavedConnectionModelCopyWith<$Res> {
  __$SavedConnectionModelCopyWithImpl(this._self, this._then);

  final _SavedConnectionModel _self;
  final $Res Function(_SavedConnectionModel) _then;

/// Create a copy of SavedConnectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? apiUrl = null,Object? username = null,Object? jwtToken = null,Object? refreshBefore = null,Object? expiresAt = null,Object? refreshAt = null,Object? lastUsedAt = null,}) {
  return _then(_SavedConnectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiUrl: null == apiUrl ? _self.apiUrl : apiUrl // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,jwtToken: null == jwtToken ? _self.jwtToken : jwtToken // ignore: cast_nullable_to_non_nullable
as String,refreshBefore: null == refreshBefore ? _self.refreshBefore : refreshBefore // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,refreshAt: null == refreshAt ? _self.refreshAt : refreshAt // ignore: cast_nullable_to_non_nullable
as int,lastUsedAt: null == lastUsedAt ? _self.lastUsedAt : lastUsedAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
