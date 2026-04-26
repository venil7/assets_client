// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfigEntity {

 String get apiBaseUrl; String? get username; String? get jwtToken; int? get tokenRefreshBefore;
/// Create a copy of AppConfigEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigEntityCopyWith<AppConfigEntity> get copyWith => _$AppConfigEntityCopyWithImpl<AppConfigEntity>(this as AppConfigEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigEntity&&(identical(other.apiBaseUrl, apiBaseUrl) || other.apiBaseUrl == apiBaseUrl)&&(identical(other.username, username) || other.username == username)&&(identical(other.jwtToken, jwtToken) || other.jwtToken == jwtToken)&&(identical(other.tokenRefreshBefore, tokenRefreshBefore) || other.tokenRefreshBefore == tokenRefreshBefore));
}


@override
int get hashCode => Object.hash(runtimeType,apiBaseUrl,username,jwtToken,tokenRefreshBefore);

@override
String toString() {
  return 'AppConfigEntity(apiBaseUrl: $apiBaseUrl, username: $username, jwtToken: $jwtToken, tokenRefreshBefore: $tokenRefreshBefore)';
}


}

/// @nodoc
abstract mixin class $AppConfigEntityCopyWith<$Res>  {
  factory $AppConfigEntityCopyWith(AppConfigEntity value, $Res Function(AppConfigEntity) _then) = _$AppConfigEntityCopyWithImpl;
@useResult
$Res call({
 String apiBaseUrl, String? username, String? jwtToken, int? tokenRefreshBefore
});




}
/// @nodoc
class _$AppConfigEntityCopyWithImpl<$Res>
    implements $AppConfigEntityCopyWith<$Res> {
  _$AppConfigEntityCopyWithImpl(this._self, this._then);

  final AppConfigEntity _self;
  final $Res Function(AppConfigEntity) _then;

/// Create a copy of AppConfigEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiBaseUrl = null,Object? username = freezed,Object? jwtToken = freezed,Object? tokenRefreshBefore = freezed,}) {
  return _then(_self.copyWith(
apiBaseUrl: null == apiBaseUrl ? _self.apiBaseUrl : apiBaseUrl // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,jwtToken: freezed == jwtToken ? _self.jwtToken : jwtToken // ignore: cast_nullable_to_non_nullable
as String?,tokenRefreshBefore: freezed == tokenRefreshBefore ? _self.tokenRefreshBefore : tokenRefreshBefore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppConfigEntity].
extension AppConfigEntityPatterns on AppConfigEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String apiBaseUrl,  String? username,  String? jwtToken,  int? tokenRefreshBefore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigEntity() when $default != null:
return $default(_that.apiBaseUrl,_that.username,_that.jwtToken,_that.tokenRefreshBefore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String apiBaseUrl,  String? username,  String? jwtToken,  int? tokenRefreshBefore)  $default,) {final _that = this;
switch (_that) {
case _AppConfigEntity():
return $default(_that.apiBaseUrl,_that.username,_that.jwtToken,_that.tokenRefreshBefore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String apiBaseUrl,  String? username,  String? jwtToken,  int? tokenRefreshBefore)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigEntity() when $default != null:
return $default(_that.apiBaseUrl,_that.username,_that.jwtToken,_that.tokenRefreshBefore);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfigEntity implements AppConfigEntity {
  const _AppConfigEntity({required this.apiBaseUrl, this.username, this.jwtToken, this.tokenRefreshBefore});
  

@override final  String apiBaseUrl;
@override final  String? username;
@override final  String? jwtToken;
@override final  int? tokenRefreshBefore;

/// Create a copy of AppConfigEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigEntityCopyWith<_AppConfigEntity> get copyWith => __$AppConfigEntityCopyWithImpl<_AppConfigEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigEntity&&(identical(other.apiBaseUrl, apiBaseUrl) || other.apiBaseUrl == apiBaseUrl)&&(identical(other.username, username) || other.username == username)&&(identical(other.jwtToken, jwtToken) || other.jwtToken == jwtToken)&&(identical(other.tokenRefreshBefore, tokenRefreshBefore) || other.tokenRefreshBefore == tokenRefreshBefore));
}


@override
int get hashCode => Object.hash(runtimeType,apiBaseUrl,username,jwtToken,tokenRefreshBefore);

@override
String toString() {
  return 'AppConfigEntity(apiBaseUrl: $apiBaseUrl, username: $username, jwtToken: $jwtToken, tokenRefreshBefore: $tokenRefreshBefore)';
}


}

/// @nodoc
abstract mixin class _$AppConfigEntityCopyWith<$Res> implements $AppConfigEntityCopyWith<$Res> {
  factory _$AppConfigEntityCopyWith(_AppConfigEntity value, $Res Function(_AppConfigEntity) _then) = __$AppConfigEntityCopyWithImpl;
@override @useResult
$Res call({
 String apiBaseUrl, String? username, String? jwtToken, int? tokenRefreshBefore
});




}
/// @nodoc
class __$AppConfigEntityCopyWithImpl<$Res>
    implements _$AppConfigEntityCopyWith<$Res> {
  __$AppConfigEntityCopyWithImpl(this._self, this._then);

  final _AppConfigEntity _self;
  final $Res Function(_AppConfigEntity) _then;

/// Create a copy of AppConfigEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiBaseUrl = null,Object? username = freezed,Object? jwtToken = freezed,Object? tokenRefreshBefore = freezed,}) {
  return _then(_AppConfigEntity(
apiBaseUrl: null == apiBaseUrl ? _self.apiBaseUrl : apiBaseUrl // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,jwtToken: freezed == jwtToken ? _self.jwtToken : jwtToken // ignore: cast_nullable_to_non_nullable
as String?,tokenRefreshBefore: freezed == tokenRefreshBefore ? _self.tokenRefreshBefore : tokenRefreshBefore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
