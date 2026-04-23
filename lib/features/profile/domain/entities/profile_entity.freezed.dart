// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEntity {

 int get id; String get username; bool get admin; int get loginAttempts; bool get locked; String get created; String get modified;
/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<ProfileEntity> get copyWith => _$ProfileEntityCopyWithImpl<ProfileEntity>(this as ProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'ProfileEntity(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $ProfileEntityCopyWith<$Res>  {
  factory $ProfileEntityCopyWith(ProfileEntity value, $Res Function(ProfileEntity) _then) = _$ProfileEntityCopyWithImpl;
@useResult
$Res call({
 int id, String username, bool admin, int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._self, this._then);

  final ProfileEntity _self;
  final $Res Function(ProfileEntity) _then;

/// Create a copy of ProfileEntity
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


/// Adds pattern-matching-related methods to [ProfileEntity].
extension ProfileEntityPatterns on ProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  bool admin,  int loginAttempts,  bool locked,  String created,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  bool admin,  int loginAttempts,  bool locked,  String created,  String modified)  $default,) {final _that = this;
switch (_that) {
case _ProfileEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  bool admin,  int loginAttempts,  bool locked,  String created,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
return $default(_that.id,_that.username,_that.admin,_that.loginAttempts,_that.locked,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileEntity implements ProfileEntity {
  const _ProfileEntity({required this.id, required this.username, required this.admin, required this.loginAttempts, required this.locked, required this.created, required this.modified});
  

@override final  int id;
@override final  String username;
@override final  bool admin;
@override final  int loginAttempts;
@override final  bool locked;
@override final  String created;
@override final  String modified;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEntityCopyWith<_ProfileEntity> get copyWith => __$ProfileEntityCopyWithImpl<_ProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'ProfileEntity(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$ProfileEntityCopyWith<$Res> implements $ProfileEntityCopyWith<$Res> {
  factory _$ProfileEntityCopyWith(_ProfileEntity value, $Res Function(_ProfileEntity) _then) = __$ProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, bool admin, int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class __$ProfileEntityCopyWithImpl<$Res>
    implements _$ProfileEntityCopyWith<$Res> {
  __$ProfileEntityCopyWithImpl(this._self, this._then);

  final _ProfileEntity _self;
  final $Res Function(_ProfileEntity) _then;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,Object? created = null,Object? modified = null,}) {
  return _then(_ProfileEntity(
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
mixin _$UserPreferencesEntity {

 int get id; String get baseCcy; Map<String, dynamic>? get additional;
/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesEntityCopyWith<UserPreferencesEntity> get copyWith => _$UserPreferencesEntityCopyWithImpl<UserPreferencesEntity>(this as UserPreferencesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&const DeepCollectionEquality().equals(other.additional, additional));
}


@override
int get hashCode => Object.hash(runtimeType,id,baseCcy,const DeepCollectionEquality().hash(additional));

@override
String toString() {
  return 'UserPreferencesEntity(id: $id, baseCcy: $baseCcy, additional: $additional)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesEntityCopyWith<$Res>  {
  factory $UserPreferencesEntityCopyWith(UserPreferencesEntity value, $Res Function(UserPreferencesEntity) _then) = _$UserPreferencesEntityCopyWithImpl;
@useResult
$Res call({
 int id, String baseCcy, Map<String, dynamic>? additional
});




}
/// @nodoc
class _$UserPreferencesEntityCopyWithImpl<$Res>
    implements $UserPreferencesEntityCopyWith<$Res> {
  _$UserPreferencesEntityCopyWithImpl(this._self, this._then);

  final UserPreferencesEntity _self;
  final $Res Function(UserPreferencesEntity) _then;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? baseCcy = null,Object? additional = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,additional: freezed == additional ? _self.additional : additional // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferencesEntity].
extension UserPreferencesEntityPatterns on UserPreferencesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferencesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferencesEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferencesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String baseCcy,  Map<String, dynamic>? additional)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
return $default(_that.id,_that.baseCcy,_that.additional);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String baseCcy,  Map<String, dynamic>? additional)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesEntity():
return $default(_that.id,_that.baseCcy,_that.additional);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String baseCcy,  Map<String, dynamic>? additional)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
return $default(_that.id,_that.baseCcy,_that.additional);case _:
  return null;

}
}

}

/// @nodoc


class _UserPreferencesEntity implements UserPreferencesEntity {
  const _UserPreferencesEntity({required this.id, required this.baseCcy, final  Map<String, dynamic>? additional}): _additional = additional;
  

@override final  int id;
@override final  String baseCcy;
 final  Map<String, dynamic>? _additional;
@override Map<String, dynamic>? get additional {
  final value = _additional;
  if (value == null) return null;
  if (_additional is EqualUnmodifiableMapView) return _additional;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesEntityCopyWith<_UserPreferencesEntity> get copyWith => __$UserPreferencesEntityCopyWithImpl<_UserPreferencesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.baseCcy, baseCcy) || other.baseCcy == baseCcy)&&const DeepCollectionEquality().equals(other._additional, _additional));
}


@override
int get hashCode => Object.hash(runtimeType,id,baseCcy,const DeepCollectionEquality().hash(_additional));

@override
String toString() {
  return 'UserPreferencesEntity(id: $id, baseCcy: $baseCcy, additional: $additional)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesEntityCopyWith<$Res> implements $UserPreferencesEntityCopyWith<$Res> {
  factory _$UserPreferencesEntityCopyWith(_UserPreferencesEntity value, $Res Function(_UserPreferencesEntity) _then) = __$UserPreferencesEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String baseCcy, Map<String, dynamic>? additional
});




}
/// @nodoc
class __$UserPreferencesEntityCopyWithImpl<$Res>
    implements _$UserPreferencesEntityCopyWith<$Res> {
  __$UserPreferencesEntityCopyWithImpl(this._self, this._then);

  final _UserPreferencesEntity _self;
  final $Res Function(_UserPreferencesEntity) _then;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? baseCcy = null,Object? additional = freezed,}) {
  return _then(_UserPreferencesEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,baseCcy: null == baseCcy ? _self.baseCcy : baseCcy // ignore: cast_nullable_to_non_nullable
as String,additional: freezed == additional ? _self._additional : additional // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
mixin _$SummaryEntity {

 int get numPortfolios; double get invested; double get realizedPnl; double get breakEven; double get fxImpact;
/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryEntityCopyWith<SummaryEntity> get copyWith => _$SummaryEntityCopyWithImpl<SummaryEntity>(this as SummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryEntity&&(identical(other.numPortfolios, numPortfolios) || other.numPortfolios == numPortfolios)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,numPortfolios,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'SummaryEntity(numPortfolios: $numPortfolios, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class $SummaryEntityCopyWith<$Res>  {
  factory $SummaryEntityCopyWith(SummaryEntity value, $Res Function(SummaryEntity) _then) = _$SummaryEntityCopyWithImpl;
@useResult
$Res call({
 int numPortfolios, double invested, double realizedPnl, double breakEven, double fxImpact
});




}
/// @nodoc
class _$SummaryEntityCopyWithImpl<$Res>
    implements $SummaryEntityCopyWith<$Res> {
  _$SummaryEntityCopyWithImpl(this._self, this._then);

  final SummaryEntity _self;
  final $Res Function(SummaryEntity) _then;

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numPortfolios = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_self.copyWith(
numPortfolios: null == numPortfolios ? _self.numPortfolios : numPortfolios // ignore: cast_nullable_to_non_nullable
as int,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryEntity].
extension SummaryEntityPatterns on SummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int numPortfolios,  double invested,  double realizedPnl,  double breakEven,  double fxImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
return $default(_that.numPortfolios,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int numPortfolios,  double invested,  double realizedPnl,  double breakEven,  double fxImpact)  $default,) {final _that = this;
switch (_that) {
case _SummaryEntity():
return $default(_that.numPortfolios,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int numPortfolios,  double invested,  double realizedPnl,  double breakEven,  double fxImpact)?  $default,) {final _that = this;
switch (_that) {
case _SummaryEntity() when $default != null:
return $default(_that.numPortfolios,_that.invested,_that.realizedPnl,_that.breakEven,_that.fxImpact);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryEntity implements SummaryEntity {
  const _SummaryEntity({required this.numPortfolios, required this.invested, required this.realizedPnl, required this.breakEven, required this.fxImpact});
  

@override final  int numPortfolios;
@override final  double invested;
@override final  double realizedPnl;
@override final  double breakEven;
@override final  double fxImpact;

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryEntityCopyWith<_SummaryEntity> get copyWith => __$SummaryEntityCopyWithImpl<_SummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryEntity&&(identical(other.numPortfolios, numPortfolios) || other.numPortfolios == numPortfolios)&&(identical(other.invested, invested) || other.invested == invested)&&(identical(other.realizedPnl, realizedPnl) || other.realizedPnl == realizedPnl)&&(identical(other.breakEven, breakEven) || other.breakEven == breakEven)&&(identical(other.fxImpact, fxImpact) || other.fxImpact == fxImpact));
}


@override
int get hashCode => Object.hash(runtimeType,numPortfolios,invested,realizedPnl,breakEven,fxImpact);

@override
String toString() {
  return 'SummaryEntity(numPortfolios: $numPortfolios, invested: $invested, realizedPnl: $realizedPnl, breakEven: $breakEven, fxImpact: $fxImpact)';
}


}

/// @nodoc
abstract mixin class _$SummaryEntityCopyWith<$Res> implements $SummaryEntityCopyWith<$Res> {
  factory _$SummaryEntityCopyWith(_SummaryEntity value, $Res Function(_SummaryEntity) _then) = __$SummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int numPortfolios, double invested, double realizedPnl, double breakEven, double fxImpact
});




}
/// @nodoc
class __$SummaryEntityCopyWithImpl<$Res>
    implements _$SummaryEntityCopyWith<$Res> {
  __$SummaryEntityCopyWithImpl(this._self, this._then);

  final _SummaryEntity _self;
  final $Res Function(_SummaryEntity) _then;

/// Create a copy of SummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? numPortfolios = null,Object? invested = null,Object? realizedPnl = null,Object? breakEven = null,Object? fxImpact = null,}) {
  return _then(_SummaryEntity(
numPortfolios: null == numPortfolios ? _self.numPortfolios : numPortfolios // ignore: cast_nullable_to_non_nullable
as int,invested: null == invested ? _self.invested : invested // ignore: cast_nullable_to_non_nullable
as double,realizedPnl: null == realizedPnl ? _self.realizedPnl : realizedPnl // ignore: cast_nullable_to_non_nullable
as double,breakEven: null == breakEven ? _self.breakEven : breakEven // ignore: cast_nullable_to_non_nullable
as double,fxImpact: null == fxImpact ? _self.fxImpact : fxImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$UserEntity {

 int get id; String get username; bool get admin; int get loginAttempts; bool get locked; String get created; String get modified;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'UserEntity(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String username, bool admin, int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
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


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  bool admin,  int loginAttempts,  bool locked,  String created,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  bool admin,  int loginAttempts,  bool locked,  String created,  String modified)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  bool admin,  int loginAttempts,  bool locked,  String created,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.username,_that.admin,_that.loginAttempts,_that.locked,_that.created,_that.modified);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntity implements UserEntity {
  const _UserEntity({required this.id, required this.username, required this.admin, required this.loginAttempts, required this.locked, required this.created, required this.modified});
  

@override final  int id;
@override final  String username;
@override final  bool admin;
@override final  int loginAttempts;
@override final  bool locked;
@override final  String created;
@override final  String modified;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.loginAttempts, loginAttempts) || other.loginAttempts == loginAttempts)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.created, created) || other.created == created)&&(identical(other.modified, modified) || other.modified == modified));
}


@override
int get hashCode => Object.hash(runtimeType,id,username,admin,loginAttempts,locked,created,modified);

@override
String toString() {
  return 'UserEntity(id: $id, username: $username, admin: $admin, loginAttempts: $loginAttempts, locked: $locked, created: $created, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, bool admin, int loginAttempts, bool locked, String created, String modified
});




}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? admin = null,Object? loginAttempts = null,Object? locked = null,Object? created = null,Object? modified = null,}) {
  return _then(_UserEntity(
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
